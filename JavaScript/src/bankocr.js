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
        return this.lineGrouper(rawLines)
            .map((lines) => this.parseScanLine(lines))
    }

}
