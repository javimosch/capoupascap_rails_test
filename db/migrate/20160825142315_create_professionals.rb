<%#table specs%>

class CreateProfessionals < ActiveRecord::Migration
  def change
    create_table :professionals do |t|
      t.column :first_name,        :string
      t.column :last_name,         :string
      t.column :address,           :string
      t.column :phone,             :string
      t.column :specialty,         :string
      t.column :avatar,            :string
      t.timestamps null: false
    end
  end
end
