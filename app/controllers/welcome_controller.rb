class WelcomeController < ApplicationController

  def home
    @last_practice = Practice.last
  end

  def about
  end

  def roster
  end
end
