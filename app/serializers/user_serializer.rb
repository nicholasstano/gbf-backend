class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :teacher_name, :is_teacher, :is_coach, :is_leader, :organization, :coachInformation, :feedback
end
