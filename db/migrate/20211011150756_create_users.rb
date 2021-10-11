class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name, nulls: false
      t.string :last_name, nulls: false
      t.string :email, nulls: false
      t.string :password_digest, nulls: false
      t.integer :roles, default: 1

      t.timestamps
    end
  end
end
