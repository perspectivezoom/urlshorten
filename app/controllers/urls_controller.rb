class UrlsController < ApplicationController
  def new
  	@url = Url.new
  end

  def create
  	@url = Url.new(params[:url])
  	@url.save
  end

  def index
  	@urls = Url.all
  end

  def redirect
  	url = Url.find_by_short_id(params[:short_id])
  	redirect_to url.long_url
  end
end
