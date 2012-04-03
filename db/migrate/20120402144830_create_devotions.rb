class CreateDevotions < ActiveRecord::Migration
  def change
    create_table :devotions do |t|
      t.string :prayer_topic
      t.text :bible_text
      t.integer :time

      t.timestamps
    end
  end
end
