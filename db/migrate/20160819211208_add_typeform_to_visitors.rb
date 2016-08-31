class AddTypeformToVisitors < ActiveRecord::Migration[5.0]
  def change
    add_reference :visitors, :typeform, index: true, foreign_key: true
  end
end
