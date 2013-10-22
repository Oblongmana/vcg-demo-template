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

    }

}