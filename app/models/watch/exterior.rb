class Watch::Exterior < ApplicationRecord
  belongs_to :case, class_name: "::Watch::Case", inverse_of: :exterior, foreign_key: :watch_cases_id
end
