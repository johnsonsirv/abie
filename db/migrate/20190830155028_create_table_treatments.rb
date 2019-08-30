class CreateTableTreatments < ActiveRecord::Migration[5.2]
  def change
			rename_table :treatment, :treatments
  end
end
