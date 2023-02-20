class Contact < ApplicationRecord
  belongs_to :kind
  has_many :phones
  has_many :addresses

  def self.retrieve_contacts
    all
  end
end
