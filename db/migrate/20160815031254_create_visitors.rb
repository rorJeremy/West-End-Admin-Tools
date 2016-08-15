class CreateVisitors < ActiveRecord::Migration[5.0]
  def change
    create_table :visitors do |t|
      t.string :typeform_token, null: false
      t.binary :picture, null: false
      t.integer :lock_version

      t.timestamps
    end
  end
end
