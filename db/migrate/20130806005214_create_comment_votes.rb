class CreateCommentVotes < ActiveRecord::Migration
  def change
    create_table :comment_votes do |t|
      t.references :user
      t.references :comment

      t.timestamps
    end
    add_index :comment_votes, :user_id
    add_index :comment_votes, :comment_id
    add_index :comment_votes, [:user_id, :comment_id], :unique => true

  end
end
