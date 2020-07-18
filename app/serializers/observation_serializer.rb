class ObservationSerializer < ActiveModel::Serializer
  attributes :id, :teacherId, :coachId, :date, :move, :score, :notes, :comments, :is_released
end
