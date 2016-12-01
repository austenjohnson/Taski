class PagesController < ApplicationController
  def contact
  end

  def about
  	@title = "My Starter Webpage"
  end

  def home
  	@projects = Project.all.limit(100)
  	# You usually want to limit how many records you pull from the database
  end

  def error
  end
  
end
