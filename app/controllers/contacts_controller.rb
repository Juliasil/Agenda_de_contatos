class ContactsController < ApplicationController
  before_action :set_contact, only: [:edit, :update, :show , :destroy]
  def index
    @contacts = Contact.retrieve_contacts
  end

  def new
    @contact = Contact.new
  end
  def create
    @contact = Contact.new(params_contact)
    if @contact.save
      redirect_to contacts_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @contact.update(params_contact)
      redirect_to contacts_path
    else
      render :edit
    end
  end

  def show; end

  def destroy
    if @contact.destroy
      redirect_to contacts_path
    else
      render :index
    end
  end

  private
  def set_contact
    @contact = Contact.find(params[:id])
  end
  def params_contact 
    params.require(:contact).permit(:name, :email, :rmk, :kind_id)
  end
end
