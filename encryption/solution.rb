class Encrypter
  attr_accessor :string

  def initialize(string)
    @string = string
  end

  def encrypt
    return "" unless string.size > 0

    sanitized = remove_whitespaces(string)

    col_size = Math.sqrt(sanitized.size).ceil

    matrix  = create_matrix(sanitized, col_size)

    (0..col_size).map do |i|
      matrix.map do |row|
        row[i] unless row[i].nil?
      end.join()
    end.join(' ').strip
  end

  private

  def create_matrix(string, size)
    pattern = /.{1,#{size}}/
    string.scan(pattern)
  end

  def remove_whitespaces(string)
    string.split.join
  end
end

if __FILE__ == $0
  string = gets.strip
  puts Encrypter.new(string).encrypt
end
