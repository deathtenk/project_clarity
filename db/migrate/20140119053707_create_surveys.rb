class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.integer :respondent_age
      t.string :respondent_gender

      t.timestamps
    end
  end
end
