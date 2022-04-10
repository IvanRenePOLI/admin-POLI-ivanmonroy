class Product < ApplicationRecord
  has_many :comment_products
  validate :available_must_be_positive

  def available_must_be_positive
    errors.add(:available, 'Debe ser positivo') if available.to_i < 0
  end
end
