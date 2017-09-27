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
    params.require(:payload)
      .permit(
        :name,
        :app_id,
        :description,
        :request_url,
        :request_method_id,
        :request_environment_id,
        request_headers_attributes: [
          :id,
          :key,
          :value,
          :payload_id,
          :description,
          :_destroy
        ],
        request_bodies_attributes: [
          :id,
          :key,
          :value,
          :payload_id,
          :description,
          :_destroy
        ]
      )
  end
end
