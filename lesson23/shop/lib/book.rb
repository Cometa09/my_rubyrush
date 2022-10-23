class Book < Product
  attr_accessor :book_name, :genre, :author

  def self.from_file(file_path)

    lines = File.readlines(file_path, encoding: 'UTF-8').map { |line| line.chomp }
    self.new(
      book_name: lines[0],
      genre: lines[1],
      author: lines[2],
      price: lines[3].to_i,
      amount: lines[4].to_i
    )
  end

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
