class Watch::Movement < ApplicationRecord
  has_and_belongs_to_many :case, class_name: "::Watch::Case", inverse_of: :movement, foreign_key: :watch_cases_id
end
