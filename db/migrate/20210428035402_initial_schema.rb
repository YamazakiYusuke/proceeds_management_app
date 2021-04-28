class InitialSchema < ActiveRecord::Migration[5.2]
  def up
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end

    create_table :selled_products do |t|
      t.string :name
      t.integer :price
      t.references :category, foreign_key: true

      t.timestamps
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration, 'The initial migration is not revertable'
  end
end