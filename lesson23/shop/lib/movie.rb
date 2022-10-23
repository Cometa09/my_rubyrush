class Movie < Product
  attr_accessor :movie_name, :producer, :year

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding: 'UTF-8').map {|line| line.chomp}

    self.new(
      movie_name: lines[0],
      producer: lines[1],
      year: lines[2],
      price: lines[3].to_i,
      amount: lines[4].to_i
    )
  end

  def initialize(params)
    super

    @movie_name = params[:movie_name]
    @producer = params[:producer]
    @year = params[:year]
  end

  def to_s
    "Фильм #{@movie_name}, #{@year} г., Режиссер — #{@producer}, #{super}"
  end

  def update(params)
    super

    @movie_name = params[:movie_name] if params[:movie_name]
    @producer = params[:producer] if params[:producer]
    @year = params[:year] if params[:year]
  end
end
