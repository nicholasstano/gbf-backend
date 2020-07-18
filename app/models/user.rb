class User < ApplicationRecord
    has_secure_password
    has_many :teacher_coaches, foreign_key: "coachId"
    has_many :observations, foreign_key: 'teacherId'
    has_many :feedbacks, foreign_key: 'teacherId'
    has_many :action_steps, foreign_key: 'teacherId'

    def feedback
        feedback = Feedback.all.select { |fb| fb.teacherId == self.id}
        feedback.map do |fb| 
            obs = Observation.all.find { |o| o.id == fb.observation_id }
            move = Move.all.find { |m| obs.move.to_i == m.id }
            action_step = ActionStep.all.find { |as| as.id == fb.action_step_id}
            {
                id: fb.id,
                teacherId: fb.teacherId,
                coachId: fb.coachId,
                date: fb.date,
                praise: fb.praise,
                quick_hits: fb.quick_hits,
                see_it: fb.see_it,
                name_it: fb.name_it,
                do_it: fb.do_it,
                is_released: fb.is_released,
                observation: 
                {
                    id: obs.id,
                    date: obs.date,
                    score: obs.score,
                    notes: obs.notes,
                    comments: obs.comments,
                    is_released: obs.is_released
                },
                move: {
                    id: move.id,
                    phase: move.phase,
                    name: move.name,
                    description: move.description
                },
                action_step: {
                    id: action_step.id,
                    short_text: action_step.short_text,
                    long_text: action_step.long_text,
                    date: action_step.date,
                    is_assigned: action_step.is_assigned,
                    is_completed: action_step.is_completed
                }
            }
        end
    end

end