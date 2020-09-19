const { AccountNumber } = require("../src/account_number")
const { BankOcr } = require("../src/bankocr")
const { Input } = require('./sample_input');
const assert = require('assert');
const chai = require('chai');
chai.should();


describe('BankOCR', () => {
    it('should parse single line of ones', () => {
        const lineGrouper = (rawLines) => {
            return [
                [
                    '                           ', 
                    '  |  |  |  |  |  |  |  |  |',
                    '  |  |  |  |  |  |  |  |  |',
                ]
            ]
        }
        const parseScanLine = (scanLine) => {
            return new AccountNumber('111111111')
        }
        const bankOcr = new BankOcr({ lineGrouper, parseScanLine });
        
        const accountNumbers = bankOcr.parse(Input.onlyOnes())
        accountNumbers.length.should.equal(1);
        accountNumbers[0].should.deep.equal(new AccountNumber("111111111"));
    })

    
    it('should parse single line of twos', () => {
        const lineGrouper = (rawLines) => {
            return [
                [
                    ' _  _  _  _  _  _  _  _  _ ', 
                    ' _| _| _| _| _| _| _| _| _|',
                    '|_ |_ |_ |_ |_ |_ |_ |_ |_ ',
                ]
            ]
        }
        const parseScanLine = (scanLine) => {
            return new AccountNumber('222222222')
        }
        const bankOcr = new BankOcr({ lineGrouper, parseScanLine });
        
        const accountNumbers = bankOcr.parse(Input.onlyTwos())
        accountNumbers.length.should.equal(1);
        accountNumbers[0].should.deep.equal(new AccountNumber("222222222"));
    })
    
})