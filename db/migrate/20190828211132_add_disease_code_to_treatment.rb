class AddDiseaseCodeToTreatment < ActiveRecord::Migration[5.2]
  def change
		add_column :treatment, :disease_code, :string
		remove_column :diseases, :treatment, :string
  end
end
