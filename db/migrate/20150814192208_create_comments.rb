class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :article
      t.text :body
      
      t.timestamps
    end
  end
end
