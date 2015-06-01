class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new
    @message.name = params[:name]
    @message.creator = params[:creator]
    @message.recipient = params[:recipient]
    @message.message_content = params[:message_content]
    @message.classification = params[:classification]

    if @message.save
      redirect_to "/messages", :notice => "Message created successfully."
    else
      render 'new'
    end
  end

  def edit
    @message = Message.find(params[:id])
  end

  def update
    @message = Message.find(params[:id])

    @message.name = params[:name]
    @message.creator = params[:creator]
    @message.recipient = params[:recipient]
    @message.message_content = params[:message_content]
    @message.classification = params[:classification]

    if @message.save
      redirect_to "/messages", :notice => "Message updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @message = Message.find(params[:id])

    @message.destroy

    redirect_to "/messages", :notice => "Message deleted."
  end
end
