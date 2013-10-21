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
}