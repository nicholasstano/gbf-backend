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


class CreateActionSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :action_steps do |t|
      t.integer :teacherId
      t.integer :coachId
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


---------------- Below here are the changes to incorporate above ^^^ -------

class AddCoachIdAndTeacherIdToTeacherCoaches < ActiveRecord::Migration[5.2]
  def change
    add_column :teacher_coaches, :coachId, :integer
    add_column :teacher_coaches, :teacherId, :integer
  end
end
