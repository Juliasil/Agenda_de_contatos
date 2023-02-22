class Contact < ApplicationRecord
  belongs_to :kind

  has_many :phones
  has_many :addresses

  accepts_nested_attributes_for :phones, reject_if: :all_blank, allow_destroy: true

  def self.retrieve_contacts
    all
  end
end
