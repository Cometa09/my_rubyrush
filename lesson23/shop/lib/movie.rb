class Movie < Product

  def initialize(params)
    super
    @movie_name = params[:movie_name]
    @year = params[:year]
    @producer = params[:producer]
  end

  def to_s
    "Фильм #{@movie_name}, #{@year} г., Режиссер — #{@producer}, #{super}"
  end
end
