"use strict";

import { AccountNumber } from "./account_number";

/**
 * Example for the outside interface of the API we need to create.
 */
export class BankOcr {

    constructor() {
    }

    parse(rawLines) {
        // TODO return an array of AccountNumber
        throw new Error("not implemented");
    }

}
