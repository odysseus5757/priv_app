class OrganizationsController < ApplicationController
  def index
    @organizations = Organization.all
  end

  def show
    @organization = Organization.find(params[:id])
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new
    @organization.name = params[:name]

    if @organization.save
      redirect_to "/organizations", :notice => "Organization created successfully."
    else
      render 'new'
    end
  end

  def edit
    @organization = Organization.find(params[:id])
  end

  def update
    @organization = Organization.find(params[:id])

    @organization.name = params[:name]

    if @organization.save
      redirect_to "/organizations", :notice => "Organization updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @organization = Organization.find(params[:id])

    @organization.destroy

    redirect_to "/organizations", :notice => "Organization deleted."
  end
end
