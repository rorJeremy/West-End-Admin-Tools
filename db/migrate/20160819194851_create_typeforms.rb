class CreateTypeforms < ActiveRecord::Migration[5.0]
  def change
    create_table :typeforms do |t|
    	t.string :token, null: false
    	t.string :which_survey, null: false
      t.integer :lock_version

      t.timestamps
    end
  end
end
