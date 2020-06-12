class AddCoachIdToActionSteps < ActiveRecord::Migration[5.2]
  def change
    add_column :action_steps, :coachId, :integer
  end
end
