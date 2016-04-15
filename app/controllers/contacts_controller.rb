class ContactsController < ApplicationController
  def index
    @contacts = current_account.user.contacts
    @contact = @contacts.first
  end

  def show
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.user = current_account.user

    if @contact.save
      redirect_to contacts_path
    else
      render 'new', notice: 'Oops, something wrong'
    end
  end

  def destroy
    puts "DELETE!!!!!"
    @contact = Contact.find(params[:id])
    if @contact.destroy
      redirect_to contacts_path, notice: 'contact id deleted'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:sex, :name, :email, :birthday, :description)
  end
end
