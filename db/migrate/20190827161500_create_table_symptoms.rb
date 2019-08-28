class CreateTableSymptoms < ActiveRecord::Migration[5.2]
  def change
		create_table :symptoms do |t|
			t.string :code
			t.string :description
			t.integer :injury_id
			
			t.timestamps
		end
		
		add_index :symptoms, :code, unique: true
  end
	
end
