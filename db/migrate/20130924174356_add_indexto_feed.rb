class AddIndextoFeed < ActiveRecord::Migration
  def change
    add_index :feeds, [:user_id, :created_at]
  end
end
