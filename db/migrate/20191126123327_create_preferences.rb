class CreatePreferences < ActiveRecord::Migration[5.2]
  def change
    create_table :preferences do |t|
      t.integer :duration
      t.date :star_date
      t.date :end_date
      t.string :land_type
      t.string :category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
