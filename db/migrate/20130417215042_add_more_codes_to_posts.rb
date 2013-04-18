class AddMoreCodesToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :html, :string
    add_column :posts, :haml, :string
    add_column :posts, :scss, :string
    add_column :posts, :javascript, :string
    add_column :posts, :coffee, :string
    add_column :posts, :php, :string
    add_column :posts, :ruby, :string
  end
end
