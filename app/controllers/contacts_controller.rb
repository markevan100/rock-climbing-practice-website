class ContactsController < ApplicationController
  before_action :set_contact, only: [:edit, :update, :show, :destroy]

  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def edit
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      flash[:notice] = "Contact was saved successfully."
      redirect_to contact_path(@contact)
    else
      render :new
    end
  end

  def update
    if @contact.update(contact_params)
      flash[:notice] = "Contact was saved successfully."
      redirect_to contact_path(@contact)
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @contact.destroy
    flash[:notice] = "Contact was successfully deleted."
    redirect_to contacts_path
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :title, :email, :cell)
  end

  def set_contact
    @contact = Contact.find(params[:id])
  end

end
