class Book < Product
  attr_writer :book_name, :genre, :author, :price, :amount

  def initialize(params)
    super
    @book_name = params[:book_name]
    @genre = params[:genre]
    @author = params[:author]
  end

  def to_s
    "Книга #{@book_name}, #{@genre}, автор — #{@author}, #{super}"
  end

  def update(params)
    super
    @book_name = params[:book_name] if params[:book_name]
    @genre = params[:genre] if params[:genre]
    @author = params[:author] if params[:author]
  end
end
