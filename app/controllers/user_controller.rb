class UserController < ApplicationController
  before_filter :authenticate_user!

#  respond_to(:html, :json)

  def view
    @user = current_user
    @nouse = {:num => 0}

#    respond_with(@nouse)
  end

  def ajax
    @user = current_user
    @nouse = {:num => 1}

    respond_to do |format|
      format.json { render :json => @nouse[:num]   }
    end
  end

  def ajax2
    @user = current_user
    @nouse = {:num => 1}

    respond_to do |format|
      format.json {render :json => @nouse}
      format.js
    end
  end
end
