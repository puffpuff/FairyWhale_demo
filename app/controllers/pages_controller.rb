class PagesController < ApplicationController
  def home
    @title = "Domov"
  end

  def zgodbe
    @title = "Zgodbe"
  end
  
  def zgodba
    @title = "Zgodba"
  end

end
