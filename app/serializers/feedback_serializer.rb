class FeedbackSerializer < ActiveModel::Serializer
  attributes :id, :teacherId, :coachId, :date, :observation_id, :praise, :see_it, :name_it, :do_it, :is_released
end
