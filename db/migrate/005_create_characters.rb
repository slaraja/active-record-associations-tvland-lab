class CreateCharacters < ActiveRecord::Migration[5.1]
    def change
      create_table :characters do |t|
        t.string :name
        t.integer :actor_id
        t.integer :show_id
      end
    end
  end

  def change
    create_table :actors do |t|
    t.string :name
    t.integer :actor_id
    t.integer :show_id
    add_column(:actors, :catchphrase, :string)
    end
end