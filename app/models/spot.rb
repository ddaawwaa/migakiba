class Spot < ApplicationRecord
  belongs_to :user
  has_many :photos
  accepts_nested_attributes_for :photos

  enum faucet_num: { no_faucet: 0, one: 1, two: 2, three: 3, four_or_more: 4}
  enum towel: {no_towel: 0, air_towel: 1, paper_towel: 2}
  enum avairable_user: {anyone: 0, only_concerned: 1}
end
