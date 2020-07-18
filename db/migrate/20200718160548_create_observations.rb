class CreateObservations < ActiveRecord::Migration[5.2]
  def change
    create_table :observations do |t|
      t.integer :teacherId
      t.integer :coachId
      t.datetime :date
      t.integer :move
      t.integer :score
      t.text :notes
      t.text :comments
      t.boolean :is_released
      t.timestamps
    end
  end
end
