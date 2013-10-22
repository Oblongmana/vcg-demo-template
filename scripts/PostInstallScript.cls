Account a = new Account(
    Name = 'Frank McKnight',
    BillingStreet = '3381 Hudson Street',
    BillingCity = 'Newark',
    BillingState = 'NJ',
    BillingPostalCode = '07102',
    Phone = '(973) 972-1365'
);
insert a;

Subscription__c sub = new Subscription__c(
    Customer__c = a.Id,
    Product__c = 'Cloud Automate',
    Status__c = 'Active',
    Chargify_ID__c = '4038637'
);
insert sub;