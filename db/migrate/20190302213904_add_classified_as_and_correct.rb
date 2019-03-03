class AddClassifiedAsAndCorrect < ActiveRecord::Migration[5.1]
  def change
    add_column :submissions, :classified_as, :string
    add_column :submissions, :was_correct, :bool
  end
end
