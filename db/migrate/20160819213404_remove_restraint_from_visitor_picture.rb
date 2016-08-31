class RemoveRestraintFromVisitorPicture < ActiveRecord::Migration[5.0]
  def change
  	change_column :visitors, :picture, :string, :null => true
  end
end
