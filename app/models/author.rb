class Author < ApplicationRecord
  has_many :books

  accepts_nested_attributes_for :books, reject_if: :all_blank

  def book_titles
    self.books.pluck(:title).each do |title|
      puts "This author wrote #{title}"
    end
  end

  def to_s
    self.name
  end
end
