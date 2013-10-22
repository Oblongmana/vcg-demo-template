@RestResource(urlMapping='/jira/issue/*')
global class APIResource_JIRAIssue {
	
    @HttpPost
    global static void postIssue() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;

        try {
            JIRAIssue newIssue = JIRAIssue.parse(req.requestBody.toString());

            Case newCase = new Case (
                    Origin = 'Web - JIRA',
                    Status = 'New',
                    Subject = newIssue.issue.fields.summary,
                    Description = newIssue.issue.fields.description
                );

            insert newCase;

            res.StatusCode = 200;
        }
        catch (Exception e) {
            res.StatusCode = 500;
        }

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