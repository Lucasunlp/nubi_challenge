class Alumn < ApplicationRecord
  has_many :courses
  has_many :evaluations, dependent: :destroy

  validates :name, :surname, :email, :phone,
            :identification_number, presence: true

  validates :identification_number, :email, uniqueness: true


  def evaluation_name
    evaluations.pluck(:name)
  end

  def content
    evaluations.pluck(:content)
  end

  def result
    evaluations.pluck(:result)
  end

  def evaluations
    Evaluation.where(alumn_id: identification_number)
  end
end
