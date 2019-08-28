class CreateTablePlayers < ActiveRecord::Migration[5.2]
  def change
		create_table :players do |t|
			t.string :full_name
			t.integer :age
			t.string :gender
			t.string :height
			t.string :code
			
			t.timestamps
		end
  end
end
