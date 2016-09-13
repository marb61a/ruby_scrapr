class DropNewsscraper < ActiveRecord::Migration
  def change
    drop_table :newsscrapers
  end
end
