class User < ApplicationRecord
    has_secure_password
    has_many :teacher_coaches
    has_many :observations
    has_many :feedbacks, foreign_key: 'teacherId'
    has_many :action_steps
end