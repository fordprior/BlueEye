class Payload < ApplicationRecord
  belongs_to :app
  belongs_to :request_method
  belongs_to :request_environment
  has_many :request_headers, inverse_of: :payload
  has_many :request_bodies

  accepts_nested_attributes_for :request_headers
  accepts_nested_attributes_for :request_bodies, allow_destroy: true
end
