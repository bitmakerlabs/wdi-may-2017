class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)
    redirect_to contact_url(@contact)
  end

  def show
  end

private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :notes)
  end

end
