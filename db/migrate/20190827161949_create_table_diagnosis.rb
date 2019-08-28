class CreateTableDiagnosis < ActiveRecord::Migration[5.2]
  def change
		create_table :diagnosis do |t|
			t.integer :injury_id
			t.string :disease
			t.string :symptoms
			t.string :player
			t.text :inference
			
			t.timestamps
		end
		
  end
end
