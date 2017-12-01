class Admin::SalesController < ApplicationController
  def index
    # Let's anticipate on next week (with login)
    @sales = current_user.sales
  end
end