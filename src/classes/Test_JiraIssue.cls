@IsTest
private class Test_JIRAIssue {
    @IsTest
    static void testParsing() {
        String json = '{\"webhookEvent\":\"jira:issue_created\",\"timestamp\":1370755601137,\"user\":{\"self\":\"http://localhost:8080/rest/api/2/user?username=jhill\",\"name\":\"jhill\",\"emailAddress\":\"james.hill@trineo.co.nz\",\"avatarUrls\":{\"16x16\":\"http://localhost:8080/secure/useravatar?size=xsmall&avatarId=10122\",\"24x24\":\"http://localhost:8080/secure/useravatar?size=small&avatarId=10122\",\"32x32\":\"http://localhost:8080/secure/useravatar?size=medium&avatarId=10122\",\"48x48\":\"http://localhost:8080/secure/useravatar?avatarId=10122\"},\"displayName\":\"James Hill\",\"active\":true},\"issue\":{\"id\":\"10002\",\"self\":\"http://localhost:8080/rest/api/2/issue/10002\",\"key\":\"JIB-3\",\"fields\":{\"summary\":\"Temp Issue\",\"progress\":{\"progress\":0,\"total\":0},\"timetracking\":{},\"issuetype\":{\"self\":\"http://localhost:8080/rest/api/2/issuetype/1\",\"id\":\"1\",\"description\":\"A problem which impairs or prevents the functions of the product.\",\"iconUrl\":\"http://localhost:8080/images/icons/issuetypes/bug.png\",\"name\":\"Bug\",\"subtask\":false},\"votes\":{\"self\":\"http://localhost:8080/rest/api/2/issue/JIB-3/votes\",\"votes\":0,\"hasVoted\":false},\"resolution\":null,\"fixVersions\":[],\"resolutiondate\":null,\"timespent\":null,\"reporter\":{\"self\":\"http://localhost:8080/rest/api/2/user?username=jhill\",\"name\":\"jhill\",\"emailAddress\":\"james.hill@trineo.co.nz\",\"avatarUrls\":{\"16x16\":\"http://localhost:8080/secure/useravatar?size=xsmall&avatarId=10122\",\"24x24\":\"http://localhost:8080/secure/useravatar?size=small&avatarId=10122\",\"32x32\":\"http://localhost:8080/secure/useravatar?size=medium&avatarId=10122\",\"48x48\":\"http://localhost:8080/secure/useravatar?avatarId=10122\"},\"displayName\":\"James Hill\",\"active\":true},\"aggregatetimeoriginalestimate\":null,\"created\":\"2013-06-09T17:26:41.130+1200\",\"updated\":\"2013-06-09T17:26:41.130+1200\",\"description\":null,\"priority\":{\"self\":\"http://localhost:8080/rest/api/2/priority/3\",\"iconUrl\":\"http://localhost:8080/images/icons/priorities/major.png\",\"name\":\"Major\",\"id\":\"3\"},\"duedate\":null,\"issuelinks\":[],\"watches\":{\"self\":\"http://localhost:8080/rest/api/2/issue/JIB-3/watchers\",\"watchCount\":0,\"isWatching\":false},\"worklog\":{\"startAt\":0,\"maxResults\":0,\"total\":0,\"worklogs\":[]},\"subtasks\":[],\"status\":{\"self\":\"http://localhost:8080/rest/api/2/status/1\",\"description\":\"The issue is open and ready for the assignee to start work on it.\",\"iconUrl\":\"http://localhost:8080/images/icons/statuses/open.png\",\"name\":\"Open\",\"id\":\"1\"},\"labels\":[],\"workratio\":-1,\"assignee\":{\"self\":\"http://localhost:8080/rest/api/2/user?username=jhill\",\"name\":\"jhill\",\"emailAddress\":\"james.hill@trineo.co.nz\",\"avatarUrls\":{\"16x16\":\"http://localhost:8080/secure/useravatar?size=xsmall&avatarId=10122\",\"24x24\":\"http://localhost:8080/secure/useravatar?size=small&avatarId=10122\",\"32x32\":\"http://localhost:8080/secure/useravatar?size=medium&avatarId=10122\",\"48x48\":\"http://localhost:8080/secure/useravatar?avatarId=10122\"},\"displayName\":\"James Hill\",\"active\":true},\"attachment\":[],\"aggregatetimeestimate\":null,\"project\":{\"self\":\"http://localhost:8080/rest/api/2/project/JIB\",\"id\":\"10000\",\"key\":\"JIB\",\"name\":\"Jira-Integration-Bugs\",\"avatarUrls\":{\"16x16\":\"http://localhost:8080/secure/projectavatar?size=xsmall&pid=10000&avatarId=10011\",\"24x24\":\"http://localhost:8080/secure/projectavatar?size=small&pid=10000&avatarId=10011\",\"32x32\":\"http://localhost:8080/secure/projectavatar?size=medium&pid=10000&avatarId=10011\",\"48x48\":\"http://localhost:8080/secure/projectavatar?pid=10000&avatarId=10011\"}},\"versions\":[],\"environment\":null,\"timeestimate\":null,\"aggregateprogress\":{\"progress\":0,\"total\":0},\"lastViewed\":null,\"components\":[],\"comment\":{\"startAt\":0,\"maxResults\":0,\"total\":0,\"comments\":[]},\"timeoriginalestimate\":null,\"aggregatetimespent\":null}}}';
        JIRAIssue obj = JIRAIssue.parse(json);
        System.assert(obj != null);

        //Touch each of the inner classes as JSON deserialize doesn't hit them for coverage
        JIRAIssue.User instanceJIRAIssueUser = new JIRAIssue.User();
        JIRAIssue.Resolution instanceJIRAIssueResolution = new JIRAIssue.Resolution();
        JIRAIssue.Fields instanceJIRAIssueFields = new JIRAIssue.Fields();
        JIRAIssue.Issuetype instanceJIRAIssueIssuetype = new JIRAIssue.Issuetype();
        JIRAIssue.Comment instanceJIRAIssueComment = new JIRAIssue.Comment();
        JIRAIssue.Timetracking instanceJIRAIssueTimetracking = new JIRAIssue.Timetracking();
        JIRAIssue.Worklog instanceJIRAIssueWorklog = new JIRAIssue.Worklog();
        JIRAIssue.Progress instanceJIRAIssueProgress = new JIRAIssue.Progress();
        JIRAIssue.Priority instanceJIRAIssuePriority = new JIRAIssue.Priority();
        JIRAIssue.Status instanceJIRAIssueStatus = new JIRAIssue.Status();
        JIRAIssue.Issue instanceJIRAIssueIssue = new JIRAIssue.Issue();
        JIRAIssue.Votes instanceJIRAIssueVotes = new JIRAIssue.Votes();
        JIRAIssue.Watches instanceJIRAIssueWatches = new JIRAIssue.Watches();
        JIRAIssue.Project instanceJIRAIssueProject = new JIRAIssue.Project();

        //And each of the fields as well
        obj.webhookEvent = 'test';
        obj.timestamp = 1234;
        obj.user = instanceJIRAIssueUser;
        obj.issue = instanceJIRAIssueIssue;
    }

}