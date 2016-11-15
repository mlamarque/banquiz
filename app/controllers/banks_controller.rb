class BanksController < ApplicationController
  
  def index
    @banks = Bank.all
   end

  def show
    @bank = Bank.find(params[:id])
    @accounts = @bank.accounts
  end

  def new
    @bank = Bank.new
  end
  
  def create
    @bank = Bank.new(bank_params)
    if @bank.save #true ou false
      redirect_to root_url
    else
      redirect_to :back
    end
  end

  private
  
  def bank_params
    params.require(:bank).permit(:name)
  end
  
end
