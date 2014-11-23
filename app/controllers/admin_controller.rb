class AdminController < ApplicationController
  def index
    @id = current_user
    #@total_orders = Order.count
  end
end
