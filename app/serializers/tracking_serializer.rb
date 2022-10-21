class TrackingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :receipt_id, :pickup, :destination
end
