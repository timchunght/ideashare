require 'open-uri'
require 'json'
require 'open_uri_redirections'
class ProjectsController < ApplicationController
  def search
  	@keyword = params[:project][:keyword].to_s
  	@url = "http://www.kickstarter.com/projects/search.json?search=&term=" + @keyword
    @data = open(@url, :allow_redirections => :safe).read
   	@parsed = JSON.parse(@data)
  end

  def new
  end

  def create
  end

  def update
  end
end
