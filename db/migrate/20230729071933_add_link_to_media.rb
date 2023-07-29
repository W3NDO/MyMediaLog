class AddLinkToMedia < ActiveRecord::Migration[7.0]
  def change
    add_column :media, :link, :string
  end
end
