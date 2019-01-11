/* globals describe, it */

var chai = require('chai');
var should = chai.should();

const { AccountNumber } = require('../src/account_number');
const { BankOcr } = require('../src/bankocr');
const { Input } = require('./sample_input');

describe('Guiding BankOCR', () => {

    it('should parse OCR line', () => {
        // TODO failing test, start here
        // guiding test from outside in as starting point.
        // a) ignore this test
        // b) or stub everything in the BankOcr constructor
        // c) or let it be red until the end
        const bankOcr = new BankOcr();

        const accountNumbers = bankOcr.parse(Input.allDigits());

        accountNumbers.length.should.equal(1);
        accountNumbers[0].should.deep.equal(new AccountNumber("123456789"));
    });

});
