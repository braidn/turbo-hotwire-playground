class Watch::Function < ApplicationRecord
  belongs_to :case, class_name: "::Watch::Case", inverse_of: :functions, foreign_key: :watch_cases_id
end
