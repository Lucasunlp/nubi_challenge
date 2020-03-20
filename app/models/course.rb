class Course < ApplicationRecord
  has_many :alumn
  belongs_to :teacher
  validates :name, :start_date, :end_date, :price, :amount_hours, presence: true
  validates :name, uniqueness: true
  validate :end_date_is_after_start_date

  private

  def end_date_is_after_start_date
    return if end_date.blank? || start_date.blank?
    errors.add(:date_end, 'It cannot be a date before or equal to the start date') if end_date <= starte_date
  end
end
