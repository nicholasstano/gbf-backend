class User < ApplicationRecord
    has_secure_password
    has_many :teacher_coaches
    has_many :observations
    has_many :feedbacks
    has_many :action_steps
end
