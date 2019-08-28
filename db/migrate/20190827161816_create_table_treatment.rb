class CreateTableTreatment < ActiveRecord::Migration[5.2]
  def change
		create_table :treatment do |t|
			t.string :code
			t.string :description
			t.string :lifestyle
			
			t.timestamps
		end
		
		add_index :treatment, :code, unique: true
  end
end
