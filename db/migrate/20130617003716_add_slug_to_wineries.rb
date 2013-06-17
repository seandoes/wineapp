class AddSlugToWineries < ActiveRecord::Migration
  def change
    add_column :wineries, :slug, :string
    add_index :wineries, :slug
  end
end
