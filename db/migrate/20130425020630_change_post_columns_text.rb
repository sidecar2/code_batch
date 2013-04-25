class ChangePostColumnsText < ActiveRecord::Migration
  def up
  	change_column :posts, :javascript, :text
  	change_column :posts, :css, :text
  	change_column :posts, :html, :text
  	change_column :posts, :haml, :text
  	change_column :posts, :scss, :text
  	change_column :posts, :javascript, :text
  	change_column :posts, :php, :text
  	change_column :posts, :ruby, :text
  end

  def down
  end
end
