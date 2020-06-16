class Api::V1::TeacherCoachesController < ApplicationController
    def index
        teacher_coaches = TeacherCoach.all 
        render json: teacher_coaches
    end

    def create
        teacher_coach = TeacherCoach.create(teacher_coach_params)
        render json: teacher_coach
    end

    private 
    def teacher_coach_params
        params.require(:teacher_coaches).permit(:id, :join_date, :organization, :courses, :department, :coachId, :teacherId)
    end
end


# t.datetime "join_date"
# t.string "organization"
# t.string "courses"
# t.string "department"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
# t.integer "coachId"
# t.integer "teacherId"