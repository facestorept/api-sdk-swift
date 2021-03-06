//
// ProductsAttributesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ProductsAttributesAPI: APIBase {
    /**

     - parameter attribute: (body) Attribute to add to the store 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addProductsAttributes(attribute attribute: Attribute, completion: ((data: [Attribute]?, error: ErrorType?) -> Void)) {
        addProductsAttributesWithRequestBuilder(attribute: attribute).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     - POST /attributes
     - Creates a new attribute of products in the store.
     - API Key:
       - type: apiKey APIToken 
       - name: APIKeyHeader
     - examples: [{contentType=application/json, example=[ {
  "is_searchable" : true,
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "options" : {
    "data" : {
      "aux_code" : "M",
      "updated_at" : "2000-01-23T04:56:07.000+00:00",
      "created_at" : "2000-01-23T04:56:07.000+00:00",
      "id" : 1,
      "position" : 1,
      "i18n" : {
        "name" : "name",
        "description" : "description",
        "locale" : "pt_PT"
      }
    }
  },
  "active" : true,
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : 0,
  "position" : 1,
  "i18n" : {
    "name" : "name",
    "description" : "description",
    "locale" : "pt_PT"
  }
}, {
  "is_searchable" : true,
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "options" : {
    "data" : {
      "aux_code" : "M",
      "updated_at" : "2000-01-23T04:56:07.000+00:00",
      "created_at" : "2000-01-23T04:56:07.000+00:00",
      "id" : 1,
      "position" : 1,
      "i18n" : {
        "name" : "name",
        "description" : "description",
        "locale" : "pt_PT"
      }
    }
  },
  "active" : true,
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : 0,
  "position" : 1,
  "i18n" : {
    "name" : "name",
    "description" : "description",
    "locale" : "pt_PT"
  }
} ]}]
     
     - parameter attribute: (body) Attribute to add to the store 

     - returns: RequestBuilder<[Attribute]> 
     */
    public class func addProductsAttributesWithRequestBuilder(attribute attribute: Attribute) -> RequestBuilder<[Attribute]> {
        let path = "/attributes"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = attribute.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Attribute]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**

     - parameter id: (path) ID of attribute to delete 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteProductAttributeById(id id: Int64, completion: ((error: ErrorType?) -> Void)) {
        deleteProductAttributeByIdWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     - DELETE /attributes/{id}/
     - deletes a single attribute of products based on the ID supplied
     - API Key:
       - type: apiKey APIToken 
       - name: APIKeyHeader
     
     - parameter id: (path) ID of attribute to delete 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteProductAttributeByIdWithRequestBuilder(id id: Int64) -> RequestBuilder<Void> {
        var path = "/attributes/{id}/"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**

     - parameter id: (path) ID of attribute to fetch 
     - parameter includes: (query) Include associated objects within response (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getProductAttributeById(id id: Int64, includes: [String]? = nil, completion: ((data: Attribute?, error: ErrorType?) -> Void)) {
        getProductAttributeByIdWithRequestBuilder(id: id, includes: includes).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     - GET /attributes/{id}/
     - Returns a attribute of products based on a single ID  ### Includes You can give the following values on includes parameter: `options` 
     - API Key:
       - type: apiKey APIToken 
       - name: APIKeyHeader
     - examples: [{contentType=application/json, example={
  "is_searchable" : true,
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "options" : {
    "data" : {
      "aux_code" : "M",
      "updated_at" : "2000-01-23T04:56:07.000+00:00",
      "created_at" : "2000-01-23T04:56:07.000+00:00",
      "id" : 1,
      "position" : 1,
      "i18n" : {
        "name" : "name",
        "description" : "description",
        "locale" : "pt_PT"
      }
    }
  },
  "active" : true,
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : 0,
  "position" : 1,
  "i18n" : {
    "name" : "name",
    "description" : "description",
    "locale" : "pt_PT"
  }
}}]
     
     - parameter id: (path) ID of attribute to fetch 
     - parameter includes: (query) Include associated objects within response (optional)

     - returns: RequestBuilder<Attribute> 
     */
    public class func getProductAttributeByIdWithRequestBuilder(id id: Int64, includes: [String]? = nil) -> RequestBuilder<Attribute> {
        var path = "/attributes/{id}/"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "includes": includes
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Attribute>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**

     - parameter includes: (query) Include associated objects within response (optional)
     - parameter limit: (query) max records to return (optional)
     - parameter orderBy: (query) Specify the field to be sorted, examples:  - &#x60;?order_by&#x3D;id|desc&#x60; - &#x60;?order_by&#x3D;updated_at|desc,position|asc&#x60;  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getProductsAttributes(includes includes: [String]? = nil, limit: Int32? = nil, orderBy: [String]? = nil, completion: ((data: [Attribute]?, error: ErrorType?) -> Void)) {
        getProductsAttributesWithRequestBuilder(includes: includes, limit: limit, orderBy: orderBy).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     - GET /attributes
     - Returns all attributes of products from the system that the user has access to  ### Includes You can give the following values on includes parameter: `options` 
     - API Key:
       - type: apiKey APIToken 
       - name: APIKeyHeader
     - examples: [{contentType=application/json, example=[ {
  "is_searchable" : true,
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "options" : {
    "data" : {
      "aux_code" : "M",
      "updated_at" : "2000-01-23T04:56:07.000+00:00",
      "created_at" : "2000-01-23T04:56:07.000+00:00",
      "id" : 1,
      "position" : 1,
      "i18n" : {
        "name" : "name",
        "description" : "description",
        "locale" : "pt_PT"
      }
    }
  },
  "active" : true,
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : 0,
  "position" : 1,
  "i18n" : {
    "name" : "name",
    "description" : "description",
    "locale" : "pt_PT"
  }
}, {
  "is_searchable" : true,
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "options" : {
    "data" : {
      "aux_code" : "M",
      "updated_at" : "2000-01-23T04:56:07.000+00:00",
      "created_at" : "2000-01-23T04:56:07.000+00:00",
      "id" : 1,
      "position" : 1,
      "i18n" : {
        "name" : "name",
        "description" : "description",
        "locale" : "pt_PT"
      }
    }
  },
  "active" : true,
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : 0,
  "position" : 1,
  "i18n" : {
    "name" : "name",
    "description" : "description",
    "locale" : "pt_PT"
  }
} ]}]
     
     - parameter includes: (query) Include associated objects within response (optional)
     - parameter limit: (query) max records to return (optional)
     - parameter orderBy: (query) Specify the field to be sorted, examples:  - &#x60;?order_by&#x3D;id|desc&#x60; - &#x60;?order_by&#x3D;updated_at|desc,position|asc&#x60;  (optional)

     - returns: RequestBuilder<[Attribute]> 
     */
    public class func getProductsAttributesWithRequestBuilder(includes includes: [String]? = nil, limit: Int32? = nil, orderBy: [String]? = nil) -> RequestBuilder<[Attribute]> {
        let path = "/attributes"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "includes": includes,
            "limit": limit?.encodeToJSON(),
            "order_by": orderBy
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Attribute]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**

     - parameter id: (path) ID of attribute to update 
     - parameter productAttribute: (body) Attribute to add to the store 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateProductAttributeById(id id: Int64, productAttribute: Attribute, completion: ((data: Attribute?, error: ErrorType?) -> Void)) {
        updateProductAttributeByIdWithRequestBuilder(id: id, productAttribute: productAttribute).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     - PUT /attributes/{id}/
     - update a single attribute of products based on the ID supplied
     - API Key:
       - type: apiKey APIToken 
       - name: APIKeyHeader
     - examples: [{contentType=application/json, example={
  "is_searchable" : true,
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "options" : {
    "data" : {
      "aux_code" : "M",
      "updated_at" : "2000-01-23T04:56:07.000+00:00",
      "created_at" : "2000-01-23T04:56:07.000+00:00",
      "id" : 1,
      "position" : 1,
      "i18n" : {
        "name" : "name",
        "description" : "description",
        "locale" : "pt_PT"
      }
    }
  },
  "active" : true,
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : 0,
  "position" : 1,
  "i18n" : {
    "name" : "name",
    "description" : "description",
    "locale" : "pt_PT"
  }
}}]
     
     - parameter id: (path) ID of attribute to update 
     - parameter productAttribute: (body) Attribute to add to the store 

     - returns: RequestBuilder<Attribute> 
     */
    public class func updateProductAttributeByIdWithRequestBuilder(id id: Int64, productAttribute: Attribute) -> RequestBuilder<Attribute> {
        var path = "/attributes/{id}/"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = productAttribute.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Attribute>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
