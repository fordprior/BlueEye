class PayloadsController < ApplicationController
  def new
    @payload = Payload.new
  end

  def create
    @payload = Payload.create(payload_params)

    if @payload.save
      redirect_to :back
    else
      puts "Fail"
    end
  end

  private

  def payload_params
    params.require(:payload).permit(:app_id, :request_method_id, :request_environment_id, :name, :description, :request_url,
                                   request_headers_attributes: [:id, :payload_id, :key, :value, :description, :_destroy])
  end
end
