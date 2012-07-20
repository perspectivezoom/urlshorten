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
end
