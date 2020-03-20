class Evaluation < ApplicationRecord
  belongs_to :alumn, optional: true

  validates :name, :content, :result, presence: true
end
