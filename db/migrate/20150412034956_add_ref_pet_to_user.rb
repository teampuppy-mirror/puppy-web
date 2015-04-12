class AddRefPetToUser < ActiveRecord::Migration
  def change
  	  create_table :likes do |t|
    	t.belongs_to :pet, index: true
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
