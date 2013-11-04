class MakeShoutsPolymorphic < ActiveRecord::Migration
  def up
  	remove_column :shouts, :body
  	add_column :shouts, :content_type, :string
  	add_column :shouts, :content_id, :integer
  	add_index :shouts, [:content_type, content_id]
  end
end
