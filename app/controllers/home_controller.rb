class HomeController < ApplicationController
	before_filter :authenticate_user!
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
