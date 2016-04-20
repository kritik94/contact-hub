class ContactsController < ApplicationController
  def index
    @contacts = Contact.current(current_account.user)
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    contact = Contact.new(contact_params)
    contact.user = current_account.user

    if contact.save
      redirect_to contacts_path
    else
      render 'new', notice: 'Oops, something wrong'
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    contact = Contact.find(params[:id])
    contact.update(contact_params)
    redirect_to contact
  end

  def destroy
    contact = Contact.find(params[:id])
    if contact.destroy
      redirect_to :back, notice: 'contact is deleted'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(
      :sex,
      :name,
      :email,
      :birthday,
      :description,
      :phone_number,
      :company_id
    )
  end
end
