class AddCodeTypeToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :codetype, :string
  end
end
