class CreateActionSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :action_steps do |t|
      t.string :short_text
      t.text :long_text
      t.datetime :date
      t.integer :move_id
      t.boolean :is_assigned
      t.boolean :is_completed
      t.timestamps
    end
  end
end
