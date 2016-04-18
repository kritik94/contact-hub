class ContactsAndCompaniesController < ApplicationController
  def index
    user = current_account.user
    @contacts_and_companies = (
      user.contacts + user.companies
    ).sort_by(&:created_at).reverse
  end
end
