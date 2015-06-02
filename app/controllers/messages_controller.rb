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
    @message.creator_id = params[:creator_id]
    @message.matter_id = params[:matter_id]
    @message.recipient_id = params[:recipient_id]
    @message.classification = params[:classification]
    @message.content = params[:content]
    @message.organization = params[:organization]

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

    @message.creator_id = params[:creator_id]
    @message.matter_id = params[:matter_id]
    @message.recipient_id = params[:recipient_id]
    @message.classification = params[:classification]
    @message.content = params[:content]
    @message.organization = params[:organization]

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
