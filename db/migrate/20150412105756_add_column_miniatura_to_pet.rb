class AddColumnMiniaturaToPet < ActiveRecord::Migration
  def change
  	change_table :pets do |t|
		  add_column :pets, :miniatura, :string
		end
  end
end
