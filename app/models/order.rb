# == Schema Information
#
# Table name: orders
#
#  id                 :integer          not null, primary key
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  status             :integer          default(0)
#  user_id            :integer
#  artwork_medium_id  :integer
#  payment_type       :string(255)
#  order_number       :string(255)
#  order_date         :datetime
#  title              :string(255)
#  artist             :string(255)
#  delivery_method_id :integer
#  number_of_records  :integer
#  order_status_id    :integer
#  comments           :text
#

class Order < ActiveRecord::Base
  attr_accessible :status, :user_id, :artwork_medium_id, :order_number, :order_date, :title, :artists, :delivery_method_id, :status_id, :number_of_records, :artist, :audio_master, :audio_master_attributes, :record_size, :rpm, :quantity, :gravering, :gravering_attributes, :matrix, :matrix_attributes, :testpress, :testpress_attributes
  
  belongs_to :user

  has_many :order_lines, :dependent => :destroy

  has_one :order_status, :dependent => :destroy
  has_one :delivery_method, :dependent => :destroy
  has_one :cover_medium, :dependent => :destroy
  has_one :audio_master, :dependent => :destroy
  has_one :gravering, :dependent => :destroy
  has_one :matrix, :dependent => :destroy
  has_one :testpress, :dependent => :destroy
  has_one :pressing, :dependent => :destroy

  validates :user_id, presence: true
  validates :order_number, presence: true
  validates :order_date, presence: true
  validates :title, presence: true
  validates :number_of_records, presence: true
  validates :delivery_method_id, presence: true
  validates :order_status_id, presence: true
  validates :payment_type, presence: true

  accepts_nested_attributes_for :order_status
  accepts_nested_attributes_for :delivery_method
  accepts_nested_attributes_for :cover_medium
  accepts_nested_attributes_for :audio_master
  accepts_nested_attributes_for :gravering
  accepts_nested_attributes_for :matrix
  accepts_nested_attributes_for :testpress
end
