class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.timestamps
      t.references :post
    end
  end
end
