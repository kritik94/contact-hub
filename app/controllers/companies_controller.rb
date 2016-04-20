class CompaniesController < ApplicationController
  def index
    @companies = Company.current(current_account.user)
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
  end

  def create
    company = Company.new(company_params)
    company.user = current_account.user

    if company.save
      redirect_to companies_path
    else
      render 'new', notice: 'Oops, something worng'
    end
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    company = Company.find(params[:id])
    company.update(company_params)
    redirect_to company
  end

  def destroy
    company = Company.find(params[:id])
    if company.destroy
      redirect_to :back, notice: 'company is deleted'
    end
  end

  private

  def company_params
    params.require(:company).permit(:name, :email, :phone_number, :description)
  end
end
