class HomeController < ApplicationController
  def index
    @payload = Payload.new
  end
end
