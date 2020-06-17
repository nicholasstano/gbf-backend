class Observation < ApplicationRecord
    belongs_to :teacher, class_name: 'User', foreign_key: 'teacherId', required: false
    belongs_to :coach, class_name: 'User', required: false
end
