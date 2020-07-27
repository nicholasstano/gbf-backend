class CreateTeacherCoaches < ActiveRecord::Migration[5.2]
  def change
    create_table :teacher_coaches do |t|
      t.integer :teacherId
      t.integer :coachId
      t.datetime :join_date
      t.string :organization
      t.string :courses
      t.string :department
      t.timestamps
    end
  end
end
