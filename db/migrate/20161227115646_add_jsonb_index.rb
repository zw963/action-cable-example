class AddJsonbIndex < ActiveRecord::Migration[5.0]
  def change
    add_index :json_imports, "(review->'date')", using: :gin
  end
end
