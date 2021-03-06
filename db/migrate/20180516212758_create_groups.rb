class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :subject
      t.references :user, foreign_key: true
      t.references :tutor, foreign_key: true

      t.timestamps
    end
  end
end
