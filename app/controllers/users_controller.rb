class UsersController < ApplicationController
  def show
    @user = User.includes(:accounts, :categories, :transactions).find(params[:id])
  end
end
