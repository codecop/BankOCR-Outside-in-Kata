/* globals describe, it */
'use strict';

const chai = require('chai');
const should = chai.should();
const expect = chai.expect;

const { AccountNumber } = require('../src/account_number');

describe('AccountNumber', () => {

    it('should be equal in list', () => {
        const accountNumbers = [new AccountNumber('123456789')];

        accountNumbers.length.should.equal(1);
        accountNumbers[0].should.deep.equal(new AccountNumber('123456789'));
    });

    it('should not be equal', () => {
        new AccountNumber('123456789').should.not.deep.equal(new AccountNumber('123456788'));
    });

    it('should list number as string', () => {
        const accountNumber = new AccountNumber('123456789');

        accountNumber.toString().should.equal('123456789');
    });

    it('shouldValidateNumberLength', () => {
        expect(() => new AccountNumber('12345678')).to.throw(Error);
    });

    it('shouldValidateNumber', () => {
        expect(() => new AccountNumber('12345678n')).to.throw(Error);
    });

});
