class CreateInjuries < ActiveRecord::Migration[5.2]
  def change
		create_table :injuries do |t|
			t.string :name
			
			t.timestamps
		end
  end
end
