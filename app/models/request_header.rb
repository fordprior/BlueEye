class RequestHeader < ApplicationRecord
  belongs_to :payload, inverse_of: :request_headers
end
