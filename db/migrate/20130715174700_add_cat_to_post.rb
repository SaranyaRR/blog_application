class AddCatToPost < ActiveRecord::Migration
  def change
    add_column :posts, :cat, :string
  end
end
