/**
 * Define a GET endpoint that attendees can ping with their name during the presentation.
 * First in gets a prize!
 *
 * Hint:
 *  - Site name: {SITE_NAME}
 *  - Relative endpoint: /services/apexrest/{URL_MAPPING}
 * 
 * @author  Luke
 * @date    Nov 2013
 */
// @RestResource(urlMapping='{URL_MAPPING}') 
global class APIResource_HitMe {
    global static void doGet() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;

        res.addHeader('Content-Type', 'application/json');
        String resBody = '';
        try {
            String firstName = req.params.get('firstname');
            String lastName = req.params.get('lastname');

            // Do something here...

            res.statusCode = 200;
            resBody = '{ "success": true }';
        } catch(Exception e) {
            res.statusCode = 500;
            resBody = '{ "success": false }';
        }
        res.responseBody = Blob.valueOf(resBody);
    }
}