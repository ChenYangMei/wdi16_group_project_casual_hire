class ChangeJobImageToArray < ActiveRecord::Migration
  def change
    remove_column :jobs, :images
    add_column :jobs, :images, :text, :array => true, :default => []
  end
end
