import Foundation
import Quick
import Nimble

@testable import legalios

extension String {
    func replace(_ originalString:String, with newString:String) -> String {
        return self.replacingOccurrences(of: originalString, with: newString)
    }
}

@testable import legalios

class DecRoundingTest : QuickSpec {

    override func spec() {
        describe("DecRoundUp_ShouldReturn_RoundedDecimal") {
            let test_examples: [(title: String, testTarget: String, testResult: String)] = [
                ("test_pos_55_6", "5,5", "6"),
                ("test_pos_25_3", "2,5", "3"),
                ("test_pos_16_2", "1,6", "2"),
                ("test_pos_11_2", "1,1", "2"),
                ("test_pos_10_1", "1,0", "1"),
                ("test_neg_10_1", "-1,0", "-1"),
                ("test_neg_11_2", "-1,1", "-2"),
                ("test_neg_16_2", "-1,6", "-2"),
                ("test_neg_25_3", "-2,5", "-3"),
                ("test_neg_55_6", "-5,5", "-6"),
            ]
            test_examples.forEach { (title: String, testTarget: String, testResult: String) in
                describe("Rounding Value \(testTarget)") {
                    var decimalTarget = Decimal(string: testTarget.replace(",", with: "."))!
                    var decimalResult = Decimal(string: testResult.replace(",", with: "."))!

                    var decimalRounds = OperationsRound.decRoundUp(decimalTarget)

                    it("rounding value should equal \(testResult)") {
                        expect(decimalRounds).to(equal(decimalResult))
                    }
                }
            }
        }

        describe("DecRoundDown_ShouldReturn_RoundedDecimal") {
            let test_examples: [(title: String, testTarget: String, testResult: String)] = [
                ( "test_pos_55_5", "5,5", "5" ),
                ( "test_pos_25_2", "2,5", "2" ),
                ( "test_pos_16_1", "1,6", "1" ),
                ( "test_pos_11_1", "1,1", "1" ),
                ( "test_pos_10_1", "1,0", "1" ),
                ( "test_neg_10_1", "-1,0", "-1" ),
                ( "test_neg_11_1", "-1,1", "-1" ),
                ( "test_neg_16_1", "-1,6", "-1" ),
                ( "test_neg_25_2", "-2,5", "-2" ),
                ( "test_neg_55_5", "-5,5", "-5" ),
            ]

            test_examples.forEach { (title: String, testTarget: String, testResult: String) in
                describe("Rounding Value \(testTarget)") {
                    var decimalTarget = Decimal(string: testTarget.replace(",", with: "."))!
                    var decimalResult = Decimal(string: testResult.replace(",", with: "."))!

                    var decimalRounds = OperationsRound.decRoundDown(decimalTarget)

                    it("rounding value should equal \(testResult)") {
                        expect(decimalRounds).to(equal(decimalResult))
                    }
                }
            }
        }

        describe("DecRoundNorm_ShouldReturn_RoundedDecimal") {
            let test_examples: [(title: String, testTarget: String, testResult: String)] = [
                ( "test_pos_55_6", "5,5", "6" ),
                ( "test_pos_25_3", "2,5", "3" ),
                ( "test_pos_16_2", "1,6", "2" ),
                ( "test_pos_11_1", "1,1", "1" ),
                ( "test_pos_10_1", "1,0", "1" ),
                ( "test_neg_10_1", "-1,0", "-1" ),
                ( "test_neg_11_1", "-1,1", "-1" ),
                ( "test_neg_16_2", "-1,6", "-2" ),
                ( "test_neg_25_3", "-2,5", "-3" ),
                ( "test_neg_55_6", "-5,5", "-6" ),
            ]

            test_examples.forEach { (title: String, testTarget: String, testResult: String) in
                describe("Rounding Value \(testTarget)") {
                    var decimalTarget = Decimal(string: testTarget.replace(",", with: "."))!
                    var decimalResult = Decimal(string: testResult.replace(",", with: "."))!

                    var decimalRounds = OperationsRound.decRoundNorm(decimalTarget)

                    it("rounding value should equal \(testResult)") {
                        expect(decimalRounds).to(equal(decimalResult))
                    }
                }
            }
        }

        describe("DecNearRoundUp_ShouldReturn_RoundedDecimal") {
            let test_examples: [(title: String, testTarget: String, testResult: String)] = [
                ( "test_pos_550_600", "550", "600" ),
                ( "test_pos_250_300", "250", "300" ),
                ( "test_pos_160_200", "160", "200" ),
                ( "test_pos_110_200", "110", "200" ),
                ( "test_pos_100_100", "100", "100" ),
                ( "test_neg_100_100", "-100", "-100" ),
                ( "test_neg_110_200", "-110", "-200" ),
                ( "test_neg_160_200", "-160", "-200" ),
                ( "test_neg_250_300", "-250", "-300" ),
                ( "test_neg_550_600", "-550", "-600" ),
            ]

            test_examples.forEach { (title: String, testTarget: String, testResult: String) in
                describe("Rounding Value \(testTarget)") {
                    var decimalTarget = Decimal(string: testTarget.replace(",", with: "."))!
                    var decimalResult = Decimal(string: testResult.replace(",", with: "."))!

                    var decimalRounds = OperationsRound.decNearRoundUp(decimalTarget, nearest: 100)

                    it("rounding value should equal \(testResult)") {
                        expect(decimalRounds).to(equal(decimalResult))
                    }
                }
            }
        }

        describe("DecNearRoundDown_ShouldReturn_RoundedDecimal") {
            let test_examples: [(title: String, testTarget: String, testResult: String)] = [
                ( "test_pos_550_500", "550", "500" ),
                ( "test_pos_250_200", "250", "200" ),
                ( "test_pos_160_100", "160", "100" ),
                ( "test_pos_110_100", "110", "100" ),
                ( "test_pos_100_100", "100", "100" ),
                ( "test_neg_100_100", "-100", "-100" ),
                ( "test_neg_110_100", "-110", "-100" ),
                ( "test_neg_160_100", "-160", "-100" ),
                ( "test_neg_250_200", "-250", "-200" ),
                ( "test_neg_550_500", "-550", "-500" ),
            ]

            test_examples.forEach { (title: String, testTarget: String, testResult: String) in
                describe("Rounding Value \(testTarget)") {
                    var decimalTarget = Decimal(string: testTarget.replace(",", with: "."))!
                    var decimalResult = Decimal(string: testResult.replace(",", with: "."))!

                    var decimalRounds = OperationsRound.decNearRoundDown(decimalTarget, nearest: 100)

                    it("rounding value should equal \(testResult)") {
                        expect(decimalRounds).to(equal(decimalResult))
                    }
                }
            }
        }

        describe("DecRoundUp50_ShouldReturn_RoundedDecimal") {
            let test_examples: [(title: String, testTarget: String, testResult: String)] = [
                ( "test_pos_5125_550", "5,125", "5,50" ),
                ( "test_pos_2125_250", "2,125", "2,50" ),
                ( "test_pos_1126_150", "1,126", "1,50" ),
                ( "test_pos_1121_150", "1,121", "1,50" ),
                ( "test_pos_1120_150", "1,120", "1,50" ),
                ( "test_neg_1120_150", "-1,120", "-1,50" ),
                ( "test_neg_1121_150", "-1,121", "-1,50" ),
                ( "test_neg_1126_150", "-1,126", "-1,50" ),
                ( "test_neg_2125_250", "-2,125", "-2,50" ),
                ( "test_neg_5125_550", "-5,125", "-5,50" ),
                ( "test_pos_5375_550", "5,375", "5,50" ),
                ( "test_pos_2375_250", "2,375", "2,50" ),
                ( "test_pos_1376_150", "1,376", "1,50" ),
                ( "test_pos_1371_150", "1,371", "1,50" ),
                ( "test_pos_1370_150", "1,370", "1,50" ),
                ( "test_neg_1370_150", "-1,370", "-1,50" ),
                ( "test_neg_1371_150", "-1,371", "-1,50" ),
                ( "test_neg_1376_150", "-1,376", "-1,50" ),
                ( "test_neg_2375_250", "-2,375", "-2,50" ),
                ( "test_neg_5375_550", "-5,375", "-5,50" ),
                ( "test_pos_5625_600", "5,625", "6,00" ),
                ( "test_pos_2625_300", "2,625", "3,00" ),
                ( "test_pos_1626_200", "1,626", "2,00" ),
                ( "test_pos_1621_200", "1,621", "2,00" ),
                ( "test_pos_1620_200", "1,620", "2,00" ),
                ( "test_neg_1620_200", "-1,620", "-2,00" ),
                ( "test_neg_1621_200", "-1,621", "-2,00" ),
                ( "test_neg_1626_200", "-1,626", "-2,00" ),
                ( "test_neg_2625_300", "-2,625", "-3,00" ),
                ( "test_neg_5625_600", "-5,625", "-6,00" ),
                ( "test_pos_5875_600", "5,875", "6,00" ),
                ( "test_pos_2875_300", "2,875", "3,00" ),
                ( "test_pos_1876_200", "1,876", "2,00" ),
                ( "test_pos_1871_200", "1,871", "2,00" ),
                ( "test_pos_1870_200", "1,870", "2,00" ),
                ( "test_neg_1870_200", "-1,870", "-2,00" ),
                ( "test_neg_1871_200", "-1,871", "-2,00" ),
                ( "test_neg_1876_200", "-1,876", "-2,00" ),
                ( "test_neg_2875_300", "-2,875", "-3,00" ),
                ( "test_neg_5875_600", "-5,875", "-6,00" ),
                ( "test_pos_5550_600", "5,55", "6" ),
                ( "test_pos_2550_300", "2,55", "3" ),
                ( "test_pos_1560_200", "1,56", "2" ),
                ( "test_pos_1510_200", "1,51", "2" ),
                ( "test_pos_1500_150", "1,50", "1,50" ),
                ( "test_neg_1500_150", "-1,50", "-1,50" ),
                ( "test_neg_1510_200", "-1,51", "-2" ),
                ( "test_neg_1560_200", "-1,56", "-2" ),
                ( "test_neg_2550_300", "-2,55", "-3" ),
                ( "test_neg_5550_600", "-5,55", "-6" ),
                ( "test_pos_5050_550", "5,05", "5,50" ),
                ( "test_pos_2050_250", "2,05", "2,50" ),
                ( "test_pos_1060_150", "1,06", "1,50" ),
                ( "test_pos_1010_150", "1,01", "1,50" ),
                ( "test_pos_1000_100", "1,00", "1,00" ),
                ( "test_neg_1000_100", "-1,00", "-1,00" ),
                ( "test_neg_1010_150", "-1,01", "-1,50" ),
                ( "test_neg_1060_150", "-1,06", "-1,50" ),
                ( "test_neg_2050_250", "-2,05", "-2,50" ),
                ( "test_neg_5050_550", "-5,05", "-5,50" ),
            ]

            test_examples.forEach { (title: String, testTarget: String, testResult: String) in
                describe("Rounding Value \(testTarget)") {
                    var decimalTarget = Decimal(string: testTarget.replace(",", with: "."))!
                    var decimalResult = Decimal(string: testResult.replace(",", with: "."))!

                    var decimalRounds = OperationsRound.decRoundUp50(decimalTarget)

                    it("rounding value should equal \(testResult)") {
                        expect(decimalRounds).to(equal(decimalResult))
                    }
                }
            }
        }

        describe("DecRoundUp25_ShouldReturn_RoundedDecimal") {
            let test_examples: [(title: String, testTarget: String, testResult: String)] = [
                ( "test_pos_5125_525", "5,125", "5,25" ),
                ( "test_pos_2125_225", "2,125", "2,25" ),
                ( "test_pos_1126_125", "1,126", "1,25" ),
                ( "test_pos_1121_125", "1,121", "1,25" ),
                ( "test_pos_1120_125", "1,120", "1,25" ),
                ( "test_neg_1120_125", "-1,120", "-1,25" ),
                ( "test_neg_1121_125", "-1,121", "-1,25" ),
                ( "test_neg_1126_125", "-1,126", "-1,25" ),
                ( "test_neg_2125_225", "-2,125", "-2,25" ),
                ( "test_neg_5125_525", "-5,125", "-5,25" ),
                ( "test_pos_5375_550", "5,375", "5,50" ),
                ( "test_pos_2375_250", "2,375", "2,50" ),
                ( "test_pos_1376_150", "1,376", "1,50" ),
                ( "test_pos_1371_150", "1,371", "1,50" ),
                ( "test_pos_1370_150", "1,370", "1,50" ),
                ( "test_neg_1370_150", "-1,370", "-1,50" ),
                ( "test_neg_1371_150", "-1,371", "-1,50" ),
                ( "test_neg_1376_150", "-1,376", "-1,50" ),
                ( "test_neg_2375_250", "-2,375", "-2,50" ),
                ( "test_neg_5375_550", "-5,375", "-5,50" ),
                ( "test_pos_5625_575", "5,625", "5,75" ),
                ( "test_pos_2625_275", "2,625", "2,75" ),
                ( "test_pos_1626_175", "1,626", "1,75" ),
                ( "test_pos_1621_175", "1,621", "1,75" ),
                ( "test_pos_1620_175", "1,620", "1,75" ),
                ( "test_neg_1620_175", "-1,620", "-1,75" ),
                ( "test_neg_1621_175", "-1,621", "-1,75" ),
                ( "test_neg_1626_175", "-1,626", "-1,75" ),
                ( "test_neg_2625_275", "-2,625", "-2,75" ),
                ( "test_neg_5625_575", "-5,625", "-5,75" ),
                ( "test_pos_5875_600", "5,875", "6,00" ),
                ( "test_pos_2875_300", "2,875", "3,00" ),
                ( "test_pos_1876_200", "1,876", "2,00" ),
                ( "test_pos_1871_200", "1,871", "2,00" ),
                ( "test_pos_1870_200", "1,870", "2,00" ),
                ( "test_neg_1870_200", "-1,870", "-2,00" ),
                ( "test_neg_1871_200", "-1,871", "-2,00" ),
                ( "test_neg_1876_200", "-1,876", "-2,00" ),
                ( "test_neg_2875_300", "-2,875", "-3,00" ),
                ( "test_neg_5875_600", "-5,875", "-6,00" ),
                ( "test_pos_5255_550", "5,255", "5,50" ),
                ( "test_pos_2255_250", "2,255", "2,50" ),
                ( "test_pos_1256_150", "1,256", "1,50" ),
                ( "test_pos_1251_150", "1,251", "1,50" ),
                ( "test_pos_1250_125", "1,250", "1,25" ),
                ( "test_neg_1250_125", "-1,250", "-1,25" ),
                ( "test_neg_1251_150", "-1,251", "-1,50" ),
                ( "test_neg_1256_150", "-1,256", "-1,50" ),
                ( "test_neg_2255_250", "-2,255", "-2,50" ),
                ( "test_neg_5255_550", "-5,255", "-5,50" ),
                ( "test_pos_5555_575", "5,555", "5,75" ),
                ( "test_pos_2555_275", "2,555", "2,75" ),
                ( "test_pos_1556_175", "1,556", "1,75" ),
                ( "test_pos_1551_175", "1,551", "1,75" ),
                ( "test_pos_1500_150", "1,500", "1,50" ),
                ( "test_neg_1500_150", "-1,500", "-1,50" ),
                ( "test_neg_1551_175", "-1,551", "-1,75" ),
                ( "test_neg_1556_175", "-1,556", "-1,75" ),
                ( "test_neg_2555_275", "-2,555", "-2,75" ),
                ( "test_neg_5555_575", "-5,555", "-5,75" ),
                ( "test_pos_5755_600", "5,755", "6,00" ),
                ( "test_pos_2755_300", "2,755", "3,00" ),
                ( "test_pos_1756_200", "1,756", "2,00" ),
                ( "test_pos_1751_200", "1,751", "2,00" ),
                ( "test_pos_1750_175", "1,750", "1,75" ),
                ( "test_neg_1750_175", "-1,750", "-1,75" ),
                ( "test_neg_1751_200", "-1,751", "-2,00" ),
                ( "test_neg_1756_200", "-1,756", "-2,00" ),
                ( "test_neg_2755_300", "-2,755", "-3,00" ),
                ( "test_neg_5755_600", "-5,755", "-6,00" ),
                ( "test_pos_5050_525", "5,050", "5,25" ),
                ( "test_pos_2050_225", "2,050", "2,25" ),
                ( "test_pos_1060_125", "1,060", "1,25" ),
                ( "test_pos_1010_125", "1,010", "1,25" ),
                ( "test_pos_1000_100", "1,000", "1,00" ),
                ( "test_neg_1000_100", "-1,000", "-1,00" ),
                ( "test_neg_1010_125", "-1,010", "-1,25" ),
                ( "test_neg_1060_125", "-1,060", "-1,25" ),
                ( "test_neg_2050_225", "-2,050", "-2,25" ),
                ( "test_neg_5050_525", "-5,050", "-5,25" ),
            ]

            test_examples.forEach { (title: String, testTarget: String, testResult: String) in
                describe("Rounding Value \(testTarget)") {
                    var decimalTarget = Decimal(string: testTarget.replace(",", with: "."))!
                    var decimalResult = Decimal(string: testResult.replace(",", with: "."))!

                    var decimalRounds = OperationsRound.decRoundUp25(decimalTarget)

                    it("rounding value should equal \(testResult)") {
                        expect(decimalRounds).to(equal(decimalResult))
                    }
                }
            }
        }

        describe("DecRoundUp01_ShouldReturn_RoundedDecimal") {
            let test_examples: [(title: String, testTarget: String, testResult: String)] = [
                ( "test_pos_5555_556", "5,555", "5,56" ),
                ( "test_pos_2555_256", "2,555", "2,56" ),
                ( "test_pos_1556_156", "1,556", "1,56" ),
                ( "test_pos_1551_156", "1,551", "1,56" ),
                ( "test_pos_1550_155", "1,550", "1,55" ),
                ( "test_neg_1550_155", "-1,550", "-1,55" ),
                ( "test_neg_1551_156", "-1,551", "-1,56" ),
                ( "test_neg_1556_156", "-1,556", "-1,56" ),
                ( "test_neg_2555_256", "-2,555", "-2,56" ),
                ( "test_neg_5555_556", "-5,555", "-5,56" ),
                ( "test_pos_5005_501", "5,005", "5,01" ),
                ( "test_pos_2005_201", "2,005", "2,01" ),
                ( "test_pos_1006_101", "1,006", "1,01" ),
                ( "test_pos_1001_101", "1,001", "1,01" ),
                ( "test_pos_1000_100", "1,000", "1,00" ),
                ( "test_neg_1000_100", "-1,000", "-1,00" ),
                ( "test_neg_1001_101", "-1,001", "-1,01" ),
                ( "test_neg_1006_101", "-1,006", "-1,01" ),
                ( "test_neg_2005_201", "-2,005", "-2,01" ),
                ( "test_neg_5005_501", "-5,005", "-5,01" ),
            ]

            test_examples.forEach { (title: String, testTarget: String, testResult: String) in
                describe("Rounding Value \(testTarget)") {
                    var decimalTarget = Decimal(string: testTarget.replace(",", with: "."))!
                    var decimalResult = Decimal(string: testResult.replace(",", with: "."))!

                    var decimalRounds = OperationsRound.decRoundUp01(decimalTarget)

                    it("rounding value should equal \(testResult)") {
                        expect(decimalRounds).to(equal(decimalResult))
                    }
                }
            }
        }

        describe("DecRoundDown50_ShouldReturn_RoundedDecimal") {
            let test_examples: [(title: String, testTarget: String, testResult: String)] = [
                ( "test_pos_5125_500", "5,125", "5,00" ),
                ( "test_pos_2125_200", "2,125", "2,00" ),
                ( "test_pos_1126_100", "1,126", "1,00" ),
                ( "test_pos_1121_100", "1,121", "1,00" ),
                ( "test_pos_1120_100", "1,120", "1,00" ),
                ( "test_neg_1120_100", "-1,120", "-1,00" ),
                ( "test_neg_1121_100", "-1,121", "-1,00" ),
                ( "test_neg_1126_100", "-1,126", "-1,00" ),
                ( "test_neg_2125_200", "-2,125", "-2,00" ),
                ( "test_neg_5125_500", "-5,125", "-5,00" ),
                ( "test_pos_5375_500", "5,375", "5,00" ),
                ( "test_pos_2375_200", "2,375", "2,00" ),
                ( "test_pos_1376_100", "1,376", "1,00" ),
                ( "test_pos_1371_100", "1,371", "1,00" ),
                ( "test_pos_1370_100", "1,370", "1,00" ),
                ( "test_neg_1370_100", "-1,370", "-1,00" ),
                ( "test_neg_1371_100", "-1,371", "-1,00" ),
                ( "test_neg_1376_100", "-1,376", "-1,00" ),
                ( "test_neg_2375_200", "-2,375", "-2,00" ),
                ( "test_neg_5375_500", "-5,375", "-5,00" ),
                ( "test_pos_5625_550", "5,625", "5,50" ),
                ( "test_pos_2625_250", "2,625", "2,50" ),
                ( "test_pos_1626_150", "1,626", "1,50" ),
                ( "test_pos_1621_150", "1,621", "1,50" ),
                ( "test_pos_1620_150", "1,620", "1,50" ),
                ( "test_neg_1620_150", "-1,620", "-1,50" ),
                ( "test_neg_1621_150", "-1,621", "-1,50" ),
                ( "test_neg_1626_150", "-1,626", "-1,50" ),
                ( "test_neg_2625_250", "-2,625", "-2,50" ),
                ( "test_neg_5625_550", "-5,625", "-5,50" ),
                ( "test_pos_5875_550", "5,875", "5,50" ),
                ( "test_pos_2875_250", "2,875", "2,50" ),
                ( "test_pos_1876_150", "1,876", "1,50" ),
                ( "test_pos_1871_150", "1,871", "1,50" ),
                ( "test_pos_1870_150", "1,870", "1,50" ),
                ( "test_neg_1870_150", "-1,870", "-1,50" ),
                ( "test_neg_1871_150", "-1,871", "-1,50" ),
                ( "test_neg_1876_150", "-1,876", "-1,50" ),
                ( "test_neg_2875_250", "-2,875", "-2,50" ),
                ( "test_neg_5875_550", "-5,875", "-5,50" ),
                ( "test_pos_5550_550", "5,55", "5,50" ),
                ( "test_pos_2550_250", "2,55", "2,50" ),
                ( "test_pos_1560_150", "1,56", "1,50" ),
                ( "test_pos_1510_150", "1,51", "1,50" ),
                ( "test_pos_1500_150", "1,50", "1,50" ),
                ( "test_neg_1500_150", "-1,50", "-1,50" ),
                ( "test_neg_1510_150", "-1,51", "-1,50" ),
                ( "test_neg_1560_150", "-1,56", "-1,50" ),
                ( "test_neg_2550_250", "-2,55", "-2,50" ),
                ( "test_neg_5550_550", "-5,55", "-5,50" ),
                ( "test_pos_5050_500", "5,05", "5,00" ),
                ( "test_pos_2050_200", "2,05", "2,00" ),
                ( "test_pos_1060_100", "1,06", "1,00" ),
                ( "test_pos_1010_100", "1,01", "1,00" ),
                ( "test_pos_1000_100", "1,00", "1,00" ),
                ( "test_neg_1000_100", "-1,00", "-1,00" ),
                ( "test_neg_1010_100", "-1,01", "-1,00" ),
                ( "test_neg_1060_100", "-1,06", "-1,00" ),
                ( "test_neg_2050_200", "-2,05", "-2,00" ),
                ( "test_neg_5050_500", "-5,05", "-5,00" ),
            ]

            test_examples.forEach { (title: String, testTarget: String, testResult: String) in
                describe("Rounding Value \(testTarget)") {
                    var decimalTarget = Decimal(string: testTarget.replace(",", with: "."))!
                    var decimalResult = Decimal(string: testResult.replace(",", with: "."))!

                    var decimalRounds = OperationsRound.decRoundDown50(decimalTarget)

                    it("rounding value should equal \(testResult)") {
                        expect(decimalRounds).to(equal(decimalResult))
                    }
                }
            }
        }

        describe("DecRoundDown25_ShouldReturn_RoundedDecimal") {
            let test_examples: [(title: String, testTarget: String, testResult: String)] = [
                ( "test_pos_5125_500", "5,125", "5,00" ),
                ( "test_pos_2125_200", "2,125", "2,00" ),
                ( "test_pos_1126_100", "1,126", "1,00" ),
                ( "test_pos_1121_100", "1,121", "1,00" ),
                ( "test_pos_1120_100", "1,120", "1,00" ),
                ( "test_neg_1120_100", "-1,120", "-1,00" ),
                ( "test_neg_1121_100", "-1,121", "-1,00" ),
                ( "test_neg_1126_100", "-1,126", "-1,00" ),
                ( "test_neg_2125_200", "-2,125", "-2,00" ),
                ( "test_neg_5125_500", "-5,125", "-5,00" ),
                ( "test_pos_5375_525", "5,375", "5,25" ),
                ( "test_pos_2375_225", "2,375", "2,25" ),
                ( "test_pos_1376_125", "1,376", "1,25" ),
                ( "test_pos_1371_125", "1,371", "1,25" ),
                ( "test_pos_1370_125", "1,370", "1,25" ),
                ( "test_neg_1370_125", "-1,370", "-1,25" ),
                ( "test_neg_1371_125", "-1,371", "-1,25" ),
                ( "test_neg_1376_125", "-1,376", "-1,25" ),
                ( "test_neg_2375_225", "-2,375", "-2,25" ),
                ( "test_neg_5375_525", "-5,375", "-5,25" ),
                ( "test_pos_5625_550", "5,625", "5,50" ),
                ( "test_pos_2625_250", "2,625", "2,50" ),
                ( "test_pos_1626_150", "1,626", "1,50" ),
                ( "test_pos_1621_150", "1,621", "1,50" ),
                ( "test_pos_1620_150", "1,620", "1,50" ),
                ( "test_neg_1620_150", "-1,620", "-1,50" ),
                ( "test_neg_1621_150", "-1,621", "-1,50" ),
                ( "test_neg_1626_150", "-1,626", "-1,50" ),
                ( "test_neg_2625_250", "-2,625", "-2,50" ),
                ( "test_neg_5625_550", "-5,625", "-5,50" ),
                ( "test_pos_5875_575", "5,875", "5,75" ),
                ( "test_pos_2875_275", "2,875", "2,75" ),
                ( "test_pos_1876_175", "1,876", "1,75" ),
                ( "test_pos_1871_175", "1,871", "1,75" ),
                ( "test_pos_1870_175", "1,870", "1,75" ),
                ( "test_neg_1870_175", "-1,870", "-1,75" ),
                ( "test_neg_1871_175", "-1,871", "-1,75" ),
                ( "test_neg_1876_175", "-1,876", "-1,75" ),
                ( "test_neg_2875_275", "-2,875", "-2,75" ),
                ( "test_neg_5875_575", "-5,875", "-5,75" ),
                ( "test_pos_5255_525", "5,255", "5,25" ),
                ( "test_pos_2255_225", "2,255", "2,25" ),
                ( "test_pos_1256_125", "1,256", "1,25" ),
                ( "test_pos_1251_125", "1,251", "1,25" ),
                ( "test_pos_1250_125", "1,250", "1,25" ),
                ( "test_neg_1250_125", "-1,250", "-1,25" ),
                ( "test_neg_1251_125", "-1,251", "-1,25" ),
                ( "test_neg_1256_125", "-1,256", "-1,25" ),
                ( "test_neg_2255_225", "-2,255", "-2,25" ),
                ( "test_neg_5255_525", "-5,255", "-5,25" ),
                ( "test_pos_5555_550", "5,555", "5,50" ),
                ( "test_pos_2555_250", "2,555", "2,50" ),
                ( "test_pos_1556_150", "1,556", "1,50" ),
                ( "test_pos_1551_150", "1,551", "1,50" ),
                ( "test_pos_1500_150", "1,500", "1,50" ),
                ( "test_neg_1500_150", "-1,500", "-1,50" ),
                ( "test_neg_1551_150", "-1,551", "-1,50" ),
                ( "test_neg_1556_150", "-1,556", "-1,50" ),
                ( "test_neg_2555_250", "-2,555", "-2,50" ),
                ( "test_neg_5555_550", "-5,555", "-5,50" ),
                ( "test_pos_5755_575", "5,755", "5,75" ),
                ( "test_pos_2755_275", "2,755", "2,75" ),
                ( "test_pos_1756_175", "1,756", "1,75" ),
                ( "test_pos_1751_175", "1,751", "1,75" ),
                ( "test_pos_1750_175", "1,750", "1,75" ),
                ( "test_neg_1750_175", "-1,750", "-1,75" ),
                ( "test_neg_1751_175", "-1,751", "-1,75" ),
                ( "test_neg_1756_175", "-1,756", "-1,75" ),
                ( "test_neg_2755_275", "-2,755", "-2,75" ),
                ( "test_neg_5755_575", "-5,755", "-5,75" ),
                ( "test_pos_5050_500", "5,050", "5,00" ),
                ( "test_pos_2050_200", "2,050", "2,00" ),
                ( "test_pos_1060_100", "1,060", "1,00" ),
                ( "test_pos_1010_100", "1,010", "1,00" ),
                ( "test_pos_1000_100", "1,000", "1,00" ),
                ( "test_neg_1000_100", "-1,000", "-1,00" ),
                ( "test_neg_1010_100", "-1,010", "-1,00" ),
                ( "test_neg_1060_100", "-1,060", "-1,00" ),
                ( "test_neg_2050_200", "-2,050", "-2,00" ),
                ( "test_neg_5050_500", "-5,050", "-5,00" ),
            ]

            test_examples.forEach { (title: String, testTarget: String, testResult: String) in
                describe("Rounding Value \(testTarget)") {
                    var decimalTarget = Decimal(string: testTarget.replace(",", with: "."))!
                    var decimalResult = Decimal(string: testResult.replace(",", with: "."))!

                    var decimalRounds = OperationsRound.decRoundDown25(decimalTarget)

                    it("rounding value should equal \(testResult)") {
                        expect(decimalRounds).to(equal(decimalResult))
                    }
                }
            }
        }

        describe("DecRoundDown01_ShouldReturn_RoundedDecimal") {
            let test_examples: [(title: String, testTarget: String, testResult: String)] = [
                ( "test_pos_5555_555", "5,555", "5,55" ),
                ( "test_pos_2555_255", "2,555", "2,55" ),
                ( "test_pos_1556_155", "1,556", "1,55" ),
                ( "test_pos_1551_155", "1,551", "1,55" ),
                ( "test_pos_1550_155", "1,550", "1,55" ),
                ( "test_neg_1550_155", "-1,550", "-1,55" ),
                ( "test_neg_1551_155", "-1,551", "-1,55" ),
                ( "test_neg_1556_155", "-1,556", "-1,55" ),
                ( "test_neg_2555_255", "-2,555", "-2,55" ),
                ( "test_neg_5555_555", "-5,555", "-5,55" ),
                ( "test_pos_5005_500", "5,005", "5,00" ),
                ( "test_pos_2005_200", "2,005", "2,00" ),
                ( "test_pos_1006_100", "1,006", "1,00" ),
                ( "test_pos_1001_100", "1,001", "1,00" ),
                ( "test_pos_1000_100", "1,000", "1,00" ),
                ( "test_neg_1000_100", "-1,000", "-1,00" ),
                ( "test_neg_1001_100", "-1,001", "-1,00" ),
                ( "test_neg_1006_100", "-1,006", "-1,00" ),
                ( "test_neg_2005_200", "-2,005", "-2,00" ),
                ( "test_neg_5005_500", "-5,005", "-5,00" ),
            ]

            test_examples.forEach { (title: String, testTarget: String, testResult: String) in
                describe("Rounding Value \(testTarget)") {
                    var decimalTarget = Decimal(string: testTarget.replace(",", with: "."))!
                    var decimalResult = Decimal(string: testResult.replace(",", with: "."))!

                    var decimalRounds = OperationsRound.decRoundDown01(decimalTarget)

                    it("rounding value should equal \(testResult)") {
                        expect(decimalRounds).to(equal(decimalResult))
                    }
                }
            }
        }

        describe("DecRoundNorm50_ShouldReturn_RoundedDecimal") {
            let test_examples: [(title: String, testTarget: String, testResult: String)] = [
                ( "test_pos_5125_500", "5,125", "5,00" ),
                ( "test_pos_2125_200", "2,125", "2,00" ),
                ( "test_pos_1126_100", "1,126", "1,00" ),
                ( "test_pos_1121_100", "1,121", "1,00" ),
                ( "test_pos_1120_100", "1,120", "1,00" ),
                ( "test_neg_1120_100", "-1,120", "-1,00" ),
                ( "test_neg_1121_100", "-1,121", "-1,00" ),
                ( "test_neg_1126_100", "-1,126", "-1,00" ),
                ( "test_neg_2125_200", "-2,125", "-2,00" ),
                ( "test_neg_5125_500", "-5,125", "-5,00" ),
                ( "test_pos_5375_550", "5,375", "5,50" ),
                ( "test_pos_2375_250", "2,375", "2,50" ),
                ( "test_pos_1376_150", "1,376", "1,50" ),
                ( "test_pos_1371_150", "1,371", "1,50" ),
                ( "test_pos_1370_150", "1,370", "1,50" ),
                ( "test_neg_1370_150", "-1,370", "-1,50" ),
                ( "test_neg_1371_150", "-1,371", "-1,50" ),
                ( "test_neg_1376_150", "-1,376", "-1,50" ),
                ( "test_neg_2375_250", "-2,375", "-2,50" ),
                ( "test_neg_5375_550", "-5,375", "-5,50" ),
                ( "test_pos_5625_550", "5,625", "5,50" ),
                ( "test_pos_2625_250", "2,625", "2,50" ),
                ( "test_pos_1626_150", "1,626", "1,50" ),
                ( "test_pos_1621_150", "1,621", "1,50" ),
                ( "test_pos_1620_150", "1,620", "1,50" ),
                ( "test_neg_1620_150", "-1,620", "-1,50" ),
                ( "test_neg_1621_150", "-1,621", "-1,50" ),
                ( "test_neg_1626_150", "-1,626", "-1,50" ),
                ( "test_neg_2625_250", "-2,625", "-2,50" ),
                ( "test_neg_5625_550", "-5,625", "-5,50" ),
                ( "test_pos_5875_600", "5,875", "6,00" ),
                ( "test_pos_2875_300", "2,875", "3,00" ),
                ( "test_pos_1876_200", "1,876", "2,00" ),
                ( "test_pos_1871_200", "1,871", "2,00" ),
                ( "test_pos_1870_200", "1,870", "2,00" ),
                ( "test_neg_1870_200", "-1,870", "-2,00" ),
                ( "test_neg_1871_200", "-1,871", "-2,00" ),
                ( "test_neg_1876_200", "-1,876", "-2,00" ),
                ( "test_neg_2875_300", "-2,875", "-3,00" ),
                ( "test_neg_5875_600", "-5,875", "-6,00" ),
                ( "test_pos_5550_550", "5,55", "5,50" ),
                ( "test_pos_2550_250", "2,55", "2,50" ),
                ( "test_pos_1560_150", "1,56", "1,50" ),
                ( "test_pos_1510_150", "1,51", "1,50" ),
                ( "test_pos_1500_150", "1,50", "1,50" ),
                ( "test_neg_1500_150", "-1,50", "-1,50" ),
                ( "test_neg_1510_150", "-1,51", "-1,50" ),
                ( "test_neg_1560_150", "-1,56", "-1,50" ),
                ( "test_neg_2550_250", "-2,55", "-2,50" ),
                ( "test_neg_5550_550", "-5,55", "-5,50" ),
                ( "test_pos_5050_500", "5,05", "5,00" ),
                ( "test_pos_2050_200", "2,05", "2,00" ),
                ( "test_pos_1060_100", "1,06", "1,00" ),
                ( "test_pos_1010_100", "1,01", "1,00" ),
                ( "test_pos_1000_100", "1,00", "1,00" ),
                ( "test_neg_1000_100", "-1,00", "-1,00" ),
                ( "test_neg_1010_100", "-1,01", "-1,00" ),
                ( "test_neg_1060_100", "-1,06", "-1,00" ),
                ( "test_neg_2050_200", "-2,05", "-2,00" ),
                ( "test_neg_5050_500", "-5,05", "-5,00" ),
            ]

            test_examples.forEach { (title: String, testTarget: String, testResult: String) in
                describe("Rounding Value \(testTarget)") {
                    var decimalTarget = Decimal(string: testTarget.replace(",", with: "."))!
                    var decimalResult = Decimal(string: testResult.replace(",", with: "."))!

                    var decimalRounds = OperationsRound.decRoundNorm50(decimalTarget)

                    it("rounding value should equal \(testResult)") {
                        expect(decimalRounds).to(equal(decimalResult))
                    }
                }
            }
        }

        describe("DecRoundNorm25_ShouldReturn_RoundedDecimal") {
            let test_examples: [(title: String, testTarget: String, testResult: String)] = [
                ( "test_pos_5125_525", "5,125", "5,25" ),
                ( "test_pos_2125_225", "2,125", "2,25" ),
                ( "test_pos_1126_125", "1,126", "1,25" ),
                ( "test_pos_1121_100", "1,121", "1,00" ),
                ( "test_pos_1120_100", "1,120", "1,00" ),
                ( "test_neg_1120_100", "-1,120", "-1,00" ),
                ( "test_neg_1121_100", "-1,121", "-1,00" ),
                ( "test_neg_1126_125", "-1,126", "-1,25" ),
                ( "test_neg_2125_225", "-2,125", "-2,25" ),
                ( "test_neg_5125_525", "-5,125", "-5,25" ),
                ( "test_pos_5375_550", "5,375", "5,50" ),
                ( "test_pos_2375_250", "2,375", "2,50" ),
                ( "test_pos_1376_150", "1,376", "1,50" ),
                ( "test_pos_1371_125", "1,371", "1,25" ),
                ( "test_pos_1370_125", "1,370", "1,25" ),
                ( "test_neg_1370_125", "-1,370", "-1,25" ),
                ( "test_neg_1371_125", "-1,371", "-1,25" ),
                ( "test_neg_1376_150", "-1,376", "-1,50" ),
                ( "test_neg_2375_250", "-2,375", "-2,50" ),
                ( "test_neg_5375_550", "-5,375", "-5,50" ),
                ( "test_pos_5625_575", "5,625", "5,75" ),
                ( "test_pos_2625_275", "2,625", "2,75" ),
                ( "test_pos_1626_175", "1,626", "1,75" ),
                ( "test_pos_1621_150", "1,621", "1,50" ),
                ( "test_pos_1620_150", "1,620", "1,50" ),
                ( "test_neg_1620_150", "-1,620", "-1,50" ),
                ( "test_neg_1621_150", "-1,621", "-1,50" ),
                ( "test_neg_1626_175", "-1,626", "-1,75" ),
                ( "test_neg_2625_275", "-2,625", "-2,75" ),
                ( "test_neg_5625_575", "-5,625", "-5,75" ),
                ( "test_pos_5875_600", "5,875", "6,00" ),
                ( "test_pos_2875_300", "2,875", "3,00" ),
                ( "test_pos_1876_200", "1,876", "2,00" ),
                ( "test_pos_1871_175", "1,871", "1,75" ),
                ( "test_pos_1870_175", "1,870", "1,75" ),
                ( "test_neg_1870_175", "-1,870", "-1,75" ),
                ( "test_neg_1871_175", "-1,871", "-1,75" ),
                ( "test_neg_1876_200", "-1,876", "-2,00" ),
                ( "test_neg_2875_300", "-2,875", "-3,00" ),
                ( "test_neg_5875_600", "-5,875", "-6,00" ),
                ( "test_pos_5255_525", "5,255", "5,25" ),
                ( "test_pos_2255_225", "2,255", "2,25" ),
                ( "test_pos_1256_125", "1,256", "1,25" ),
                ( "test_pos_1251_125", "1,251", "1,25" ),
                ( "test_pos_1250_125", "1,250", "1,25" ),
                ( "test_neg_1250_125", "-1,250", "-1,25" ),
                ( "test_neg_1251_125", "-1,251", "-1,25" ),
                ( "test_neg_1256_125", "-1,256", "-1,25" ),
                ( "test_neg_2255_225", "-2,255", "-2,25" ),
                ( "test_neg_5255_525", "-5,255", "-5,25" ),
                ( "test_pos_5555_550", "5,555", "5,50" ),
                ( "test_pos_2555_250", "2,555", "2,50" ),
                ( "test_pos_1556_150", "1,556", "1,50" ),
                ( "test_pos_1551_150", "1,551", "1,50" ),
                ( "test_pos_1500_150", "1,500", "1,50" ),
                ( "test_neg_1500_150", "-1,500", "-1,50" ),
                ( "test_neg_1551_150", "-1,551", "-1,50" ),
                ( "test_neg_1556_150", "-1,556", "-1,50" ),
                ( "test_neg_2555_250", "-2,555", "-2,50" ),
                ( "test_neg_5555_550", "-5,555", "-5,50" ),
                ( "test_pos_5755_575", "5,755", "5,75" ),
                ( "test_pos_2755_275", "2,755", "2,75" ),
                ( "test_pos_1756_175", "1,756", "1,75" ),
                ( "test_pos_1751_175", "1,751", "1,75" ),
                ( "test_pos_1750_175", "1,750", "1,75" ),
                ( "test_neg_1750_175", "-1,750", "-1,75" ),
                ( "test_neg_1751_175", "-1,751", "-1,75" ),
                ( "test_neg_1756_175", "-1,756", "-1,75" ),
                ( "test_neg_2755_275", "-2,755", "-2,75" ),
                ( "test_neg_5755_575", "-5,755", "-5,75" ),
                ( "test_pos_5050_500", "5,050", "5,00" ),
                ( "test_pos_2050_200", "2,050", "2,00" ),
                ( "test_pos_1060_100", "1,060", "1,00" ),
                ( "test_pos_1010_100", "1,010", "1,00" ),
                ( "test_pos_1000_100", "1,000", "1,00" ),
                ( "test_neg_1000_100", "-1,000", "-1,00" ),
                ( "test_neg_1010_100", "-1,010", "-1,00" ),
                ( "test_neg_1060_100", "-1,060", "-1,00" ),
                ( "test_neg_2050_200", "-2,050", "-2,00" ),
                ( "test_neg_5050_500", "-5,050", "-5,00" ),
            ]

            test_examples.forEach { (title: String, testTarget: String, testResult: String) in
                describe("Rounding Value \(testTarget)") {
                    var decimalTarget = Decimal(string: testTarget.replace(",", with: "."))!
                    var decimalResult = Decimal(string: testResult.replace(",", with: "."))!

                    var decimalRounds = OperationsRound.decRoundNorm25(decimalTarget)

                    it("rounding value should equal \(testResult)") {
                        expect(decimalRounds).to(equal(decimalResult))
                    }
                }
            }
        }

        describe("DecRoundNorm01_ShouldReturn_RoundedDecimal") {
            let test_examples: [(title: String, testTarget: String, testResult: String)] = [
                ( "test_pos_5555_556", "5,555", "5,56" ),
                ( "test_pos_2555_256", "2,555", "2,56" ),
                ( "test_pos_1556_156", "1,556", "1,56" ),
                ( "test_pos_1551_155", "1,551", "1,55" ),
                ( "test_pos_1550_155", "1,550", "1,55" ),
                ( "test_neg_1550_155", "-1,550", "-1,55" ),
                ( "test_neg_1551_155", "-1,551", "-1,55" ),
                ( "test_neg_1556_156", "-1,556", "-1,56" ),
                ( "test_neg_2555_256", "-2,555", "-2,56" ),
                ( "test_neg_5555_556", "-5,555", "-5,56" ),
                ( "test_pos_5005_501", "5,005", "5,01" ),
                ( "test_pos_2005_201", "2,005", "2,01" ),
                ( "test_pos_1006_101", "1,006", "1,01" ),
                ( "test_pos_1001_100", "1,001", "1,00" ),
                ( "test_pos_1000_100", "1,000", "1,00" ),
                ( "test_neg_1000_100", "-1,000", "-1,00" ),
                ( "test_neg_1001_100", "-1,001", "-1,00" ),
                ( "test_neg_1006_101", "-1,006", "-1,01" ),
                ( "test_neg_2005_201", "-2,005", "-2,01" ),
                ( "test_neg_5005_501", "-5,005", "-5,01" ),
            ]

            test_examples.forEach { (title: String, testTarget: String, testResult: String) in
                describe("Rounding Value \(testTarget)") {
                    var decimalTarget = Decimal(string: testTarget.replace(",", with: "."))!
                    var decimalResult = Decimal(string: testResult.replace(",", with: "."))!

                    var decimalRounds = OperationsRound.decRoundNorm01(decimalTarget)

                    it("rounding value should equal \(testResult)") {
                        expect(decimalRounds).to(equal(decimalResult))
                    }
                }
            }
        }
    }
}
