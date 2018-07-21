class CompaniesController < ApplicationController
  before_action :set_company, except: [:index, :new, :create]
  before_action :authenticate_user!
  
  def index
    @companies = Company.all
    @user = current_user
  end

  def new
    @company = current_user.companies.build
  end
  
  def create
    @company = current_user.companies.build(company_params)
    
    if @company.save
      redirect_to dashboard_path, notice: "Your company was created successfully! We will be in touch soon!"
    else
      flash[:alert] = "Oops, something went wrong."
      render :new
    end
  end
  
  private
  
    def set_company
      @company = Company.find(params[:id])
    end
  
    def company_params
      params.require(:company).permit(:amount, :financing_time, :company_name, :company_phone, :trade_name, :company_address, :company_suite, :company_city, :company_state, :company_zip, :tax_id, :entity_type, :annual_revenue, :sell_to)
    end
end