class TrackingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :receipt_id, :pick_up, :destination
end
