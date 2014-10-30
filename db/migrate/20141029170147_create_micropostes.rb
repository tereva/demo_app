class CreateMicropostes < ActiveRecord::Migration
  def change
    create_table :micropostes do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
