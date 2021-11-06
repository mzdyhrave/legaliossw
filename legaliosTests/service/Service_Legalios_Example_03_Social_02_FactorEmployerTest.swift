﻿//
// Created by Ladislav Lisy on 30.06.2021.
//

import Foundation
import Quick
import Nimble

@testable import legalios

class Service_Legalios_Example_03_Social_02_FactorEmployerTest: QuickSpec {
    override func spec() {
        let test_examples: [(title: String, tests: [(title: String, year: Int16, month: Int16, expYear: Int16, expMonth: Int16, expected: Double)])] = [
            ("2011", [
                ( "2011-1", 2011, 1, 2011, 1, 25.00 ),
                ( "2011-2", 2011, 2, 2011, 2, 25.00 ),
                ( "2011-3", 2011, 3, 2011, 3, 25.00 ),
                ( "2011-4", 2011, 4, 2011, 4, 25.00 ),
                ( "2011-5", 2011, 5, 2011, 5, 25.00 ),
                ( "2011-6", 2011, 6, 2011, 6, 25.00 ),
                ( "2011-7", 2011, 7, 2011, 7, 25.00 ),
                ( "2011-8", 2011, 8, 2011, 8, 25.00 ),
                ( "2011-9", 2011, 9, 2011, 9, 25.00 ),
                ( "2011-10", 2011, 10, 2011, 10, 25.00 ),
                ( "2011-11", 2011, 11, 2011, 11, 25.00 ),
                ( "2011-12", 2011, 12, 2011, 12, 25.00 ),
            ]),
            ("2012", [
                ( "2012-1", 2012, 1, 2012, 1, 25.00 ),
                ( "2012-2", 2012, 2, 2012, 2, 25.00 ),
                ( "2012-3", 2012, 3, 2012, 3, 25.00 ),
                ( "2012-4", 2012, 4, 2012, 4, 25.00 ),
                ( "2012-5", 2012, 5, 2012, 5, 25.00 ),
                ( "2012-6", 2012, 6, 2012, 6, 25.00 ),
                ( "2012-7", 2012, 7, 2012, 7, 25.00 ),
                ( "2012-8", 2012, 8, 2012, 8, 25.00 ),
                ( "2012-9", 2012, 9, 2012, 9, 25.00 ),
                ( "2012-10", 2012, 10, 2012, 10, 25.00 ),
                ( "2012-11", 2012, 11, 2012, 11, 25.00 ),
                ( "2012-12", 2012, 12, 2012, 12, 25.00 ),
            ]),
            ("2013", [
                ( "2013-1", 2013, 1, 2013, 1, 25.00 ),
                ( "2013-2", 2013, 2, 2013, 2, 25.00 ),
                ( "2013-3", 2013, 3, 2013, 3, 25.00 ),
                ( "2013-4", 2013, 4, 2013, 4, 25.00 ),
                ( "2013-5", 2013, 5, 2013, 5, 25.00 ),
                ( "2013-6", 2013, 6, 2013, 6, 25.00 ),
                ( "2013-7", 2013, 7, 2013, 7, 25.00 ),
                ( "2013-8", 2013, 8, 2013, 8, 25.00 ),
                ( "2013-9", 2013, 9, 2013, 9, 25.00 ),
                ( "2013-10", 2013, 10, 2013, 10, 25.00 ),
                ( "2013-11", 2013, 11, 2013, 11, 25.00 ),
                ( "2013-12", 2013, 12, 2013, 12, 25.00 ),
            ]),
            ("2014", [
                ( "2014-1", 2014, 1, 2014, 1, 25.00 ),
                ( "2014-2", 2014, 2, 2014, 2, 25.00 ),
                ( "2014-3", 2014, 3, 2014, 3, 25.00 ),
                ( "2014-4", 2014, 4, 2014, 4, 25.00 ),
                ( "2014-5", 2014, 5, 2014, 5, 25.00 ),
                ( "2014-6", 2014, 6, 2014, 6, 25.00 ),
                ( "2014-7", 2014, 7, 2014, 7, 25.00 ),
                ( "2014-8", 2014, 8, 2014, 8, 25.00 ),
                ( "2014-9", 2014, 9, 2014, 9, 25.00 ),
                ( "2014-10", 2014, 10, 2014, 10, 25.00 ),
                ( "2014-11", 2014, 11, 2014, 11, 25.00 ),
                ( "2014-12", 2014, 12, 2014, 12, 25.00 ),
            ]),
            ("2015", [
                ( "2015-1", 2015, 1, 2015, 1, 25.00 ),
                ( "2015-2", 2015, 2, 2015, 2, 25.00 ),
                ( "2015-3", 2015, 3, 2015, 3, 25.00 ),
                ( "2015-4", 2015, 4, 2015, 4, 25.00 ),
                ( "2015-5", 2015, 5, 2015, 5, 25.00 ),
                ( "2015-6", 2015, 6, 2015, 6, 25.00 ),
                ( "2015-7", 2015, 7, 2015, 7, 25.00 ),
                ( "2015-8", 2015, 8, 2015, 8, 25.00 ),
                ( "2015-9", 2015, 9, 2015, 9, 25.00 ),
                ( "2015-10", 2015, 10, 2015, 10, 25.00 ),
                ( "2015-11", 2015, 11, 2015, 11, 25.00 ),
                ( "2015-12", 2015, 12, 2015, 12, 25.00 ),
            ]),
            ("2016", [
                ( "2016-1", 2016, 1, 2016, 1, 25.00 ),
                ( "2016-2", 2016, 2, 2016, 2, 25.00 ),
                ( "2016-3", 2016, 3, 2016, 3, 25.00 ),
                ( "2016-4", 2016, 4, 2016, 4, 25.00 ),
                ( "2016-5", 2016, 5, 2016, 5, 25.00 ),
                ( "2016-6", 2016, 6, 2016, 6, 25.00 ),
                ( "2016-7", 2016, 7, 2016, 7, 25.00 ),
                ( "2016-8", 2016, 8, 2016, 8, 25.00 ),
                ( "2016-9", 2016, 9, 2016, 9, 25.00 ),
                ( "2016-10", 2016, 10, 2016, 10, 25.00 ),
                ( "2016-11", 2016, 11, 2016, 11, 25.00 ),
                ( "2016-12", 2016, 12, 2016, 12, 25.00 ),
            ]),
            ("2017", [
                ( "2017-1", 2017, 1, 2017, 1, 25.00 ),
                ( "2017-2", 2017, 2, 2017, 2, 25.00 ),
                ( "2017-3", 2017, 3, 2017, 3, 25.00 ),
                ( "2017-4", 2017, 4, 2017, 4, 25.00 ),
                ( "2017-5", 2017, 5, 2017, 5, 25.00 ),
                ( "2017-6", 2017, 6, 2017, 6, 25.00 ),
                ( "2017-7", 2017, 7, 2017, 7, 25.00 ),
                ( "2017-8", 2017, 8, 2017, 8, 25.00 ),
                ( "2017-9", 2017, 9, 2017, 9, 25.00 ),
                ( "2017-10", 2017, 10, 2017, 10, 25.00 ),
                ( "2017-11", 2017, 11, 2017, 11, 25.00 ),
                ( "2017-12", 2017, 12, 2017, 12, 25.00 ),
            ]),
            ("2018", [
                ( "2018-1", 2018, 1, 2018, 1, 25.00 ),
                ( "2018-2", 2018, 2, 2018, 2, 25.00 ),
                ( "2018-3", 2018, 3, 2018, 3, 25.00 ),
                ( "2018-4", 2018, 4, 2018, 4, 25.00 ),
                ( "2018-5", 2018, 5, 2018, 5, 25.00 ),
                ( "2018-6", 2018, 6, 2018, 6, 25.00 ),
                ( "2018-7", 2018, 7, 2018, 7, 25.00 ),
                ( "2018-8", 2018, 8, 2018, 8, 25.00 ),
                ( "2018-9", 2018, 9, 2018, 9, 25.00 ),
                ( "2018-10", 2018, 10, 2018, 10, 25.00 ),
                ( "2018-11", 2018, 11, 2018, 11, 25.00 ),
                ( "2018-12", 2018, 12, 2018, 12, 25.00 ),
            ]),
            ("2019", [
                ( "2019-1", 2019, 1, 2019, 1, 25.00 ),
                ( "2019-2", 2019, 2, 2019, 2, 25.00 ),
                ( "2019-3", 2019, 3, 2019, 3, 25.00 ),
                ( "2019-4", 2019, 4, 2019, 4, 25.00 ),
                ( "2019-5", 2019, 5, 2019, 5, 25.00 ),
                ( "2019-6", 2019, 6, 2019, 6, 25.00 ),
                ( "2019-7", 2019, 7, 2019, 7, 24.80 ),
                ( "2019-8", 2019, 8, 2019, 8, 24.80 ),
                ( "2019-9", 2019, 9, 2019, 9, 24.80 ),
                ( "2019-10", 2019, 10, 2019, 10, 24.80 ),
                ( "2019-11", 2019, 11, 2019, 11, 24.80 ),
                ( "2019-12", 2019, 12, 2019, 12, 24.80 ),
            ]),
            ("2020", [
                ( "2020-1", 2020, 1, 2020, 1, 24.80 ),
                ( "2020-2", 2020, 2, 2020, 2, 24.80 ),
                ( "2020-3", 2020, 3, 2020, 3, 24.80 ),
                ( "2020-4", 2020, 4, 2020, 4, 24.80 ),
                ( "2020-5", 2020, 5, 2020, 5, 24.80 ),
                ( "2020-6", 2020, 6, 2020, 6, 24.80 ),
                ( "2020-7", 2020, 7, 2020, 7, 24.80 ),
                ( "2020-8", 2020, 8, 2020, 8, 24.80 ),
                ( "2020-9", 2020, 9, 2020, 9, 24.80 ),
                ( "2020-10", 2020, 10, 2020, 10, 24.80 ),
                ( "2020-11", 2020, 11, 2020, 11, 24.80 ),
                ( "2020-12", 2020, 12, 2020, 12, 24.80 ),
            ]),
            ("2021", [
                ( "2021-1", 2021, 1, 2021, 1, 24.80 ),
                ( "2021-2", 2021, 2, 2021, 2, 24.80 ),
                ( "2021-3", 2021, 3, 2021, 3, 24.80 ),
                ( "2021-4", 2021, 4, 2021, 4, 24.80 ),
                ( "2021-5", 2021, 5, 2021, 5, 24.80 ),
                ( "2021-6", 2021, 6, 2021, 6, 24.80 ),
                ( "2021-7", 2021, 7, 2021, 7, 24.80 ),
                ( "2021-8", 2021, 8, 2021, 8, 24.80 ),
                ( "2021-9", 2021, 9, 2021, 9, 24.80 ),
                ( "2021-10", 2021, 10, 2021, 10, 24.80 ),
                ( "2021-11", 2021, 11, 2021, 11, 24.80 ),
                ( "2021-12", 2021, 12, 2021, 12, 24.80 ),
            ]),
            ("2022", [
                ( "2022-1", 2022, 1, 2022, 1, 24.80 ),
                ( "2022-2", 2022, 2, 2022, 2, 24.80 ),
                ( "2022-3", 2022, 3, 2022, 3, 24.80 ),
                ( "2022-4", 2022, 4, 2022, 4, 24.80 ),
                ( "2022-5", 2022, 5, 2022, 5, 24.80 ),
                ( "2022-6", 2022, 6, 2022, 6, 24.80 ),
                ( "2022-7", 2022, 7, 2022, 7, 24.80 ),
                ( "2022-8", 2022, 8, 2022, 8, 24.80 ),
                ( "2022-9", 2022, 9, 2022, 9, 24.80 ),
                ( "2022-10", 2022, 10, 2022, 10, 24.80 ),
                ( "2022-11", 2022, 11, 2022, 11, 24.80 ),
                ( "2022-12", 2022, 12, 2022, 12, 24.80 ),
            ]),
        ]
#if __PROTOKOL_TEST_FILE__
        logTestDecExamples(fileName: "03_Social_02_FactorEmployer.txt", tx: test_examples)
#endif

        test_examples.forEach { (title: String, tests: [(title: String, year: Int16, month: Int16, expYear: Int16, expMonth: Int16, expected: Double)]) in
            describe("tests for year \(title)") {
                tests.forEach { (title: String, year: Int16, month: Int16, expYear: Int16, expMonth: Int16, expected: Double) in
                    context("period \(title)") {
                        var bundle: IBundleProps?
                        var error: HistoryResultError?
                        var props: IPropsSocial?

                        beforeEach {
                            let period = Period(year: year, month: month)
                            let service = ServiceLegalios()
                            let result: Result<IBundleProps, HistoryResultError> = service.getBundle(period)
                            bundle = nil
                            error = nil
                            switch (result) {
                            case .success(let b): bundle = b
                            case .failure(let e): error = e
                            }
                            props = bundle?.socialProps
                        }

                        it("GetProps should return error = null") {
                            expect(error).to(beNil())
                        }
                        it("GetProps should return bundle not be nil") {
                            expect(bundle).toNot(beNil())
                        }
                        it("GetProps should return getPeriodYear = \(expYear) and getPeriodMonth = \(expMonth)") {
                            expect(bundle?.getPeriodYear()).to(equal(expYear))
                            expect(bundle?.getPeriodMonth()).to(equal(expMonth))
                        }
                        it("GetProps should return healthProps not to be nil") {
                            expect(props).toNot(beNil())
                        }
                        it("GetProps should return value = \(expected)") {
                            let expDecimal = Decimal(expected)
                            expect(props?.factorEmployer).to(equal(expDecimal))
                        }
                    }
                }
            }
        }
    }
}