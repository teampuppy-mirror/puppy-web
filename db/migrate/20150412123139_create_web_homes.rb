class CreateWebHomes < ActiveRecord::Migration
  def change
    create_table :web_homes do |t|

      t.timestamps null: false
    end
  end
end
