class TeacherCoach < ApplicationRecord
    belongs_to :teacher, class_name: 'User'
    belongs_to :coach, class_name: 'User'
end
