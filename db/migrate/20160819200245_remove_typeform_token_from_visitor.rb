class RemoveTypeformTokenFromVisitor < ActiveRecord::Migration[5.0]
  def change
  	remove_column :visitors, :typeform_token
  end
end
