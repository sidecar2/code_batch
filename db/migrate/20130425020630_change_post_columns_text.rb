class ChangePostColumnsText < ActiveRecord::Migration
  def up
  	change_column :posts, :javascript, :text, :limit => nil
  	change_column :posts, :css, :text, :limit => nil
  	change_column :posts, :html, :text, :limit => nil
  	change_column :posts, :haml, :text, :limit => nil
  	change_column :posts, :scss, :text, :limit => nil
  	change_column :posts, :javascript, :text, :limit => nil
  	change_column :posts, :php, :text, :limit => nil
  	change_column :posts, :ruby, :text, :limit => nil
  	change_column :posts, :coffee, :text, :limit => nil
  end

  def down
  	  	change_column :posts, :javascript, :string 
  	change_column :posts, :css, :string
  	change_column :posts, :html, :string
  	change_column :posts, :haml, :string
  	change_column :posts, :scss, :string
  	change_column :posts, :javascript, :string
  	change_column :posts, :php, :string
  	change_column :posts, :ruby, :string
  	change_column :posts, :coffee, :string
  end
end
