class CreateCategorySizeUsers < ActiveRecord::Migration
  def change
    create_table :category_size_users do |t|
      t.references :category_size, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
