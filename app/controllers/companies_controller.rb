class CompaniesController < ApplicationController
  def index
    @companies = current_account.user.companies
  end
end
