class Watch::Case < ApplicationRecord
  has_one :exterior, class_name: "::Watch::Exterior", inverse_of: :case, foreign_key: :watch_cases_id
end
