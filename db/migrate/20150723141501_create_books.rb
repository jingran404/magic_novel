class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :pinyin
      t.integer :author_id , index:true
      t.integer :book_type_id, index:true
      t.text :introduction
      t.string :remarks
      t.integer :tag_id, index:true
      t.integer :status
      t.decimal :total_price
      t.float :discount
      t.integer :words
      t.integer :click_count
      t.integer :recommend_count
      t.integer :collection_count
      t.integer :book_volume_count
      t.integer :book_chapter_count
      t.datetime :deleted_at

      t.timestamps null: false
    end
  end
end