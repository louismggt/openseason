class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.boolean :meal
      t.boolean :accommodation
      t.integer :salary
      t.integer :places
      t.date :start_date
      t.date :end_date
      t.string :description
      t.text :content
      t.string :category
      t.string :logo
      t.string :photo

      t.timestamps
    end
  end
end
