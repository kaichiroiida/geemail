class CreateGeeMails < ActiveRecord::Migration[5.0]
  def change
    create_table :gee_mails do |t|
      t.string :to
      t.string :subject
      t.string :text
      t.string :date

      t.timestamps
    end
  end
end
