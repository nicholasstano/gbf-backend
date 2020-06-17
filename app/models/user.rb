class User < ApplicationRecord
    has_secure_password
    has_many :teacher_coaches, foreign_key: "coachId"
    has_many :observations, foreign_key: 'teacherId'
    has_many :feedbacks, foreign_key: 'teacherId'
    has_many :action_steps, foreign_key: 'teacherId'
end