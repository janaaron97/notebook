class WelcomeController < ApplicationController
  def index
    @doc = current_user.docs.last
  end
end
