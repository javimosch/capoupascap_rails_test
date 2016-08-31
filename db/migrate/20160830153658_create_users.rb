class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.column :username,          :string
      t.column :password,          :string
      t.column :first_name,        :string
      t.column :last_name,         :string
      t.column :avatar,            :string
      t.column :genre,             :string 
      t.column :age,               :integer
      t.column :score,             :integer,:default=>0
      t.timestamps null: false
    end
  end
end
