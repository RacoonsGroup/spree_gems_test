# This migration comes from spree_commentable (originally 20130207115318)
class CreateCommentsTable < ActiveRecord::Migration
  def change
    create_table :spree_comments do |t|
      t.string :author
      t.text :comment
      t.string :email
      t.boolean :approve, default: false
      t.references :product

      t.timestamps
    end

    add_index :spree_comments, :product_id
  end
end