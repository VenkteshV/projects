class AddColumnToProducts < ActiveRecord::Migration[5.0]
  def change
  	execute "ALTER TABLE products ADD COLUMN image_url varchar(30), ADD COLUMN price varchar(30) "
  end
end
