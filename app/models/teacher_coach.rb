class TeacherCoach < ApplicationRecord
    belongs_to :teacher, class_name: 'User', foreign_key: "teacherId"
    belongs_to :coach, class_name: 'User', foreign_key: "coachId"
end
