@isTest
public class PushPriceChangeNotificationTest {
    
    static testMethod void testPush() {
        Boolean success = true;
        try {
            Property__c p = new Property__c(Name='test property', Price__c=200000, Address__c='123 Test Ave', City__c='Boston', Zip__c='12345');
            insert p;
	        PushPriceChangeNotification.pushNotification(new List<Id> { p.Id });
        } catch (Exception e) {
            success = false;
        } finally {
	        System.assert(success);
        }
    }

}