const { AccountNumber } = require("../src/account_number")
const { BankOcr } = require("../src/bankocr")
const { Input } = require('./sample_input');
const assert = require('assert');
const chai = require('chai');
chai.should();


const SCAN_LINE_1 = [
    '                           ', 
    '  |  |  |  |  |  |  |  |  |',
    '  |  |  |  |  |  |  |  |  |',
]

const SCAN_LINE_2 = [
    ' _  _  _  _  _  _  _  _  _ ', 
    ' _| _| _| _| _| _| _| _| _|',
    '|_ |_ |_ |_ |_ |_ |_ |_ |_ ',
]

const ACCOUNT_NUMBER_1 = new AccountNumber('111111111')
const ACCOUNT_NUMBER_2 = new AccountNumber('222222222')

const parseScanLine = (scanLine) => {
    if (scanLine[0] === '                           ') {
        return ACCOUNT_NUMBER_1
    }
    return ACCOUNT_NUMBER_2
}

describe('BankOCR', () => {
    it('should parse single line of ones', () => {
        const lineGrouper = (rawLines) => 
            [SCAN_LINE_1]
        const bankOcr = new BankOcr({ lineGrouper, parseScanLine });
        
        const accountNumbers = bankOcr.parse(Input.onlyOnes())
        accountNumbers.length.should.equal(1);
        accountNumbers[0].should.deep.equal(new AccountNumber("111111111"));
    })

    
    it('should parse single line of twos', () => {
        const lineGrouper = (rawLines) => 
            [SCAN_LINE_2]
        
        const bankOcr = new BankOcr({ lineGrouper, parseScanLine });
        
        const accountNumbers = bankOcr.parse(Input.onlyTwos())
        accountNumbers.length.should.equal(1);
        accountNumbers[0].should.deep.equal(ACCOUNT_NUMBER_2);
    })

    it('should parse 2 lines with different account numbers', () => {
        const lineGrouper = (rawLines) => 
            [SCAN_LINE_1, SCAN_LINE_2]
        
        const bankOcr = new BankOcr({ lineGrouper, parseScanLine });

        const accountNumbers = bankOcr.parse(Input.onesAndTwosIn2Lines())
        accountNumbers.length.should.equal(2);
        accountNumbers[0].should.deep.equal(ACCOUNT_NUMBER_1);
        accountNumbers[1].should.deep.equal(ACCOUNT_NUMBER_2);
    })
    
})