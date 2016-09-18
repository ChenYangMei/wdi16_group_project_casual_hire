class AddBodyToRatings < ActiveRecord::Migration
  def change
    add_column :ratings, :body, :text
  end
end
