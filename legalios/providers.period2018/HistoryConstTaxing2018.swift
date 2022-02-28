//
// Created by Ladislav Lisy on 13.06.2021.
//

// ALLOWANCE_PAYER                  Částka slevy na poplatníka
//
// ALLOWANCE_DISAB_1ST              Částka slevy na invaliditu 1.stupně poplatníka
//
// ALLOWANCE_DISAB_2ND              Částka slevy na invaliditu 2.stupně poplatníka
//
// ALLOWANCE_DISAB_3RD              Částka slevy na invaliditu 3.stupně poplatníka
//
// ALLOWANCE_STUDY                  Částka slevy na poplatníka studenta
//
// ALLOWANCE_CHILD_1ST              Částka slevy na dítě 1.pořadí
//
// ALLOWANCE_CHILD_2ND              Částka slevy na dítě 2.pořadí
//
// ALLOWANCE_CHILD_3RD              Částka slevy na dítě 3.pořadí
//
// FACTOR_ADVANCES                  Sazba daně na zálohový příjem
//
// FACTOR_WITHHOLD                  Sazba daně na srážkový příjem
//
// FACTOR_SOLIDARY                  Sazba daně na solidární zvýšení
//
// MIN_AMOUNT_OF_TAXBONUS           Minimální částka pro daňový bonus
//
// MAX_AMOUNT_OF_TAXBONUS           Maximální částka pro daňový bonus
//
// MARGIN_INCOME_OF_TAXBONUS        Minimální výše příjmu pro nároku na daňový bonus
//
// MARGIN_INCOME_OF_ROUNDING        Maximální výše příjmu pro zaokrouhlování
//
// MARGIN_INCOME_OF_WITHHOLD        Maximální výše příjmu pro srážkový příjem
//
// MARGIN_INCOME_OF_SOLIDARY        Minimální výše příjmu pro solidární zvýšení daně
//
// MARGIN_INCOME_OF_WHT_AGR         hranice příjmu pro srážkovou daň pro zaměstnace v pracovním poměru (nepodepsal prohlášení)
//
// MARGIN_INCOME_OF_WHT_EMP         hranice příjmu pro srážkovou daň pro zaměstnace na dohodu (nepodepsal prohlášení)

import Foundation

struct HistoryConstTaxing2018
{
    static let VERSION_CODE: Int16 = 2018

    static let ALLOWANCE_PAYER: Int32 = HistoryConstTaxing2017.ALLOWANCE_PAYER
    static let ALLOWANCE_DISAB_1ST: Int32 = HistoryConstTaxing2017.ALLOWANCE_DISAB_1ST
    static let ALLOWANCE_DISAB_2ND: Int32 = HistoryConstTaxing2017.ALLOWANCE_DISAB_2ND
    static let ALLOWANCE_DISAB_3RD: Int32 = HistoryConstTaxing2017.ALLOWANCE_DISAB_3RD
    static let ALLOWANCE_STUDY: Int32 = HistoryConstTaxing2017.ALLOWANCE_STUDY
    static let ALLOWANCE_CHILD_1ST: Int32 = 1267
    static let ALLOWANCE_CHILD_2ND: Int32 = HistoryConstTaxing2017var07.ALLOWANCE_CHILD_2ND
    static let ALLOWANCE_CHILD_3RD: Int32 = HistoryConstTaxing2017var07.ALLOWANCE_CHILD_3RD
    static let FACTOR_ADVANCES: Decimal = HistoryConstTaxing2017.FACTOR_ADVANCES
    static let FACTOR_WITHHOLD: Decimal = HistoryConstTaxing2017.FACTOR_WITHHOLD
    static let FACTOR_SOLIDARY: Decimal = HistoryConstTaxing2017.FACTOR_SOLIDARY
    static let MIN_AMOUNT_OF_TAXBONUS: Int32 = HistoryConstTaxing2017.MIN_AMOUNT_OF_TAXBONUS
    static let MAX_AMOUNT_OF_TAXBONUS: Int32 = HistoryConstTaxing2017.MAX_AMOUNT_OF_TAXBONUS
    static let MARGIN_INCOME_OF_TAXBONUS: Int32 = (HistoryConstSalary2018.MIN_MONTHLY_WAGE / 2)
    static let MARGIN_INCOME_OF_ROUNDING: Int32 = HistoryConstTaxing2017.MARGIN_INCOME_OF_ROUNDING
    static let MARGIN_INCOME_OF_WITHHOLD: Int32 = HistoryConstTaxing2017.MARGIN_INCOME_OF_WITHHOLD
    static let MARGIN_INCOME_OF_SOLIDARY: Int32 = (4 * 29979)
    static let MARGIN_INCOME_OF_WHT_EMP: Int32 = 2500
    static let MARGIN_INCOME_OF_WHT_AGR: Int32 = HistoryConstTaxing2017.MARGIN_INCOME_OF_WHT_AGR
}

