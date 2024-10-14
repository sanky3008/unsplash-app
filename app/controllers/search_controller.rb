class SearchController < ApplicationController
  @show_photo = false

  def index
    if !params[:q].present?
      @results = []
      render
    else
      @show_photo = true
      @results = Unsplash::Photo.search(params[:q])
    end
  end
end
