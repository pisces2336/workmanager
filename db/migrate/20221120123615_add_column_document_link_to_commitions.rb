class AddColumnDocumentLinkToCommitions < ActiveRecord::Migration[7.0]
  def change
    add_column :commitions, :document_link, :string
  end
end
