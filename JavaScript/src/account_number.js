"use strict";

/**
 * Value object for account numbers.
 */
export class AccountNumber {

   constructor(number) {
      const accountNumberFormat = /^\d{9}$/;
      if (number == undefined || number == null || !accountNumberFormat.test(number)) {
         throw new Error(number);
      }
      this.number = number;
   }

   toString() {
      return this.number;
   }

}
