class Spot < ApplicationRecord
  belongs_to :user

  enum faucet_num: { none: 0, one: 1, two: 2, thiree: 3, four_or_more: 4}
  enum towel: {none: 0, air_towel: 1, paper_towel: 2}
  enum avairable_user: {anyone: 0, only_concerned: 1}
end
