class RemovePhotoFromProject < ActiveRecord::Migration
  def up
  	remove_column :projects, :photo
  end

  def down
  	add_column :projects, :photo, :string
  end
end
