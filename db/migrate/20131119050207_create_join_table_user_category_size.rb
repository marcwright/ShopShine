class CreateJoinTableUserCategorySize < ActiveRecord::Migration
  def change
    create_join_table :users, :category_sizes do |t|
      # t.index [:user_id, :category_size_id]
      # t.index [:category_size_id, :user_id]
    end
  end
end
