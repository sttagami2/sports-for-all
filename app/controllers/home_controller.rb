class HomeController < ApplicationController
  def top
    @types = Type.all
  end

  def about
    
  end
end
