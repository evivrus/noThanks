class UserController < ApplicationController
  before_filter :authenticate_user!

  def view
    @user = current_user
  end

end
