class Bank < ActiveRecord::Base
  has_many :accounts
  validates :name, presence: true
  
  def todo
    #todo
  end
  
end