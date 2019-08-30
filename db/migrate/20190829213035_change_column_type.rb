class ChangeColumnType < ActiveRecord::Migration[5.2]
  def change
		change_column :diseases, :description, :text
		change_column :symptoms, :description, :text
		change_column :treatment, :description, :text
  end
end
