module Prime 
  def is_prime?(number)
    if number < 2
      return false
    end

    2.upto(number-1).each do |i|
      if number % i == 0
        return false
      end
    end

    return true
  end

  # generate a list of prime numbers upto max
  def sieve_of_eratosthenes(max)
    array = 2.upto(max).to_a

    is_prime_array = []
    array.each_with_index do |i, index|
      is_prime_array[index] = true
    end

    array.each_with_index do |e, index|
      next if !is_prime_array[index]
      prime_number = e
      inner_index = index + 1
      
      while inner_index < array.size do
        if is_prime_array[inner_index]
          if array[inner_index] % prime_number == 0
            is_prime_array[inner_index] = false
          end
        end

        inner_index += 1
      end
    end

    result = []
    is_prime_array.each_with_index do |is_prime, index|
      result << array[index] if is_prime
    end

    result
  end
end