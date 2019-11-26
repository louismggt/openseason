class AddProfessionalDomainToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :professional_domain, :string
  end
end
