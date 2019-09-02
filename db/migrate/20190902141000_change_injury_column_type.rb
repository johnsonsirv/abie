class ChangeInjuryColumnType < ActiveRecord::Migration[5.2]
  def change
		rename_column :diagnosis, :injury_id, :injury
		change_column :diagnosis, :injury, :string
  end
end
