class StatesController < ApplicationController

  def expired
    @brunch = current_user.brunches.find(params[:brunch_id])

    @exp_products = @brunch.products.where(state: "Expierd")
  end

  def almost_exp
    @brunch = current_user.brunches.find(params[:brunch_id])

    @exp_products = @brunch.products.where(state: "Almost expierd")
  end

  def good
    @brunch = current_user.brunches.find(params[:brunch_id])

    @exp_products = @brunch.products.where(state: "Good")
  end
end
