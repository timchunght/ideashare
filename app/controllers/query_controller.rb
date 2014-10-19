class QueryController < ApplicationController
  def search_result
  	if params.nil?
  		@url = "http://www.kickstarter.com/projects/search.json?search=&term="
    	@data = open(@url, :allow_redirections => :safe).read
   		@parsed = JSON.parse(@data)
   	else
   		@keyword = params[:query][:keyword].to_s
   		@url = "http://www.kickstarter.com/projects/search.json?search=&term=" + @keyword.strip
    	@data = open(@url, :allow_redirections => :safe).read
   		@parsed = JSON.parse(@data)
  	end
  end
end
