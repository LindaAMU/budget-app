class TransactionsController < ApplicationController
  def new
    @transaction = Transaction.new(params[:account_id])
  end

  def create
  end

  def destroy
  end

  def index
  end

  def edit
  end

  def update
  end
end
