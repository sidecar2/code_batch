class ChangePostColumnsText < ActiveRecord::Migration
  def up
  	change_column :posts, :javascript, :text
  	change_column :posts, :css, :text

  end

  def down
  end
end
