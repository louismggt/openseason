class AddPhotoToWorkExperience < ActiveRecord::Migration[5.2]
  def change
    add_column :work_experiences, :photo, :string
  end
end
