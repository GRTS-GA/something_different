class RenameImageUrlToImage < ActiveRecord::Migration[5.0]
  def change
      rename_column :events, :image_url, :image
  end
end
