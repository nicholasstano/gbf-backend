class RemoveTeacherNameAndCoachNameFromTeacherCoaches < ActiveRecord::Migration[5.2]
  def change
    remove_column :teacher_coaches, :teacher_name, :string
    remove_column :teacher_coaches, :coach_name, :string
  end
end
