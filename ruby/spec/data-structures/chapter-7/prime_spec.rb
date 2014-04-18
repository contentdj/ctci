describe Prime do
  include Prime

  context "prime number" do
    it "#is_prime?" do
      expect(is_prime?(11)).to eq true
      expect(is_prime?(7)).to eq true
      expect(is_prime?(4)).to eq false
    end

    it "#sieve_of_eratosthenes" do
      expect(sieve_of_eratosthenes(11)).to eq [2, 3, 5, 7, 11]
      expect(sieve_of_eratosthenes(15)).to eq [2, 3, 5, 7, 11, 13]
      expect(sieve_of_eratosthenes(100)).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
    end
  end
end