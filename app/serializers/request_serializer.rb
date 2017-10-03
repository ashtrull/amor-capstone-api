class RequestSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :request_type
end
