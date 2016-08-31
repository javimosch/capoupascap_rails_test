class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.column :author_id, :integer,:null=>false
      t.column :rival_id,   :integer,:null=>false
      t.column :message,    :string
      t.column :accepted,   :boolean,:default=>false
      t.column :closed,     :boolean,:default=>false
      t.timestamps null: false
    end
  end
end
