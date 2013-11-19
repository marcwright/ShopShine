class CreateUserCategorySizes < ActiveRecord::Migration
  def change
    create_table :user_category_sizes do |t|
      t.references :user, index: true
      t.references :category_size, index: true

      t.timestamps
    end
  end
end
