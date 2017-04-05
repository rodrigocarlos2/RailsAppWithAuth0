class CreateObrigations < ActiveRecord::Migration[5.0]
  def change
    create_table :obrigations do |t|
      t.text :content
      t.string :title

      t.timestamps
    end
  end
end
