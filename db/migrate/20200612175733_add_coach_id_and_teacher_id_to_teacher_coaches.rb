class AddCoachIdAndTeacherIdToTeacherCoaches < ActiveRecord::Migration[5.2]
  def change
    add_column :teacher_coaches, :coachId, :integer
    add_column :teacher_coaches, :teacherId, :integer
  end
end
