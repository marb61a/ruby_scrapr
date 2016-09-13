class CreateNewsscrapers < ActiveRecord::Migration
  def change
    create_table :newsscrapers do |t|
      t.string :title_url
      t.string :title
      t.text :body
      t.string :time
      t.string :image_url

      t.timestamps null: false
    end
  end
end
