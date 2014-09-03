class HomeController < ApplicationController

  def index
    @toys = Toy.all
  end

end