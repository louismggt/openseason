class CreateWorkExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :work_experiences do |t|
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
