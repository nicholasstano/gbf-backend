class User < ApplicationRecord
    has_secure_password
    has_many :teacher_coaches, foreign_key: "coachId"
    has_many :observations, foreign_key: 'teacherId'
    has_many :feedbacks, foreign_key: 'teacherId'
    has_many :action_steps, foreign_key: 'teacherId'

    def observations
        Observation.all.select { |obs| obs.teacherId == self.id}
    end
    def feedback
        Feedback.all.select { |feedback| feedback.teacherId == self.id}
    end
    def action_steps
        ActionStep.all.select { |action_step| action_step.teacherId == self.id}
    end
end