class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :post_id
      t.integer :log_id

      t.timestamps null: false
    end
  end
end
