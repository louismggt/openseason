class AddMessageToMissions < ActiveRecord::Migration[5.2]
  def change
    add_column :missions, :message, :text
  end
end
