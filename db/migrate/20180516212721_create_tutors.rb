class CreateTutors < ActiveRecord::Migration[5.2]
  def change
    create_table :tutors do |t|
      t.string :name
      t.integer :age
      t.string :email

      t.timestamps
    end
  end
end
