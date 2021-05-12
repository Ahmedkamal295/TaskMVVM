//
//  HomeModel.swift
//  TaskMVVM
//
//  Created by Ahmed kamal on 5/12/21.
//

import Foundation
struct HomeModel : Codable {
    let status : String?
    let copyright : String?
    let response : Response?

    enum CodingKeys: String, CodingKey {

        case status = "status"
        case copyright = "copyright"
        case response = "response"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        status = try values.decodeIfPresent(String.self, forKey: .status)
        copyright = try values.decodeIfPresent(String.self, forKey: .copyright)
        response = try values.decodeIfPresent(Response.self, forKey: .response)
    }

}
struct Response : Codable {
    let docs : [HomeDocs]?
    let meta : Meta?

    enum CodingKeys: String, CodingKey {

        case docs = "docs"
        case meta = "meta"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        docs = try values.decodeIfPresent([HomeDocs].self, forKey: .docs)
        meta = try values.decodeIfPresent(Meta.self, forKey: .meta)
    }

}

struct HomeDocs : Codable {
    let abstract : String?
    let web_url : String?
    let snippet : String?
    let lead_paragraph : String?
    let source : String?
    let multimedia : [Multimedia]?
    let headline : HomeHeadline?
    let keywordswords : [Keywords]?
    let pub_date : String?
    let document_type : String?
    let news_desk : String?
    let section_name : String?
    let subsection_name : String?
    let byline : HomeByline?
    let type_of_material : String?
    let _id : String?
    let word_count : Int?
    let uri : String?

    enum CodingKeys: String, CodingKey {

        case abstract = "abstract"
        case web_url = "web_url"
        case snippet = "snippet"
        case lead_paragraph = "lead_paragraph"
        case source = "source"
        case multimedia = "multimedia"
        case headline = "headline"
        case keywordswords = "keywords"
        case pub_date = "pub_date"
        case document_type = "document_type"
        case news_desk = "news_desk"
        case section_name = "section_name"
        case subsection_name = "subsection_name"
        case byline = "byline"
        case type_of_material = "type_of_material"
        case _id = "_id"
        case word_count = "word_count"
        case uri = "uri"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        abstract = try values.decodeIfPresent(String.self, forKey: .abstract)
        web_url = try values.decodeIfPresent(String.self, forKey: .web_url)
        snippet = try values.decodeIfPresent(String.self, forKey: .snippet)
        lead_paragraph = try values.decodeIfPresent(String.self, forKey: .lead_paragraph)
        source = try values.decodeIfPresent(String.self, forKey: .source)
        multimedia = try values.decodeIfPresent([Multimedia].self, forKey: .multimedia)
        headline = try values.decodeIfPresent(HomeHeadline.self, forKey: .headline)
        keywordswords = try values.decodeIfPresent([Keywords].self, forKey: .keywordswords)
        pub_date = try values.decodeIfPresent(String.self, forKey: .pub_date)
        document_type = try values.decodeIfPresent(String.self, forKey: .document_type)
        news_desk = try values.decodeIfPresent(String.self, forKey: .news_desk)
        section_name = try values.decodeIfPresent(String.self, forKey: .section_name)
        subsection_name = try values.decodeIfPresent(String.self, forKey: .subsection_name)
        byline = try values.decodeIfPresent(HomeByline.self, forKey: .byline)
        type_of_material = try values.decodeIfPresent(String.self, forKey: .type_of_material)
        _id = try values.decodeIfPresent(String.self, forKey: ._id)
        word_count = try values.decodeIfPresent(Int.self, forKey: .word_count)
        uri = try values.decodeIfPresent(String.self, forKey: .uri)
    }

}

struct HomeHeadline : Codable {
    let main : String?
    let kicker : String?
    let content_kicker : String?
    let print_headline : String?
    let name : String?
    let seo : String?
    let sub : String?

    enum CodingKeys: String, CodingKey {

        case main = "main"
        case kicker = "kicker"
        case content_kicker = "content_kicker"
        case print_headline = "print_headline"
        case name = "name"
        case seo = "seo"
        case sub = "sub"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        main = try values.decodeIfPresent(String.self, forKey: .main)
        kicker = try values.decodeIfPresent(String.self, forKey: .kicker)
        content_kicker = try values.decodeIfPresent(String.self, forKey: .content_kicker)
        print_headline = try values.decodeIfPresent(String.self, forKey: .print_headline)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        seo = try values.decodeIfPresent(String.self, forKey: .seo)
        sub = try values.decodeIfPresent(String.self, forKey: .sub)
    }

}

struct HomeByline : Codable {
    let original : String?
    let person : [HomePerson]?
    let organization : String?

    enum CodingKeys: String, CodingKey {

        case original = "original"
        case person = "person"
        case organization = "organization"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        original = try values.decodeIfPresent(String.self, forKey: .original)
        person = try values.decodeIfPresent([HomePerson].self, forKey: .person)
        organization = try values.decodeIfPresent(String.self, forKey: .organization)
    }

}
struct HomePerson : Codable {
    let firstname : String?
    let middlename : String?
    let lastname : String?
    let qualifier : String?
    let title : String?
    let role : String?
    let organization : String?
    let rank : Int?

    enum CodingKeys: String, CodingKey {

        case firstname = "firstname"
        case middlename = "middlename"
        case lastname = "lastname"
        case qualifier = "qualifier"
        case title = "title"
        case role = "role"
        case organization = "organization"
        case rank = "rank"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        firstname = try values.decodeIfPresent(String.self, forKey: .firstname)
        middlename = try values.decodeIfPresent(String.self, forKey: .middlename)
        lastname = try values.decodeIfPresent(String.self, forKey: .lastname)
        qualifier = try values.decodeIfPresent(String.self, forKey: .qualifier)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        role = try values.decodeIfPresent(String.self, forKey: .role)
        organization = try values.decodeIfPresent(String.self, forKey: .organization)
        rank = try values.decodeIfPresent(Int.self, forKey: .rank)
    }

}
struct Multimedia : Codable {
    let rank : Int?
    let subtype : String?
    let caption : String?
    let credit : String?
    let type : String?
    let url : String?
    let height : Int?
    let width : Int?
    let legacy : Legacy?
    let subType : String?
    let crop_name : String?

    enum CodingKeys: String, CodingKey {

        case rank = "rank"
        case subtype = "subtype"
        case caption = "caption"
        case credit = "credit"
        case type = "type"
        case url = "url"
        case height = "height"
        case width = "width"
        case legacy = "legacy"
        case subType = "subType"
        case crop_name = "crop_name"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        rank = try values.decodeIfPresent(Int.self, forKey: .rank)
        subtype = try values.decodeIfPresent(String.self, forKey: .subtype)
        caption = try values.decodeIfPresent(String.self, forKey: .caption)
        credit = try values.decodeIfPresent(String.self, forKey: .credit)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        url = try values.decodeIfPresent(String.self, forKey: .url)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        width = try values.decodeIfPresent(Int.self, forKey: .width)
        legacy = try values.decodeIfPresent(Legacy.self, forKey: .legacy)
        subType = try values.decodeIfPresent(String.self, forKey: .subType)
        crop_name = try values.decodeIfPresent(String.self, forKey: .crop_name)
    }

}
struct Meta : Codable {
    let hits : Int?
    let offset : Int?
    let time : Int?

    enum CodingKeys: String, CodingKey {

        case hits = "hits"
        case offset = "offset"
        case time = "time"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        hits = try values.decodeIfPresent(Int.self, forKey: .hits)
        offset = try values.decodeIfPresent(Int.self, forKey: .offset)
        time = try values.decodeIfPresent(Int.self, forKey: .time)
    }

}
struct Keywords : Codable {
    let name : String?
    let value : String?
    let rank : Int?
    let major : String?

    enum CodingKeys: String, CodingKey {

        case name = "name"
        case value = "value"
        case rank = "rank"
        case major = "major"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        value = try values.decodeIfPresent(String.self, forKey: .value)
        rank = try values.decodeIfPresent(Int.self, forKey: .rank)
        major = try values.decodeIfPresent(String.self, forKey: .major)
    }

}
struct Legacy : Codable {
    let xlarge : String?
    let xlargewidth : Int?
    let xlargeheight : Int?

    enum CodingKeys: String, CodingKey {

        case xlarge = "xlarge"
        case xlargewidth = "xlargewidth"
        case xlargeheight = "xlargeheight"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        xlarge = try values.decodeIfPresent(String.self, forKey: .xlarge)
        xlargewidth = try values.decodeIfPresent(Int.self, forKey: .xlargewidth)
        xlargeheight = try values.decodeIfPresent(Int.self, forKey: .xlargeheight)
    }

}
