class WelcomeController < ApplicationController
  def index
  	if user_signed_in? && Doc.count != 0
    	@doc = current_user.docs.last
    end
  end
end
