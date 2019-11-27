class AddColumnsToPreferences < ActiveRecord::Migration[5.2]
  def change
    add_column :preferences, :preference_type, :string
    add_column :preferences, :value, :string
  end
end
