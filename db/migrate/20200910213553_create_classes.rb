class CreateClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :classes do |t|
      t.string :name
      t.string :subject
      t.datetime :class_time
      t.integer :professor_id
      t.integer :student_id
      t.timestamps
    end
  end
end
