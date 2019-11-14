@isTest
public class PostPriceChangeToSlackTest {
    
    static testMethod void testPost() {
        Boolean success = true;
        try {
            Property__c p = new Property__c(Name='test property', Price__c=200000, Address__c='123 Test Ave', City__c='Boston', Zip__c='12345');
            insert p;
	        PostPriceChangeToSlack.postToSlack(new List<Id> { p.Id });
        } catch (Exception e) {
            System.debug(e);
            success = false;
        } finally {
	        System.assert(success);
        }
    }

}