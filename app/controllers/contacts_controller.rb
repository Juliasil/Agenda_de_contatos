class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def new; end
  def create; end
  def edit; end
  def update; end
  def show; end
  def destroy; end

  private
  def set_contact; end
  def params_contact; end
end
