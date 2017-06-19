require "spec_helper"

RSpec.describe PrimeNumber do
  it "checks that number is a prime" do
    expect(PrimeNumber.prime?(1)).to be true
    expect(PrimeNumber.prime?(5)).to be true
    expect(PrimeNumber.prime?(6)).not_to be true
  end

  it "returns first n primes" do
  	expect(PrimeNumber.get(1)).to eq [1]
  	expect(PrimeNumber.get(5)).to eq [1, 2, 3, 5, 7] 
  	expect(PrimeNumber.get(10)).to eq [1, 2, 3, 5, 7, 11, 13, 17, 19, 23]
  end

end
