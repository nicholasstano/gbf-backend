class ActionStep < ApplicationRecord
    belongs_to :user, foreign_key: 'teacherId', required: false
end
