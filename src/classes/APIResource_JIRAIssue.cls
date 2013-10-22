/**
 * Handle incoming webhook events from JIRA relating to issues.
 * Reachable via: https://{SITE_NAME}/services/apexrest/{URL_MAPPING}
 * 
 * @author  James
 * @date    Nov 2013
 */
// @RestResource(urlMapping='')
global class APIResource_JIRAIssue {
	
    global static void postIssue() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
    }

}