class AddIsusercreatedToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :is_user_created, :boolean
  end
end
