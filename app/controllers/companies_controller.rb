class CompaniesController < ApplicationController
  def index
    @companies = current_account.user.companies
  end

  def new
  end

  def create
  end
end
