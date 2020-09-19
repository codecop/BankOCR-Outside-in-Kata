"use strict";

import { AccountNumber } from "./account_number";

/**
 * Example for the outside interface of the API we need to create.
 */
export class BankOcr {

    constructor({ lineGrouper, parseScanLine } = {}) {
        this.lineGrouper = lineGrouper
        this.parseScanLine = parseScanLine
    }

    parse(rawLines) {
        // groupRowLinesIntoScanLines
        // loopScanLines
            // parseEachScanLine
            // collect
            
        // TODO return an array of AccountNumber
        return [
            this.parseScanLine(undefined)
        ]
    }

}
