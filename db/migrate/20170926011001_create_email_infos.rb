class CreateEmailInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :email_infos do |t|
      t.string :name
      t.string :body
      t.string :from
      t.string :subject
      t.timestamps
    end
  end
end
