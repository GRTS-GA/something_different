class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :name
      t.string :type
      t.string :category
      t.datetime :event_date
      t.string :image_url
      t.string :event_url
      t.integer :price
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
