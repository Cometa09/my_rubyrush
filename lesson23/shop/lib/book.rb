class Book < Product
  def initialize(params)
    super
    @book_name = params[:book_name]
    @genre = params[:genre]
    @author = params[:author]
  end

  def to_s
    "Книга #{@book_name}, #{@genre}, автор — #{@author}, #{super}"
  end
end
