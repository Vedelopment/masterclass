class DropRecommendationTable < ActiveRecord::Migration[5.0]
    def change
      drop_table :recommendations
    end
end
