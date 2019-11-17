/**
 * This class contains unit tests for validating the Sales process to
 * ensure no breaking changes in the Sales org.
 */
@isTest
private class SalesProcessTests {

    /**
    * Agents will enter properties with no price for opportunities with new home owner
    * where the house is not been appraised or put on the maarket yet.
    */
    @isTest
    static void createAndLinkPropertyWithNoPriceToOppurtunity() {
        Property__c property = new Property__c(Name='TestProperty', Address__c='123 Test Ave', City__c='Boston', Zip__c='12345');
        insert property;
        Opportunity opp = new Opportunity(Name='New House', StageName='Prospecting', CloseDate=system.today().addDays(3), Property__c=property.Id);
        insert opp;
        System.assert(opp.Property__c==property.Id);
    }
}