class Watch::Case < ApplicationRecord
  has_one :exterior, class_name: "::Watch::Exterior", inverse_of: :case, foreign_key: :watch_cases_id
  has_one :movement, class_name: "::Watch::Movement", inverse_of: :case, foreign_key: :watch_cases_id
  has_and_belongs_to_many :functions, class_name: "::Watch::Function", inverse_of: :case, foreign_key: :watch_case_id, association_foreign_key: :watch_function_id
end
