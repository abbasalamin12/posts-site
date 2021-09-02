class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :comment_name
      t.string :comment_text

      t.belongs_to :post
      t.timestamps
    end
  end
end
