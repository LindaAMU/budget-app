class AccountsController < ApplicationController
  def index
    @accounts = Account.all.where(user_id: current_user.id)
  end

  def new
    @account = Account.new
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def update
  end
end
