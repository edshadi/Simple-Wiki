class Init < ActiveRecord::Migration
  def change
    create_table :wikis do |t|
      t.string  :name
      t.text    :homepage
      t.boolean :active, :default => true

      t.timestamps
    end

    create_table :wiki_topics do |t|
      t.string  :title
      t.text    :description
      t.boolean :active, :default => true
      t.integer :wiki_id
      t.timestamps
    end

    create_table :wiki_pages do |t|
      t.string  :title
      t.text    :content
      t.boolean :active, :default => true
      t.integer :wiki_topic_id
      t.timestamps
    end
  end
end
