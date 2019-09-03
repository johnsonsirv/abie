class RenameTableDiagnosis < ActiveRecord::Migration[5.2]
  def change
		rename_table :diagnosis, :diagnoses
		add_column :diagnoses, :treatment, :text
		add_column :diagnoses, :lifestyle, :text
		
  end
end
