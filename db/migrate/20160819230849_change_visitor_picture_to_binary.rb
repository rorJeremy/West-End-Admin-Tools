class ChangeVisitorPictureToBinary < ActiveRecord::Migration[5.0]
  def change
  	remove_column :visitors, :picture
  	add_column :visitors, :picture, :binary
  end
end
