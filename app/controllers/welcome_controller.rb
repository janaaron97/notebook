class WelcomeController < ApplicationController
  def index
  	@doc = Doc.where(user_id: current_user).last
  end
end
