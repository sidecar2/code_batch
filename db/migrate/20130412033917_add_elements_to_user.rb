class AddElementsToUser < ActiveRecord::Migration
  def change
    add_column :users, :bio, :string
    add_column :users, :site, :string
  end
end
