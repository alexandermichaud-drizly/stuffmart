class SessionsController < ApplicationController
  def new
  end

  def create
    @customer = Customer.find_by(email: session_params[:email])
    
    # TODO Add authentication

    sessions[:customer_id] = @customer.id

    redirect_to '/account'
  end

  def login
  end

  private
    def session_params
      params.require(:session).permit(:email,:password)
    end
end
