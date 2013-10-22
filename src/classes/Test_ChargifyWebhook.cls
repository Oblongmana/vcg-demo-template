@isTest
private class Test_ChargifyWebhook {
	
	@isTest 
	static void testParse() {
        String json = '{'+
        '    \"webhook\": {'+
        '        \"last_error_at\":\"string\",'+
        '        \"accepted_at\":\"auto generated\",'+
        '        \"last_sent_at\":\"auto generated\",'+
        '        \"created_at\":\"auto generated\",'+
        '        \"body\":\"auto generated\",'+
        '        \"signature\":\"auto generated\",'+
        '        \"successful\":true,'+
        '        \"last_error\":\"string\",'+
        '        \"id\":\"auto generated\",'+
        '        \"event\":\"payment_success\",'+
        '        \"last_sent_url\":\"auto generated\"'+
        '    }'+
        '}';
        ChargifyWebhook obj = ChargifyWebhook.parse(json);
        System.assert(obj != null);
	}

    @isTest static void testInnerClasses() {
        new ChargifyWebhook.Webhook();
    }
	
}