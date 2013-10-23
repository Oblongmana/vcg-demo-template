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
    private static final String shared_key = 'uuZcb3H1fpVz5OhRBv7H'; //Note: for prod, should be a Custom Setting
    
    private static List<ChargifyWebhook> getListFromChargify() {
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://' + site + '.chargify.com/webhooks.json');
        req.setMethod('GET');
        String authString = shared_key + ':x';
        String encodedAuth = EncodingUtil.base64encode(Blob.valueOf(authString));
        req.setHeader('Authorization', encodedAuth);
        HttpResponse res = (new Http()).send(req);

        List<ChargifyWebhook> webhooks;
        if(res.getStatusCode() == 200) { // success
            webhooks = (List<ChargifyWebhook>)JSON.deserialize(res.getBody(), List<ChargifyWebhook>.class);
        } else {
            throw new ChargifyWebhookException('Failed to retrieve webhooks from Chargify: ' + res.getStatus());
        }

        return webhooks;
    }

    private static Map<String,ChargifyWebhook> getMapFromChargify() {
        Map<String,ChargifyWebhook> hookMap = new Map<String,ChargifyWebhook>();
        for(ChargifyWebhook hook : getListFromChargify()) {
            hookMap.put(hook.webhook.id,hook);
        }
        return hookMap;
    }

    private static boolean verifyChargifyHook(RestRequest req) {
        ChargifyWebhook hookFromServer = getMapFromChargify().get(req.params.get('id'));
        String sigReceived = req.headers.get('X-Chargify-Webhook-Signature-Hmac-Sha-256');

        if(hookFromServer == null) {
            return false;
        }
        if(hookFromServer.webhook.signature_hmac_sha_256 != sigReceived) {
            return false;
        }

        return true;
    }
    
    */

}