class AddColunsToReports < ActiveRecord::Migration
  def change
  	change_table :reports do |t|
		  add_column :reports, :tipo, :string
		  add_column :reports, :outros, :string
		end
	end
end
