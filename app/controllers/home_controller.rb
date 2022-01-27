class HomeController < ApplicationController
  def index
    api_obj = ApiChalamet.new
    @random_quote = api_obj.get_random_quote()
    @random_image_path = api_obj.get_random_photo_path()
    render :index
  end
end