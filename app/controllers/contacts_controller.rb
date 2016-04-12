class ContactsController < ApplicationController
  def index
    @contacts = current_account.user.contacts
  end

  def show
  end

  def new
    @contact = Contact.new
  end

  def create
  end

  def delete
  end
end
