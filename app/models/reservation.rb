class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :room

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :people, presence: true
  validate :start_end_check

  def start_end_check
    if start_date.present? && end_date < start_date
    errors.add(:end_date, "は開始日より前の日付は登録できません。")
    end
  end
end
