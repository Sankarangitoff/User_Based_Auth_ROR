class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :roll_number
      t.string :name
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
