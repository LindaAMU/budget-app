class UsersController < ApplicationController
  attr_accessor :full_name
  def show
    @user = User.includes(:accounts, :categories, :transactions).find(params[:id])
  end
end
