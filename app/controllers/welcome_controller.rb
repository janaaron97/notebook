class WelcomeController < ApplicationController
  def index
    @doc = Doc.last
  end
end
