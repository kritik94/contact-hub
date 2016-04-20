class ContactsAndCompaniesController < ApplicationController
  def index
    user = current_account.user
    @contacts_and_companies = (
      Contact.current(user) + Company.current(user)
    ).sort_by(&:created_at).reverse
  end
end
