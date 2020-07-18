class ActionStepSerializer < ActiveModel::Serializer
  attributes :id, :short_text, :long_text, :date, :move_id, :is_assigned, :is_completed, :teacherId, :coachId
end
