class CreateStudentGalleries < ActiveRecord::Migration[5.0]
  def change
    create_table :student_galleries do |t|
      t.string :faculty
      t.string :postion
      t.string :college
      t.string :working_in

      t.timestamps
    end
  end
end
