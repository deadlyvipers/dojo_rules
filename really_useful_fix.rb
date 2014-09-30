# This is a really useful fix to the project
class FibFinder
  def self.fib(n)
    if (n >= 0) then
      fib_array(n)[n]
    else
      (-1)**(-n+1)*fib_array(-n)[-n]
    end
  end
  def self.fib_array(n)
    array = []
    array[0] = 0
    array[1] = 1
    (n-1).times do |x|
      array[x+2] = array[x+1] + array[x]
    end
    array
  rescue StandardError
    puts 'Something bad happened.'
  end

  class << self
    alias_method :fibonacci, :fib
  end
end