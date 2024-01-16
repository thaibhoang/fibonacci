class FibonacciFinder
  def initialize
    @res = {1 => 1, 2 => 1}
  end

  def fibonacci(n)
    @res[n] = fibonacci(n-1) + fibonacci(n-2) if @res[n] == nil
    return @res[n]
  end
end

creator = FibonacciFinder.new
p creator.fibonacci(10)
p creator.fibonacci(1)
p creator.fibonacci(2)
p creator.fibonacci(3)
p creator.fibonacci(1000)