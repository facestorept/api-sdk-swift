//
// PaymentsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class PaymentsAPI: APIBase {
    /**

     - parameter id: (path) ID of payment 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getPaymentById(id id: Int64, completion: ((data: InlineResponse2005?, error: ErrorType?) -> Void)) {
        getPaymentByIdWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     - GET /payments/{id}/
     - Returns all payments from the system that the user has access to 
     - API Key:
       - type: apiKey APIToken 
       - name: APIKeyHeader
     - examples: [{contentType=application/json, example={
  "data" : [ {
    "updated_at" : "2012-08-22T16:05:27.000+0000",
    "name" : "PayPal",
    "active" : true,
    "created_at" : "2012-08-22T16:05:27.000+0000",
    "id" : 1
  }, {
    "updated_at" : "2012-08-22T16:05:27.000+0000",
    "name" : "PayPal",
    "active" : true,
    "created_at" : "2012-08-22T16:05:27.000+0000",
    "id" : 1
  } ]
}}]
     
     - parameter id: (path) ID of payment 

     - returns: RequestBuilder<InlineResponse2005> 
     */
    public class func getPaymentByIdWithRequestBuilder(id id: Int64) -> RequestBuilder<InlineResponse2005> {
        var path = "/payments/{id}/"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InlineResponse2005>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**

     - parameter includes: (query) Include associated objects within response (optional)
     - parameter limit: (query) max records to return (optional)
     - parameter orderBy: (query) Specify the field to be sorted, examples:  - &#x60;?order_by&#x3D;id|desc&#x60; - &#x60;?order_by&#x3D;updated_at|desc,position|asc&#x60;  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getPayments(includes includes: [String]? = nil, limit: Int32? = nil, orderBy: [String]? = nil, completion: ((data: InlineResponse2004?, error: ErrorType?) -> Void)) {
        getPaymentsWithRequestBuilder(includes: includes, limit: limit, orderBy: orderBy).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     - GET /payments
     - Returns all payments from the system that the user has access to 
     - API Key:
       - type: apiKey APIToken 
       - name: APIKeyHeader
     - examples: [{contentType=application/json, example={
  "data" : [ {
    "updated_at" : "2012-08-22T16:05:27.000+0000",
    "name" : "PayPal",
    "active" : true,
    "created_at" : "2012-08-22T16:05:27.000+0000",
    "id" : 1
  }, {
    "updated_at" : "2012-08-22T16:05:27.000+0000",
    "name" : "PayPal",
    "active" : true,
    "created_at" : "2012-08-22T16:05:27.000+0000",
    "id" : 1
  } ],
  "meta" : {
    "total" : "total"
  }
}}]
     
     - parameter includes: (query) Include associated objects within response (optional)
     - parameter limit: (query) max records to return (optional)
     - parameter orderBy: (query) Specify the field to be sorted, examples:  - &#x60;?order_by&#x3D;id|desc&#x60; - &#x60;?order_by&#x3D;updated_at|desc,position|asc&#x60;  (optional)

     - returns: RequestBuilder<InlineResponse2004> 
     */
    public class func getPaymentsWithRequestBuilder(includes includes: [String]? = nil, limit: Int32? = nil, orderBy: [String]? = nil) -> RequestBuilder<InlineResponse2004> {
        let path = "/payments"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "includes": includes,
            "limit": limit?.encodeToJSON(),
            "order_by": orderBy
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InlineResponse2004>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}