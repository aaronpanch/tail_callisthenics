def fib(n, sum = 0)
  if n < 2
    return 1 + sum
  else
    return fib(n-1, sum + n)
  end
end
