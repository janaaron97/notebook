class WelcomeController < ApplicationController
  def index
  	if Doc.count != 0 && user_signed_in?
    	@doc = current_user.docs.last
    end
  end
end
