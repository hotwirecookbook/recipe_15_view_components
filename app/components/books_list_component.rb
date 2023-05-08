class BooksListComponent < ViewComponent::Base
  attr_reader :id, :title, :books
	
  def initialize(id:, title:, books:)
    @id = id
    @title = title
    @books = books
  end
end