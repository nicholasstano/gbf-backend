class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :teacher_name
      t.boolean :is_teacher
      t.boolean :is_coach
      t.boolean :is_leader
      t.string :organization
      t.timestamps
    end
  end
end
