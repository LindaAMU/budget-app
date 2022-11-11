class UsersController < ApplicationController
  attr_accessor :full_name
  def show
    @user = User.includes(:accounts, :categories, :transactions).order('transactions.date DESC').find(params[:id])
  end
end
