import Quick
import Nimble
import PrimeFactors

class PrimeFactorsBrainSpec: QuickSpec {
    override func spec() {
        
        describe("#factors") {
            
            it("returns an empty array if it is given 0") {
                expect(PrimeFactorsBrain.factors(0)).to(equal([]))
            }
            
            it("returns an empty array if it is given 1") {
                expect(PrimeFactorsBrain.factors(1)).to(equal([]))
            }
            
            it("returns the prime factors of 2") {
                expect(PrimeFactorsBrain.factors(2)).to(equal([2]))
            }
            
            it("returns the prime factors of 3") {
                expect(PrimeFactorsBrain.factors(3)).to(equal([3]))
            }
            
            it("returns the prime factors of 4") {
                expect(PrimeFactorsBrain.factors(4)).to(equal([2,2]))
            }
            
            it("returns the prime factors of 5") {
                expect(PrimeFactorsBrain.factors(5)).to(equal([5]))
            }
            
            it("returns the prime factors of 6") {
                expect(PrimeFactorsBrain.factors(6)).to(equal([2,3]))
            }
            
            it("returns the prime factors of 8") {
                expect(PrimeFactorsBrain.factors(8)).to(equal([2,2,2]))
            }
            
            it("returns the prime factors of 12") {
                expect(PrimeFactorsBrain.factors(12)).to(equal([2,2,3]))
            }
            
            it("returns the prime factors of 1246") {
                expect(PrimeFactorsBrain.factors(1246)).to(equal([2,7,89]))
            }
            
            it("returns the prime factors of 60423143424") {
                expect(PrimeFactorsBrain.factors(60423143424)).to(equal([2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,7,7,7,7]))
            }
        
        }
    }
}
