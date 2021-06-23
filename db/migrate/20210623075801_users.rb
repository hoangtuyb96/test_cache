class Users < ActiveRecord::Migration[6.0]
  def change
    # 経費の事業所全体の明細テンプレート　経費明細テンプレートから office_member_id を取り除いたレコード
    create_table :users do |t|
      t.integer :tax_excluded_amount, unsigned: true
      t.integer :tax_included_amount, unsigned: true
      t.string :name, limit: 255, null: false

      t.timestamps
    end
  end
end
