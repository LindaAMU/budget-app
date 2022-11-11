class TransactionsController < ApplicationController
  before_action :set_transaction, only: %i[edit update destroy]
  def index
    if params[:query]
      @transactions = current_user.transactions.search_by_reason(params[:query]).order(date: :desc)
    else
      @transactions = current_user.transactions.order(date: :desc)
    end
  end

  def new
    @transaction = Transaction.new(params[:account_id])
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.user = current_user
    @transaction.category = Category.find(params[:transaction][:category_id])
    @sender_account = Account.find(params[:sender_account_id])
    @transaction.account = @sender_account
    if @transaction.save
      case @transaction.transaction_type
      when "Expense"
        @sender_account.amount -= @transaction.amount
        @sender_account.save
      when "Income"
        @sender_account.amount += @transaction.amount
        @sender_account.save
      when "Transfer"
        @receiver_account = Account.find(params[:receiver_account_id])
        @sender_account.amount -= @transaction.amount
        @sender_account.save
        @receiver_account.amount += @transaction.amount
        @receiver_account.save
      end
      redirect_to profile_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @transaction.update(transaction_params)
    redirect_to profile_path(current_user)
  end

  def destroy
    @transaction.destroy
    redirect_to profile_path(current_user), status: :see_other
  end

  private

  def transaction_params
    params.require(:transaction).permit(:reason, :date, :amount, :transaction_type, :account_id, :category_id)
  end

  def set_transaction
    @transaction = Transaction.find(params[:id])
  end
end
