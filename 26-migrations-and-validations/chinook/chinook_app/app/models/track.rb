class Track < ApplicationRecord

  SHORT = 180000
  LONG  = 360000

  scope :starts_with, -> (char) { where('name ILIKE ?', "#{ char }%") }

  scope :short,  -> { shorter_than(SHORT) }
  scope :medium, -> { longer_than(SHORT).shorter_than(LONG) }
  scope :long,   -> { longer_than(LONG) }

  validates :name, :composer, :milliseconds, :bytes, :unit_price, presence: true
  validates :milliseconds, numericality: { greater_than: 0 }
  validates :unit_price,   numericality: { greater_than_or_equal_to: 0.0 }

  validate :name_must_be_titleized

  def self.shorter_than(milliseconds)
    where('milliseconds < ?', milliseconds)
  end

  def self.longer_than(milliseconds)
    where('milliseconds >= ?', milliseconds)
  end

private

  def name_must_be_titleized

    # Make sure first char is upper cased
    first_char = name[0]
    first_char_is_not_upcased = (first_char != first_char.upcase)

    # if first charater is not upper cased, add an error
    if first_char_is_not_upcased
      errors.add(:name, 'must be capitalized!')
    end
  end

end
