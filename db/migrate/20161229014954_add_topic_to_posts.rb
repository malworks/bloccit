class AddTopicToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :topic_id, :nteger
    add_index :posts, :topic_id
  end
end
