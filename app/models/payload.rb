class Payload < ApplicationRecord
  belongs_to :app
  belongs_to :request_method
  belongs_to :request_environment
  has_many :request_headers
  has_many :request_bodies
end
