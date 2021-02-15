class Watch::Movement < ApplicationRecord
  belongs_to :case, class_name: "::Watch::Case", inverse_of: :movement, foreign_key: :watch_cases_id
end
