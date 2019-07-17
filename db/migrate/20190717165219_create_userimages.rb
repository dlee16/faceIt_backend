class CreateUserimages < ActiveRecord::Migration[5.2]
  def change
    create_table :userimages do |t|
      t.integer :user_id
      t.integer :image_id
      t.string :userimg

      t.timestamps
    end
  end
end
