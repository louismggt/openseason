class AddColumnsExperiencesToWorkExperiences < ActiveRecord::Migration[5.2]
  def change
    add_column :work_experiences, :poste_intitulé, :string
    add_column :work_experiences, :entreprise, :string
    add_column :work_experiences, :lieux, :string
    add_column :work_experiences, :durée, :integer
    add_column :work_experiences, :start_date, :date
    add_column :work_experiences, :end_date, :date
    add_column :work_experiences, :description, :text
  end
end
