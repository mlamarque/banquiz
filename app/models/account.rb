class Account < ActiveRecord::Base
  belongs_to :bank
  validates :username, presence: true
  validates :bank_id, presence: true

end