class Feedback < ApplicationRecord
    belongs_to :user, required: false
end
