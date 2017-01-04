class CreateJsonImports < ActiveRecord::Migration[5.0]
  def change
    create_table :json_imports do |t|
      t.string :customer_id
      t.jsonb :review
      t.jsonb :product

      t.timestamps
    end
  end
end
