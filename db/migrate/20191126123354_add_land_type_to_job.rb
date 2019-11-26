class AddLandTypeToJob < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :land_type, :string
  end
end
