class CreateMoves < ActiveRecord::Migration[5.2]
  def change
    create_table :moves do |t|
      t.string :phase
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
