class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :subject
      t.datetime :course_time
      t.integer :professor_id
      t.integer :student_id
      t.timestamps
    end
  end
end
