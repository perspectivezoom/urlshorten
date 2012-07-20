class UrlsController < ApplicationController
  def new
  	@url = Url.new
  end

  def create
  	@url = Url.create(params[:url])
  end

  def index
  	@urls = Url.all
  end

  def redirect
  	url = Url.find_by_short_id(params[:short_id])
  	url.clicks.create
  	redirect_to url.long_url
  end
end
