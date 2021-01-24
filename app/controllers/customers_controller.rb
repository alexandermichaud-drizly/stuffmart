class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      sessions[:customer_id] = @customer.id
      redirect_to @customer
    else
      render :new
    end
  end

  private 
    def customer_params
      params.require(:customer).permit(:name, :email, :password)
    end
end
