class OfferSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :offer_type
end
