class HomeController < ApplicationController
  autocomplete :film, :name
  def index
    @user = User.new
  end

end

