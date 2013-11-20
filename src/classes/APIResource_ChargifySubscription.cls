/**
 * Handle incoming webhook events from Chargify relating to a billing subscription.
 * Reachable via: https://{SITE_NAME}/services/apexrest/{URL_MAPPING}
 * 
 * @author  Luke
 * @date    Nov 2013
 */
// @RestResource(urlMapping='') 
global class APIResource_ChargifySubscription {

    global static void handlePost() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
    }

























































    // ************* AUTHENTICATION SECTION BEGINS  ******************** //
    /*
    public class ChargifyWebhookException extends Exception {}

    private static final String site = 'vcg-demo';
    private static final String api_key = 'uuZcb3H1fpVz5OhRBv7H'; //Note: for prod, should be a Custom Setting
    private static final String site_shared_key = 'x7x82snTo7lCgy7DhsI'; //Note: for prod, should be a Custom Setting


    private static boolean verifyChargifyHook(RestRequest req) {  
        String sigReceived = req.headers.get('X-Chargify-Webhook-Signature-Hmac-Sha-256');

        ChargifyBody bodyObj = new ChargifyBody(req.params);
        
        String calcSignature = bodyObj.calculateSignature(site_shared_key);

        if(calcSignature != sigReceived) {
            System.debug('Invalid - signature mismatch: Calculated: \"' + calcSignature +'\" ; Received: \"' + sigReceived + '\"');
            return false;
        }
        return true;
    }
    */
    

}