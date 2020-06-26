class AddImageUrlToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :image_url, :string
    add_column :cocktails, :string, :string
  end
end
