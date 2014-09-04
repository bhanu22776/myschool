class HomeController < ApplicationController
	before_filter :authenticate_user!, :except => [:about, :contact]
  
  def index
  end

  def about
  end

  def contact
  end

  def student
  end

  def parent
  end

  def staff
  end
end
