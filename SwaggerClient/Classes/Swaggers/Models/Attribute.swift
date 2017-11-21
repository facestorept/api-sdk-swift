//
// Attribute.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Attribute: JSONEncodable {
    public var id: Int64?
    public var position: Int64?
    public var isSearchable: Bool?
    public var active: Bool?
    public var options: AttributeOptions?
    public var i18n: I18n?
    public var createdAt: NSDate?
    public var updatedAt: NSDate?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["position"] = self.position?.encodeToJSON()
        nillableDictionary["is_searchable"] = self.isSearchable
        nillableDictionary["active"] = self.active
        nillableDictionary["options"] = self.options?.encodeToJSON()
        nillableDictionary["i18n"] = self.i18n?.encodeToJSON()
        nillableDictionary["created_at"] = self.createdAt?.encodeToJSON()
        nillableDictionary["updated_at"] = self.updatedAt?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
