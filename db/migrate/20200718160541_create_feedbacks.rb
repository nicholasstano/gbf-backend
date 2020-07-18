class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.integer :teacherId
      t.integer :coachId
      t.datetime :date
      t.integer :observation_id
      t.text :praise
      t.text :quick_hits
      t.integer :action_step_id
      t.text :see_it
      t.text :name_it
      t.text :do_it
      t.boolean :is_released
      t.timestamps
    end
  end
end
