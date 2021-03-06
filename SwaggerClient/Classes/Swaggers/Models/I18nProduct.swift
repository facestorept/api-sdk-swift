//
// I18nProduct.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class I18nProduct: JSONEncodable {
    public var locale: String?
    public var name: String?
    public var synopsis: String?
    public var description: String?
    public var characteristics: String?
    public var seo: I18nProductSeo?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["locale"] = self.locale
        nillableDictionary["name"] = self.name
        nillableDictionary["synopsis"] = self.synopsis
        nillableDictionary["description"] = self.description
        nillableDictionary["characteristics"] = self.characteristics
        nillableDictionary["seo"] = self.seo?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
