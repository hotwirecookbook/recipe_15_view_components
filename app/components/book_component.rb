class BookComponent < ViewComponent::Base
  attr_reader :book

  def initialize(book:)
    @book = book
  end

  def div_id
    "#{book.completed? ? 'completed' : 'incomplete'}_#{dom_id(book)}"
  end
end