class CreateKarts < ActiveRecord::Migration[6.0]
  def change
    create_table :karts do |t|
      t.string :name
      t.string :driver
      t.string :body
      t.string :wheels
      t.belongs_to :club, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
