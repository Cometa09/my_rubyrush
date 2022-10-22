class Movie < Product
  attr_writer :movie_name, :year, :producer, :price, :amount

  def initialize(params)
    super
    @movie_name = params[:movie_name]
    @year = params[:year]
    @producer = params[:producer]
  end

  def to_s
    "Фильм #{@movie_name}, #{@year} г., Режиссер — #{@producer}, #{super}"
  end

  def update(params)
    super
    @movie_name = params[:movie_name] if params[:movie_name]
    @year = params[:year] if params[:year]
    @producer = params[:producer] if params[:producer]
  end
end
