class StatesController < ApplicationController
  def expired
    @exp_products = current_user.products.where(state: "expierd")
  end

  def almost_exp
  end

  def good
  end
end
