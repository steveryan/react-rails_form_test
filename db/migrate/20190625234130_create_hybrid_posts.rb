class CreateHybridPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :hybrid_posts do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
