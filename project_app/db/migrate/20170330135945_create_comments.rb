class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.belongs_to :user, index: true
      t.belongs_to :event, index: true
      t.string :content
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end
  end
end
