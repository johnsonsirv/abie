class CreateTableDisease < ActiveRecord::Migration[5.2]
  def change
		create_table :diseases do |t|
			t.string :code
			t.string :name
			t.string :description
			t.integer :injury_id
			t.string :symptoms
			t.string :treatment
			t.string :affected_area
			t.string :risk_age
			
			t.timestamps
		end
		
		add_index :diseases, :code, unique: true
  end
end
