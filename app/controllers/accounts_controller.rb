class AccountsController < ApplicationController
  before_action :set_account, only: %i[edit update destroy]
  def index
    @accounts = Account.all.where(user_id: current_user.id)
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
    @account.user = current_user
    if @account.save
      redirect_to profile_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @account.update(account_params)
    redirect_to accounts_path
  end

  def destroy
    @account.destroy
    redirect_to accounts_path, status: :see_other
  end

  private

  def account_params
    params.require(:account).permit(:name, :amount, :account_type)
  end

  def set_account
    @account = Account.find(params[:id])
  end
end
