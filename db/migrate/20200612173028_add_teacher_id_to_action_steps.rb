class AddTeacherIdToActionSteps < ActiveRecord::Migration[5.2]
  def change
    add_column :action_steps, :teacherId, :integer
  end
end
