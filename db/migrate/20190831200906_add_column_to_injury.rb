class AddColumnToInjury < ActiveRecord::Migration[5.2]
  def change
		add_column :injuries, :code, :integer
		add_index :injuries, :code, unique: true
  end
end
