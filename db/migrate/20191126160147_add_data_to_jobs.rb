class AddDataToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :title, :string
    add_column :jobs, :name, :string
    add_column :jobs, :email, :string
    add_column :jobs, :website, :string
    add_column :jobs, :professional_domain, :string
    add_column :jobs, :telephone, :string
  end
end
