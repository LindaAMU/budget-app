class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @financial_tip = Tip.all.sample
  end
end
