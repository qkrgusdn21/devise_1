class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :post_id
      t.string :user_email

      t.timestamps
    end
  end
end
