# This is a really useful fix to the project
class Fib_Finder
  def self.fib(n)
    if !(n >= 0) then
      (-1)**(-n+1)*fib_array(-n)[-n]
    else
      fib_array(n)[n]
    end
  end
  def self.fib_array(n)
    begin
      array = []
      array[0] = 0
      array[1] = 1
      (n-1).times { |x|
        array[x+2] = array[x+1] + array[x]
      }
      return array
    rescue Exception
      puts "Something bad happened."
    end
  end

  class << self
    alias_method :fibonacci, :fib
  end
end