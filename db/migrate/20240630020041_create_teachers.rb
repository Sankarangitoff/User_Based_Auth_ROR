class CreateTeachers < ActiveRecord::Migration[7.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :Date_of_joining
      t.string :Salary

      t.timestamps
    end
  end
end
