// Code generated by Wire protocol buffer compiler, do not edit.
// Source: com.squareup.wire.protos.kotlin.KeywordKotlin in keyword.proto
import Foundation
import Wire

public struct KeywordKotlin : Equatable, Proto2Codable, Codable {

    public var object: String?
    public var when: Int32?
    public var unknownFields: Data = .init()

    public init(object: String? = nil, when: Int32? = nil) {
        self.object = object
        self.when = when
    }

    public init(from reader: ProtoReader) throws {
        var object: String? = nil
        var when: Int32? = nil

        let unknownFields = try reader.forEachTag { tag in
            switch tag {
                case 1: object = try reader.decode(String.self)
                case 2: when = try reader.decode(Int32.self)
                default: try reader.readUnknownField(tag: tag)
            }
        }

        self.object = object
        self.when = when
        self.unknownFields = unknownFields
    }

    public func encode(to writer: ProtoWriter) throws {
        try writer.encode(tag: 1, value: object)
        try writer.encode(tag: 2, value: when)
        try writer.writeUnknownFields(unknownFields)
    }

    private enum CodingKeys : String, CodingKey {

        case object
        case when

    }

}
