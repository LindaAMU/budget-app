class TransactionsController < ApplicationController
  before_action :set_transaction, only: %i[edit update destroy]
  def index
    @transactions = Transaction.all.where(user_id: current_user.id)
  end

  def new
    @transaction = Transaction.new(params[:account_id])
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.user = current_user
    @transaction.category = Category.find(params[:transaction][:category_id])
    @transaction.account = Account.find(params[:transaction][:account_id])
    @transaction.account.amount -= @transaction.amount

    if @transaction.save
      redirect_to transactions_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @transaction.destroy
    redirect_to categories_path, status: :see_other
  end

  def edit
  end

  def update
    @transaction.update(transaction_params)
    redirect_to categories_path
  end

  private

  def transaction_params
    params.require(:transaction).permit(:reason, :date, :amount, :transaction_type, :account_id, :categories_id)
  end

  def set_transaction
    @transaction = Transaction.find(params[:id])
  end
end
