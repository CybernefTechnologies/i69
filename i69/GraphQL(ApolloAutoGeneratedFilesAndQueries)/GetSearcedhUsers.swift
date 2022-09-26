// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class GetSearcedhUsersQuery: GraphQLQuery {
    /// The raw GraphQL definition of this operation.
    public let operationDefinition: String =
    """
    query GetSearcedhUsers($interestedIn: Int!, $limit: Int!, $id: String!, $minHeight: Int!, $maxHeight: Int!, $minAge: Int!, $maxAge: Int!, $familyPlan: Int!, $politics: Int!, $religious: Int!, $zodiacSign: Int!, $searchKey: String!) {
      randomUsers(
        interestedIn: $interestedIn
        limit: $limit
        id: $id
        minHeight: $minHeight
        maxHeight: $maxHeight
        minAge: $minAge
        maxAge: $maxAge
        familyPlan: $familyPlan
        politics: $politics
        religious: $religious
        zodiacSign: $zodiacSign
        searchKey: $searchKey
      ) {
        __typename
        id
        username
        fullName
        email
        photosQuota
        avatarPhotos {
          __typename
          id
          url
        }
        purchaseCoins
        isOnline
        gender
        age
        height
        about
        avatarIndex
        location
        familyPlans
        religion
        politics
        interestedIn
        tags
        sportsTeams
        books
        education
        zodiacSign
        movies
        music
        ethinicity
        tvShows
        work
        avatar {
          __typename
          url
        }
        likes {
          __typename
          id
          username
          fullName
          avatarPhotos {
            __typename
            id
            url
          }
        }
        blockedUsers {
          __typename
          id
          username
          fullName
          avatarPhotos {
            __typename
            id
            url
          }
        }
      }
      popularUsers(
        interestedIn: $interestedIn
        limit: $limit
        id: $id
        minHeight: $minHeight
        maxHeight: $maxHeight
        minAge: $minAge
        maxAge: $maxAge
        familyPlan: $familyPlan
        politics: $politics
        religious: $religious
        zodiacSign: $zodiacSign
        searchKey: $searchKey
      ) {
        __typename
        id
        username
        fullName
        email
        photosQuota
        avatarPhotos {
          __typename
          id
          url
        }
        purchaseCoins
        isOnline
        gender
        age
        height
        about
        avatarIndex
        location
        familyPlans
        religion
        politics
        interestedIn
        tags
        sportsTeams
        books
        education
        zodiacSign
        movies
        music
        ethinicity
        tvShows
        work
        avatar {
          __typename
          url
        }
        likes {
          __typename
          id
          username
          fullName
          avatarPhotos {
            __typename
            id
            url
          }
        }
        blockedUsers {
          __typename
          id
          username
          fullName
          avatarPhotos {
            __typename
            id
            url
          }
        }
      }
    }
    """
    
    public let operationName: String = "GetSearcedhUsers"
    
    public var interestedIn: Int
    public var limit: Int
    public var id: String
    public var minHeight: Int
    public var maxHeight: Int
    public var minAge: Int
    public var maxAge: Int
    public var familyPlan: Int
    public var politics: Int
    public var religious: Int
    public var zodiacSign: Int
    public var searchKey: String
    
    public init(interestedIn: Int, limit: Int, id: String, minHeight: Int, maxHeight: Int, minAge: Int, maxAge: Int, familyPlan: Int, politics: Int, religious: Int, zodiacSign: Int, searchKey: String) {
        self.interestedIn = interestedIn
        self.limit = limit
        self.id = id
        self.minHeight = minHeight
        self.maxHeight = maxHeight
        self.minAge = minAge
        self.maxAge = maxAge
        self.familyPlan = familyPlan
        self.politics = politics
        self.religious = religious
        self.zodiacSign = zodiacSign
        self.searchKey = searchKey
    }
    public init(searchKey : String)
    {
        self.interestedIn = StorageHelper.shared.selectedInterestId
        self.limit = 30
        self.id = StorageHelper.shared.user?.id ?? ""
        self.minHeight = StorageHelper.shared.minHeight
        self.maxHeight = StorageHelper.shared.maxHeight
        self.minAge = StorageHelper.shared.minAge
        self.maxAge = StorageHelper.shared.maxAge
        self.familyPlan = StorageHelper.shared.optionsId[pickerType.familyPicker.rawValue] ?? -1
        self.politics = StorageHelper.shared.optionsId[pickerType.politicsPicker.rawValue] ?? -1
        self.religious = StorageHelper.shared.optionsId[pickerType.religiousPicker.rawValue] ?? -1
        self.zodiacSign = StorageHelper.shared.optionsId[pickerType.zodiacSignPicker.rawValue] ?? -1
        self.searchKey = searchKey
    }
    
    public var variables: GraphQLMap? {
        return ["interestedIn": interestedIn, "limit": limit, "id": id, "minHeight": minHeight, "maxHeight": maxHeight, "minAge": minAge, "maxAge": maxAge, "familyPlan": familyPlan, "politics": politics, "religious": religious, "zodiacSign": zodiacSign, "searchKey": searchKey]
    }
    
    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Query"]
        
        public static var selections: [GraphQLSelection] {
            return [
                GraphQLField("randomUsers", arguments: ["interestedIn": GraphQLVariable("interestedIn"), "limit": GraphQLVariable("limit"), "id": GraphQLVariable("id"), "minHeight": GraphQLVariable("minHeight"), "maxHeight": GraphQLVariable("maxHeight"), "minAge": GraphQLVariable("minAge"), "maxAge": GraphQLVariable("maxAge"), "familyPlan": GraphQLVariable("familyPlan"), "politics": GraphQLVariable("politics"), "religious": GraphQLVariable("religious"), "zodiacSign": GraphQLVariable("zodiacSign"), "searchKey": GraphQLVariable("searchKey")], type: .list(.object(RandomUser.selections))),
                GraphQLField("popularUsers", arguments: ["interestedIn": GraphQLVariable("interestedIn"), "limit": GraphQLVariable("limit"), "id": GraphQLVariable("id"), "minHeight": GraphQLVariable("minHeight"), "maxHeight": GraphQLVariable("maxHeight"), "minAge": GraphQLVariable("minAge"), "maxAge": GraphQLVariable("maxAge"), "familyPlan": GraphQLVariable("familyPlan"), "politics": GraphQLVariable("politics"), "religious": GraphQLVariable("religious"), "zodiacSign": GraphQLVariable("zodiacSign"), "searchKey": GraphQLVariable("searchKey")], type: .list(.object(GetUserProfileByIdQuery.Data.User.selections))),
            ]
        }
        
        public private(set) var resultMap: ResultMap
        
        public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
        }
        
        public init(randomUsers: [GetUserProfileByIdQuery.Data.User?]? = nil, popularUsers: [GetUserProfileByIdQuery.Data.User?]? = nil) {
            self.init(unsafeResultMap: ["__typename": "Query", "randomUsers": randomUsers.flatMap { (value: [GetUserProfileByIdQuery.Data.User?]) -> [ResultMap?] in value.map { (value: GetUserProfileByIdQuery.Data.User?) -> ResultMap? in value.flatMap { (value: GetUserProfileByIdQuery.Data.User) -> ResultMap in value.resultMap } } }, "popularUsers": popularUsers.flatMap { (value: [GetUserProfileByIdQuery.Data.User?]) -> [ResultMap?] in value.map { (value: GetUserProfileByIdQuery.Data.User?) -> ResultMap? in value.flatMap { (value: GetUserProfileByIdQuery.Data.User) -> ResultMap in value.resultMap } } }])
        }//GetUserProfileByIdQuery.Data.User
        /// Search users based on their age, interest, height or gender
        public var randomUsers: [GetUserProfileByIdQuery.Data.User?]? {
            get {
                return (resultMap["randomUsers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [GetUserProfileByIdQuery.Data.User?] in value.map { (value: ResultMap?) -> GetUserProfileByIdQuery.Data.User? in value.flatMap { (value: ResultMap) -> GetUserProfileByIdQuery.Data.User in GetUserProfileByIdQuery.Data.User(unsafeResultMap: value) } } }
            }
            set {
                resultMap.updateValue(newValue.flatMap { (value: [GetUserProfileByIdQuery.Data.User?]) -> [ResultMap?] in value.map { (value: GetUserProfileByIdQuery.Data.User?) -> ResultMap? in value.flatMap { (value: GetUserProfileByIdQuery.Data.User) -> ResultMap in value.resultMap } } }, forKey: "randomUsers")
            }
        }
        
        /// Search users based on their age, interest, height or gender
        public var popularUsers: [GetUserProfileByIdQuery.Data.User?]? {
            get {
                return (resultMap["popularUsers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [GetUserProfileByIdQuery.Data.User?] in value.map { (value: ResultMap?) -> GetUserProfileByIdQuery.Data.User? in value.flatMap { (value: ResultMap) -> GetUserProfileByIdQuery.Data.User in GetUserProfileByIdQuery.Data.User(unsafeResultMap: value) } } }
            }
            set {
                resultMap.updateValue(newValue.flatMap { (value: [GetUserProfileByIdQuery.Data.User?]) -> [ResultMap?] in value.map { (value: GetUserProfileByIdQuery.Data.User?) -> ResultMap? in value.flatMap { (value: GetUserProfileByIdQuery.Data.User) -> ResultMap in value.resultMap } } }, forKey: "popularUsers")
            }
        }
        
        public struct RandomUser: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["UserType"]
            
            public static var selections: [GraphQLSelection] {
                return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("id", type: .scalar(String.self)),
                    GraphQLField("username", type: .scalar(String.self)),
                    GraphQLField("fullName", type: .scalar(String.self)),
                    GraphQLField("email", type: .scalar(String.self)),
                    GraphQLField("photosQuota", type: .scalar(Int.self)),
                    GraphQLField("avatarPhotos", type: .list(.object(AvatarPhoto.selections))),
                    GraphQLField("purchaseCoins", type: .scalar(Int.self)),
                    GraphQLField("isOnline", type: .scalar(Bool.self)),
                    GraphQLField("gender", type: .scalar(Int.self)),
                    GraphQLField("age", type: .scalar(Int.self)),
                    GraphQLField("height", type: .scalar(Int.self)),
                    GraphQLField("about", type: .scalar(String.self)),
                    GraphQLField("avatarIndex", type: .nonNull(.scalar(Int.self))),
                    GraphQLField("location", type: .list(.scalar(Double.self))),
                    GraphQLField("familyPlans", type: .scalar(Int.self)),
                    GraphQLField("religion", type: .scalar(Int.self)),
                    GraphQLField("politics", type: .scalar(Int.self)),
                    GraphQLField("interestedIn", type: .list(.scalar(Int.self))),
                    GraphQLField("tags", type: .list(.scalar(Int.self))),
                    GraphQLField("sportsTeams", type: .list(.scalar(String.self))),
                    GraphQLField("books", type: .list(.scalar(String.self))),
                    GraphQLField("education", type: .scalar(String.self)),
                    GraphQLField("zodiacSign", type: .scalar(Int.self)),
                    GraphQLField("movies", type: .list(.scalar(String.self))),
                    GraphQLField("music", type: .list(.scalar(String.self))),
                    GraphQLField("ethinicity", type: .scalar(Int.self)),
                    GraphQLField("tvShows", type: .list(.scalar(String.self))),
                    GraphQLField("work", type: .scalar(String.self)),
                    GraphQLField("avatar", type: .object(Avatar.selections)),
                    GraphQLField("likes", type: .list(.object(Like.selections))),
                    GraphQLField("blockedUsers", type: .list(.object(BlockedUser.selections))),
                ]
            }
            
            public private(set) var resultMap: ResultMap
            
            public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
            }
            
            public init(id: String? = nil, username: String? = nil, fullName: String? = nil, email: String? = nil, photosQuota: Int? = nil, avatarPhotos: [AvatarPhoto?]? = nil, purchaseCoins: Int? = nil, isOnline: Bool? = nil, gender: Int? = nil, age: Int? = nil, height: Int? = nil, about: String? = nil, avatarIndex: Int, location: [Double?]? = nil, familyPlans: Int? = nil, religion: Int? = nil, politics: Int? = nil, interestedIn: [Int?]? = nil, tags: [Int?]? = nil, sportsTeams: [String?]? = nil, books: [String?]? = nil, education: String? = nil, zodiacSign: Int? = nil, movies: [String?]? = nil, music: [String?]? = nil, ethinicity: Int? = nil, tvShows: [String?]? = nil, work: String? = nil, avatar: Avatar? = nil, likes: [Like?]? = nil, blockedUsers: [BlockedUser?]? = nil) {
                self.init(unsafeResultMap: ["__typename": "UserType", "id": id, "username": username, "fullName": fullName, "email": email, "photosQuota": photosQuota, "avatarPhotos": avatarPhotos.flatMap { (value: [AvatarPhoto?]) -> [ResultMap?] in value.map { (value: AvatarPhoto?) -> ResultMap? in value.flatMap { (value: AvatarPhoto) -> ResultMap in value.resultMap } } }, "purchaseCoins": purchaseCoins, "isOnline": isOnline, "gender": gender, "age": age, "height": height, "about": about, "avatarIndex": avatarIndex, "location": location, "familyPlans": familyPlans, "religion": religion, "politics": politics, "interestedIn": interestedIn, "tags": tags, "sportsTeams": sportsTeams, "books": books, "education": education, "zodiacSign": zodiacSign, "movies": movies, "music": music, "ethinicity": ethinicity, "tvShows": tvShows, "work": work, "avatar": avatar.flatMap { (value: Avatar) -> ResultMap in value.resultMap }, "likes": likes.flatMap { (value: [Like?]) -> [ResultMap?] in value.map { (value: Like?) -> ResultMap? in value.flatMap { (value: Like) -> ResultMap in value.resultMap } } }, "blockedUsers": blockedUsers.flatMap { (value: [BlockedUser?]) -> [ResultMap?] in value.map { (value: BlockedUser?) -> ResultMap? in value.flatMap { (value: BlockedUser) -> ResultMap in value.resultMap } } }])
            }
            
            public var __typename: String {
                get {
                    return resultMap["__typename"]! as! String
                }
                set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                }
            }
            
            public var id: String? {
                get {
                    return resultMap["id"] as? String
                }
                set {
                    resultMap.updateValue(newValue, forKey: "id")
                }
            }
            
            public var username: String? {
                get {
                    return resultMap["username"] as? String
                }
                set {
                    resultMap.updateValue(newValue, forKey: "username")
                }
            }
            
            public var fullName: String? {
                get {
                    return resultMap["fullName"] as? String
                }
                set {
                    resultMap.updateValue(newValue, forKey: "fullName")
                }
            }
            
            public var email: String? {
                get {
                    return resultMap["email"] as? String
                }
                set {
                    resultMap.updateValue(newValue, forKey: "email")
                }
            }
            
            public var photosQuota: Int? {
                get {
                    return resultMap["photosQuota"] as? Int
                }
                set {
                    resultMap.updateValue(newValue, forKey: "photosQuota")
                }
            }
            
            public var avatarPhotos: [AvatarPhoto?]? {
                get {
                    return (resultMap["avatarPhotos"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [AvatarPhoto?] in value.map { (value: ResultMap?) -> AvatarPhoto? in value.flatMap { (value: ResultMap) -> AvatarPhoto in AvatarPhoto(unsafeResultMap: value) } } }
                }
                set {
                    resultMap.updateValue(newValue.flatMap { (value: [AvatarPhoto?]) -> [ResultMap?] in value.map { (value: AvatarPhoto?) -> ResultMap? in value.flatMap { (value: AvatarPhoto) -> ResultMap in value.resultMap } } }, forKey: "avatarPhotos")
                }
            }
            
            public var purchaseCoins: Int? {
                get {
                    return resultMap["purchaseCoins"] as? Int
                }
                set {
                    resultMap.updateValue(newValue, forKey: "purchaseCoins")
                }
            }
            
            public var isOnline: Bool? {
                get {
                    return resultMap["isOnline"] as? Bool
                }
                set {
                    resultMap.updateValue(newValue, forKey: "isOnline")
                }
            }
            
            public var gender: Int? {
                get {
                    return resultMap["gender"] as? Int
                }
                set {
                    resultMap.updateValue(newValue, forKey: "gender")
                }
            }
            
            public var age: Int? {
                get {
                    return resultMap["age"] as? Int
                }
                set {
                    resultMap.updateValue(newValue, forKey: "age")
                }
            }
            
            public var height: Int? {
                get {
                    return resultMap["height"] as? Int
                }
                set {
                    resultMap.updateValue(newValue, forKey: "height")
                }
            }
            
            public var about: String? {
                get {
                    return resultMap["about"] as? String
                }
                set {
                    resultMap.updateValue(newValue, forKey: "about")
                }
            }
            
            public var avatarIndex: Int {
                get {
                    return resultMap["avatarIndex"]! as! Int
                }
                set {
                    resultMap.updateValue(newValue, forKey: "avatarIndex")
                }
            }
            
            public var location: [Double?]? {
                get {
                    return resultMap["location"] as? [Double?]
                }
                set {
                    resultMap.updateValue(newValue, forKey: "location")
                }
            }
            
            public var familyPlans: Int? {
                get {
                    return resultMap["familyPlans"] as? Int
                }
                set {
                    resultMap.updateValue(newValue, forKey: "familyPlans")
                }
            }
            
            public var religion: Int? {
                get {
                    return resultMap["religion"] as? Int
                }
                set {
                    resultMap.updateValue(newValue, forKey: "religion")
                }
            }
            
            public var politics: Int? {
                get {
                    return resultMap["politics"] as? Int
                }
                set {
                    resultMap.updateValue(newValue, forKey: "politics")
                }
            }
            
            public var interestedIn: [Int?]? {
                get {
                    return resultMap["interestedIn"] as? [Int?]
                }
                set {
                    resultMap.updateValue(newValue, forKey: "interestedIn")
                }
            }
            
            public var tags: [Int?]? {
                get {
                    return resultMap["tags"] as? [Int?]
                }
                set {
                    resultMap.updateValue(newValue, forKey: "tags")
                }
            }
            
            public var sportsTeams: [String?]? {
                get {
                    return resultMap["sportsTeams"] as? [String?]
                }
                set {
                    resultMap.updateValue(newValue, forKey: "sportsTeams")
                }
            }
            
            public var books: [String?]? {
                get {
                    return resultMap["books"] as? [String?]
                }
                set {
                    resultMap.updateValue(newValue, forKey: "books")
                }
            }
            
            public var education: String? {
                get {
                    return resultMap["education"] as? String
                }
                set {
                    resultMap.updateValue(newValue, forKey: "education")
                }
            }
            
            public var zodiacSign: Int? {
                get {
                    return resultMap["zodiacSign"] as? Int
                }
                set {
                    resultMap.updateValue(newValue, forKey: "zodiacSign")
                }
            }
            
            public var movies: [String?]? {
                get {
                    return resultMap["movies"] as? [String?]
                }
                set {
                    resultMap.updateValue(newValue, forKey: "movies")
                }
            }
            
            public var music: [String?]? {
                get {
                    return resultMap["music"] as? [String?]
                }
                set {
                    resultMap.updateValue(newValue, forKey: "music")
                }
            }
            
            public var ethinicity: Int? {
                get {
                    return resultMap["ethinicity"] as? Int
                }
                set {
                    resultMap.updateValue(newValue, forKey: "ethinicity")
                }
            }
            
            public var tvShows: [String?]? {
                get {
                    return resultMap["tvShows"] as? [String?]
                }
                set {
                    resultMap.updateValue(newValue, forKey: "tvShows")
                }
            }
            
            public var work: String? {
                get {
                    return resultMap["work"] as? String
                }
                set {
                    resultMap.updateValue(newValue, forKey: "work")
                }
            }
            
            public var avatar: Avatar? {
                get {
                    return (resultMap["avatar"] as? ResultMap).flatMap { Avatar(unsafeResultMap: $0) }
                }
                set {
                    resultMap.updateValue(newValue?.resultMap, forKey: "avatar")
                }
            }
            
            public var likes: [Like?]? {
                get {
                    return (resultMap["likes"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Like?] in value.map { (value: ResultMap?) -> Like? in value.flatMap { (value: ResultMap) -> Like in Like(unsafeResultMap: value) } } }
                }
                set {
                    resultMap.updateValue(newValue.flatMap { (value: [Like?]) -> [ResultMap?] in value.map { (value: Like?) -> ResultMap? in value.flatMap { (value: Like) -> ResultMap in value.resultMap } } }, forKey: "likes")
                }
            }
            
            public var blockedUsers: [BlockedUser?]? {
                get {
                    return (resultMap["blockedUsers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [BlockedUser?] in value.map { (value: ResultMap?) -> BlockedUser? in value.flatMap { (value: ResultMap) -> BlockedUser in BlockedUser(unsafeResultMap: value) } } }
                }
                set {
                    resultMap.updateValue(newValue.flatMap { (value: [BlockedUser?]) -> [ResultMap?] in value.map { (value: BlockedUser?) -> ResultMap? in value.flatMap { (value: BlockedUser) -> ResultMap in value.resultMap } } }, forKey: "blockedUsers")
                }
            }
            
            public struct AvatarPhoto: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["UserPhotoType"]
                
                public static var selections: [GraphQLSelection] {
                    return [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                        GraphQLField("url", type: .scalar(String.self)),
                    ]
                }
                
                public private(set) var resultMap: ResultMap
                
                public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                }
                
                public init(id: GraphQLID, url: String? = nil) {
                    self.init(unsafeResultMap: ["__typename": "UserPhotoType", "id": id, "url": url])
                }
                
                public var __typename: String {
                    get {
                        return resultMap["__typename"]! as! String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                    }
                }
                
                public var id: GraphQLID {
                    get {
                        return resultMap["id"]! as! GraphQLID
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "id")
                    }
                }
                
                public var url: String? {
                    get {
                        return resultMap["url"] as? String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "url")
                    }
                }
            }
            
            public struct Avatar: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["UserPhotoType"]
                
                public static var selections: [GraphQLSelection] {
                    return [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("url", type: .scalar(String.self)),
                    ]
                }
                
                public private(set) var resultMap: ResultMap
                
                public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                }
                
                public init(url: String? = nil) {
                    self.init(unsafeResultMap: ["__typename": "UserPhotoType", "url": url])
                }
                
                public var __typename: String {
                    get {
                        return resultMap["__typename"]! as! String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                    }
                }
                
                public var url: String? {
                    get {
                        return resultMap["url"] as? String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "url")
                    }
                }
            }
            
            public struct Like: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["likedUsersResponse"]
                
                public static var selections: [GraphQLSelection] {
                    return [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("id", type: .scalar(String.self)),
                        GraphQLField("username", type: .scalar(String.self)),
                        GraphQLField("fullName", type: .scalar(String.self)),
                        GraphQLField("avatarPhotos", type: .list(.object(AvatarPhoto.selections))),
                    ]
                }
                
                public private(set) var resultMap: ResultMap
                
                public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                }
                
                public init(id: String? = nil, username: String? = nil, fullName: String? = nil, avatarPhotos: [AvatarPhoto?]? = nil) {
                    self.init(unsafeResultMap: ["__typename": "likedUsersResponse", "id": id, "username": username, "fullName": fullName, "avatarPhotos": avatarPhotos.flatMap { (value: [AvatarPhoto?]) -> [ResultMap?] in value.map { (value: AvatarPhoto?) -> ResultMap? in value.flatMap { (value: AvatarPhoto) -> ResultMap in value.resultMap } } }])
                }
                
                public var __typename: String {
                    get {
                        return resultMap["__typename"]! as! String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                    }
                }
                
                public var id: String? {
                    get {
                        return resultMap["id"] as? String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "id")
                    }
                }
                
                public var username: String? {
                    get {
                        return resultMap["username"] as? String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "username")
                    }
                }
                
                public var fullName: String? {
                    get {
                        return resultMap["fullName"] as? String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "fullName")
                    }
                }
                
                public var avatarPhotos: [AvatarPhoto?]? {
                    get {
                        return (resultMap["avatarPhotos"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [AvatarPhoto?] in value.map { (value: ResultMap?) -> AvatarPhoto? in value.flatMap { (value: ResultMap) -> AvatarPhoto in AvatarPhoto(unsafeResultMap: value) } } }
                    }
                    set {
                        resultMap.updateValue(newValue.flatMap { (value: [AvatarPhoto?]) -> [ResultMap?] in value.map { (value: AvatarPhoto?) -> ResultMap? in value.flatMap { (value: AvatarPhoto) -> ResultMap in value.resultMap } } }, forKey: "avatarPhotos")
                    }
                }
                
                public struct AvatarPhoto: GraphQLSelectionSet {
                    public static let possibleTypes: [String] = ["UserPhotoType"]
                    
                    public static var selections: [GraphQLSelection] {
                        return [
                            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                            GraphQLField("url", type: .scalar(String.self)),
                        ]
                    }
                    
                    public private(set) var resultMap: ResultMap
                    
                    public init(unsafeResultMap: ResultMap) {
                        self.resultMap = unsafeResultMap
                    }
                    
                    public init(id: GraphQLID, url: String? = nil) {
                        self.init(unsafeResultMap: ["__typename": "UserPhotoType", "id": id, "url": url])
                    }
                    
                    public var __typename: String {
                        get {
                            return resultMap["__typename"]! as! String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "__typename")
                        }
                    }
                    
                    public var id: GraphQLID {
                        get {
                            return resultMap["id"]! as! GraphQLID
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "id")
                        }
                    }
                    
                    public var url: String? {
                        get {
                            return resultMap["url"] as? String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "url")
                        }
                    }
                }
            }
            
            public struct BlockedUser: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["blockedUsersResponse"]
                
                public static var selections: [GraphQLSelection] {
                    return [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("id", type: .scalar(String.self)),
                        GraphQLField("username", type: .scalar(String.self)),
                        GraphQLField("fullName", type: .scalar(String.self)),
                        GraphQLField("avatarPhotos", type: .list(.object(AvatarPhoto.selections))),
                    ]
                }
                
                public private(set) var resultMap: ResultMap
                
                public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                }
                
                public init(id: String? = nil, username: String? = nil, fullName: String? = nil, avatarPhotos: [AvatarPhoto?]? = nil) {
                    self.init(unsafeResultMap: ["__typename": "blockedUsersResponse", "id": id, "username": username, "fullName": fullName, "avatarPhotos": avatarPhotos.flatMap { (value: [AvatarPhoto?]) -> [ResultMap?] in value.map { (value: AvatarPhoto?) -> ResultMap? in value.flatMap { (value: AvatarPhoto) -> ResultMap in value.resultMap } } }])
                }
                
                public var __typename: String {
                    get {
                        return resultMap["__typename"]! as! String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                    }
                }
                
                public var id: String? {
                    get {
                        return resultMap["id"] as? String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "id")
                    }
                }
                
                public var username: String? {
                    get {
                        return resultMap["username"] as? String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "username")
                    }
                }
                
                public var fullName: String? {
                    get {
                        return resultMap["fullName"] as? String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "fullName")
                    }
                }
                
                public var avatarPhotos: [AvatarPhoto?]? {
                    get {
                        return (resultMap["avatarPhotos"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [AvatarPhoto?] in value.map { (value: ResultMap?) -> AvatarPhoto? in value.flatMap { (value: ResultMap) -> AvatarPhoto in AvatarPhoto(unsafeResultMap: value) } } }
                    }
                    set {
                        resultMap.updateValue(newValue.flatMap { (value: [AvatarPhoto?]) -> [ResultMap?] in value.map { (value: AvatarPhoto?) -> ResultMap? in value.flatMap { (value: AvatarPhoto) -> ResultMap in value.resultMap } } }, forKey: "avatarPhotos")
                    }
                }
                
                public struct AvatarPhoto: GraphQLSelectionSet {
                    public static let possibleTypes: [String] = ["UserPhotoType"]
                    
                    public static var selections: [GraphQLSelection] {
                        return [
                            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                            GraphQLField("url", type: .scalar(String.self)),
                        ]
                    }
                    
                    public private(set) var resultMap: ResultMap
                    
                    public init(unsafeResultMap: ResultMap) {
                        self.resultMap = unsafeResultMap
                    }
                    
                    public init(id: GraphQLID, url: String? = nil) {
                        self.init(unsafeResultMap: ["__typename": "UserPhotoType", "id": id, "url": url])
                    }
                    
                    public var __typename: String {
                        get {
                            return resultMap["__typename"]! as! String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "__typename")
                        }
                    }
                    
                    public var id: GraphQLID {
                        get {
                            return resultMap["id"]! as! GraphQLID
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "id")
                        }
                    }
                    
                    public var url: String? {
                        get {
                            return resultMap["url"] as? String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "url")
                        }
                    }
                }
            }
        }
        
        public struct PopularUser: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["UserType"]
            
            public static var selections: [GraphQLSelection] {
                return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("id", type: .scalar(String.self)),
                    GraphQLField("username", type: .scalar(String.self)),
                    GraphQLField("fullName", type: .scalar(String.self)),
                    GraphQLField("email", type: .scalar(String.self)),
                    GraphQLField("photosQuota", type: .scalar(Int.self)),
                    GraphQLField("avatarPhotos", type: .list(.object(AvatarPhoto.selections))),
                    GraphQLField("purchaseCoins", type: .scalar(Int.self)),
                    GraphQLField("isOnline", type: .scalar(Bool.self)),
                    GraphQLField("gender", type: .scalar(Int.self)),
                    GraphQLField("age", type: .scalar(Int.self)),
                    GraphQLField("height", type: .scalar(Int.self)),
                    GraphQLField("about", type: .scalar(String.self)),
                    GraphQLField("avatarIndex", type: .nonNull(.scalar(Int.self))),
                    GraphQLField("location", type: .list(.scalar(Double.self))),
                    GraphQLField("familyPlans", type: .scalar(Int.self)),
                    GraphQLField("religion", type: .scalar(Int.self)),
                    GraphQLField("politics", type: .scalar(Int.self)),
                    GraphQLField("interestedIn", type: .list(.scalar(Int.self))),
                    GraphQLField("tags", type: .list(.scalar(Int.self))),
                    GraphQLField("sportsTeams", type: .list(.scalar(String.self))),
                    GraphQLField("books", type: .list(.scalar(String.self))),
                    GraphQLField("education", type: .scalar(String.self)),
                    GraphQLField("zodiacSign", type: .scalar(Int.self)),
                    GraphQLField("movies", type: .list(.scalar(String.self))),
                    GraphQLField("music", type: .list(.scalar(String.self))),
                    GraphQLField("ethinicity", type: .scalar(Int.self)),
                    GraphQLField("tvShows", type: .list(.scalar(String.self))),
                    GraphQLField("work", type: .scalar(String.self)),
                    GraphQLField("avatar", type: .object(Avatar.selections)),
                    GraphQLField("likes", type: .list(.object(Like.selections))),
                    GraphQLField("blockedUsers", type: .list(.object(BlockedUser.selections))),
                ]
            }
            
            public private(set) var resultMap: ResultMap
            
            public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
            }
            
            public init(id: String? = nil, username: String? = nil, fullName: String? = nil, email: String? = nil, photosQuota: Int? = nil, avatarPhotos: [AvatarPhoto?]? = nil, purchaseCoins: Int? = nil, isOnline: Bool? = nil, gender: Int? = nil, age: Int? = nil, height: Int? = nil, about: String? = nil, avatarIndex: Int, location: [Double?]? = nil, familyPlans: Int? = nil, religion: Int? = nil, politics: Int? = nil, interestedIn: [Int?]? = nil, tags: [Int?]? = nil, sportsTeams: [String?]? = nil, books: [String?]? = nil, education: String? = nil, zodiacSign: Int? = nil, movies: [String?]? = nil, music: [String?]? = nil, ethinicity: Int? = nil, tvShows: [String?]? = nil, work: String? = nil, avatar: Avatar? = nil, likes: [Like?]? = nil, blockedUsers: [BlockedUser?]? = nil) {
                self.init(unsafeResultMap: ["__typename": "UserType", "id": id, "username": username, "fullName": fullName, "email": email, "photosQuota": photosQuota, "avatarPhotos": avatarPhotos.flatMap { (value: [AvatarPhoto?]) -> [ResultMap?] in value.map { (value: AvatarPhoto?) -> ResultMap? in value.flatMap { (value: AvatarPhoto) -> ResultMap in value.resultMap } } }, "purchaseCoins": purchaseCoins, "isOnline": isOnline, "gender": gender, "age": age, "height": height, "about": about, "avatarIndex": avatarIndex, "location": location, "familyPlans": familyPlans, "religion": religion, "politics": politics, "interestedIn": interestedIn, "tags": tags, "sportsTeams": sportsTeams, "books": books, "education": education, "zodiacSign": zodiacSign, "movies": movies, "music": music, "ethinicity": ethinicity, "tvShows": tvShows, "work": work, "avatar": avatar.flatMap { (value: Avatar) -> ResultMap in value.resultMap }, "likes": likes.flatMap { (value: [Like?]) -> [ResultMap?] in value.map { (value: Like?) -> ResultMap? in value.flatMap { (value: Like) -> ResultMap in value.resultMap } } }, "blockedUsers": blockedUsers.flatMap { (value: [BlockedUser?]) -> [ResultMap?] in value.map { (value: BlockedUser?) -> ResultMap? in value.flatMap { (value: BlockedUser) -> ResultMap in value.resultMap } } }])
            }
            
            public var __typename: String {
                get {
                    return resultMap["__typename"]! as! String
                }
                set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                }
            }
            
            public var id: String? {
                get {
                    return resultMap["id"] as? String
                }
                set {
                    resultMap.updateValue(newValue, forKey: "id")
                }
            }
            
            public var username: String? {
                get {
                    return resultMap["username"] as? String
                }
                set {
                    resultMap.updateValue(newValue, forKey: "username")
                }
            }
            
            public var fullName: String? {
                get {
                    return resultMap["fullName"] as? String
                }
                set {
                    resultMap.updateValue(newValue, forKey: "fullName")
                }
            }
            
            public var email: String? {
                get {
                    return resultMap["email"] as? String
                }
                set {
                    resultMap.updateValue(newValue, forKey: "email")
                }
            }
            
            public var photosQuota: Int? {
                get {
                    return resultMap["photosQuota"] as? Int
                }
                set {
                    resultMap.updateValue(newValue, forKey: "photosQuota")
                }
            }
            
            public var avatarPhotos: [AvatarPhoto?]? {
                get {
                    return (resultMap["avatarPhotos"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [AvatarPhoto?] in value.map { (value: ResultMap?) -> AvatarPhoto? in value.flatMap { (value: ResultMap) -> AvatarPhoto in AvatarPhoto(unsafeResultMap: value) } } }
                }
                set {
                    resultMap.updateValue(newValue.flatMap { (value: [AvatarPhoto?]) -> [ResultMap?] in value.map { (value: AvatarPhoto?) -> ResultMap? in value.flatMap { (value: AvatarPhoto) -> ResultMap in value.resultMap } } }, forKey: "avatarPhotos")
                }
            }
            
            public var purchaseCoins: Int? {
                get {
                    return resultMap["purchaseCoins"] as? Int
                }
                set {
                    resultMap.updateValue(newValue, forKey: "purchaseCoins")
                }
            }
            
            public var isOnline: Bool? {
                get {
                    return resultMap["isOnline"] as? Bool
                }
                set {
                    resultMap.updateValue(newValue, forKey: "isOnline")
                }
            }
            
            public var gender: Int? {
                get {
                    return resultMap["gender"] as? Int
                }
                set {
                    resultMap.updateValue(newValue, forKey: "gender")
                }
            }
            
            public var age: Int? {
                get {
                    return resultMap["age"] as? Int
                }
                set {
                    resultMap.updateValue(newValue, forKey: "age")
                }
            }
            
            public var height: Int? {
                get {
                    return resultMap["height"] as? Int
                }
                set {
                    resultMap.updateValue(newValue, forKey: "height")
                }
            }
            
            public var about: String? {
                get {
                    return resultMap["about"] as? String
                }
                set {
                    resultMap.updateValue(newValue, forKey: "about")
                }
            }
            
            public var avatarIndex: Int {
                get {
                    return resultMap["avatarIndex"]! as! Int
                }
                set {
                    resultMap.updateValue(newValue, forKey: "avatarIndex")
                }
            }
            
            public var location: [Double?]? {
                get {
                    return resultMap["location"] as? [Double?]
                }
                set {
                    resultMap.updateValue(newValue, forKey: "location")
                }
            }
            
            public var familyPlans: Int? {
                get {
                    return resultMap["familyPlans"] as? Int
                }
                set {
                    resultMap.updateValue(newValue, forKey: "familyPlans")
                }
            }
            
            public var religion: Int? {
                get {
                    return resultMap["religion"] as? Int
                }
                set {
                    resultMap.updateValue(newValue, forKey: "religion")
                }
            }
            
            public var politics: Int? {
                get {
                    return resultMap["politics"] as? Int
                }
                set {
                    resultMap.updateValue(newValue, forKey: "politics")
                }
            }
            
            public var interestedIn: [Int?]? {
                get {
                    return resultMap["interestedIn"] as? [Int?]
                }
                set {
                    resultMap.updateValue(newValue, forKey: "interestedIn")
                }
            }
            
            public var tags: [Int?]? {
                get {
                    return resultMap["tags"] as? [Int?]
                }
                set {
                    resultMap.updateValue(newValue, forKey: "tags")
                }
            }
            
            public var sportsTeams: [String?]? {
                get {
                    return resultMap["sportsTeams"] as? [String?]
                }
                set {
                    resultMap.updateValue(newValue, forKey: "sportsTeams")
                }
            }
            
            public var books: [String?]? {
                get {
                    return resultMap["books"] as? [String?]
                }
                set {
                    resultMap.updateValue(newValue, forKey: "books")
                }
            }
            
            public var education: String? {
                get {
                    return resultMap["education"] as? String
                }
                set {
                    resultMap.updateValue(newValue, forKey: "education")
                }
            }
            
            public var zodiacSign: Int? {
                get {
                    return resultMap["zodiacSign"] as? Int
                }
                set {
                    resultMap.updateValue(newValue, forKey: "zodiacSign")
                }
            }
            
            public var movies: [String?]? {
                get {
                    return resultMap["movies"] as? [String?]
                }
                set {
                    resultMap.updateValue(newValue, forKey: "movies")
                }
            }
            
            public var music: [String?]? {
                get {
                    return resultMap["music"] as? [String?]
                }
                set {
                    resultMap.updateValue(newValue, forKey: "music")
                }
            }
            
            public var ethinicity: Int? {
                get {
                    return resultMap["ethinicity"] as? Int
                }
                set {
                    resultMap.updateValue(newValue, forKey: "ethinicity")
                }
            }
            
            public var tvShows: [String?]? {
                get {
                    return resultMap["tvShows"] as? [String?]
                }
                set {
                    resultMap.updateValue(newValue, forKey: "tvShows")
                }
            }
            
            public var work: String? {
                get {
                    return resultMap["work"] as? String
                }
                set {
                    resultMap.updateValue(newValue, forKey: "work")
                }
            }
            
            public var avatar: Avatar? {
                get {
                    return (resultMap["avatar"] as? ResultMap).flatMap { Avatar(unsafeResultMap: $0) }
                }
                set {
                    resultMap.updateValue(newValue?.resultMap, forKey: "avatar")
                }
            }
            
            public var likes: [Like?]? {
                get {
                    return (resultMap["likes"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Like?] in value.map { (value: ResultMap?) -> Like? in value.flatMap { (value: ResultMap) -> Like in Like(unsafeResultMap: value) } } }
                }
                set {
                    resultMap.updateValue(newValue.flatMap { (value: [Like?]) -> [ResultMap?] in value.map { (value: Like?) -> ResultMap? in value.flatMap { (value: Like) -> ResultMap in value.resultMap } } }, forKey: "likes")
                }
            }
            
            public var blockedUsers: [BlockedUser?]? {
                get {
                    return (resultMap["blockedUsers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [BlockedUser?] in value.map { (value: ResultMap?) -> BlockedUser? in value.flatMap { (value: ResultMap) -> BlockedUser in BlockedUser(unsafeResultMap: value) } } }
                }
                set {
                    resultMap.updateValue(newValue.flatMap { (value: [BlockedUser?]) -> [ResultMap?] in value.map { (value: BlockedUser?) -> ResultMap? in value.flatMap { (value: BlockedUser) -> ResultMap in value.resultMap } } }, forKey: "blockedUsers")
                }
            }
            
            public struct AvatarPhoto: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["UserPhotoType"]
                
                public static var selections: [GraphQLSelection] {
                    return [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                        GraphQLField("url", type: .scalar(String.self)),
                    ]
                }
                
                public private(set) var resultMap: ResultMap
                
                public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                }
                
                public init(id: GraphQLID, url: String? = nil) {
                    self.init(unsafeResultMap: ["__typename": "UserPhotoType", "id": id, "url": url])
                }
                
                public var __typename: String {
                    get {
                        return resultMap["__typename"]! as! String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                    }
                }
                
                public var id: GraphQLID {
                    get {
                        return resultMap["id"]! as! GraphQLID
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "id")
                    }
                }
                
                public var url: String? {
                    get {
                        return resultMap["url"] as? String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "url")
                    }
                }
            }
            
            public struct Avatar: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["UserPhotoType"]
                
                public static var selections: [GraphQLSelection] {
                    return [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("url", type: .scalar(String.self)),
                    ]
                }
                
                public private(set) var resultMap: ResultMap
                
                public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                }
                
                public init(url: String? = nil) {
                    self.init(unsafeResultMap: ["__typename": "UserPhotoType", "url": url])
                }
                
                public var __typename: String {
                    get {
                        return resultMap["__typename"]! as! String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                    }
                }
                
                public var url: String? {
                    get {
                        return resultMap["url"] as? String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "url")
                    }
                }
            }
            
            public struct Like: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["likedUsersResponse"]
                
                public static var selections: [GraphQLSelection] {
                    return [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("id", type: .scalar(String.self)),
                        GraphQLField("username", type: .scalar(String.self)),
                        GraphQLField("fullName", type: .scalar(String.self)),
                        GraphQLField("avatarPhotos", type: .list(.object(AvatarPhoto.selections))),
                    ]
                }
                
                public private(set) var resultMap: ResultMap
                
                public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                }
                
                public init(id: String? = nil, username: String? = nil, fullName: String? = nil, avatarPhotos: [AvatarPhoto?]? = nil) {
                    self.init(unsafeResultMap: ["__typename": "likedUsersResponse", "id": id, "username": username, "fullName": fullName, "avatarPhotos": avatarPhotos.flatMap { (value: [AvatarPhoto?]) -> [ResultMap?] in value.map { (value: AvatarPhoto?) -> ResultMap? in value.flatMap { (value: AvatarPhoto) -> ResultMap in value.resultMap } } }])
                }
                
                public var __typename: String {
                    get {
                        return resultMap["__typename"]! as! String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                    }
                }
                
                public var id: String? {
                    get {
                        return resultMap["id"] as? String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "id")
                    }
                }
                
                public var username: String? {
                    get {
                        return resultMap["username"] as? String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "username")
                    }
                }
                
                public var fullName: String? {
                    get {
                        return resultMap["fullName"] as? String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "fullName")
                    }
                }
                
                public var avatarPhotos: [AvatarPhoto?]? {
                    get {
                        return (resultMap["avatarPhotos"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [AvatarPhoto?] in value.map { (value: ResultMap?) -> AvatarPhoto? in value.flatMap { (value: ResultMap) -> AvatarPhoto in AvatarPhoto(unsafeResultMap: value) } } }
                    }
                    set {
                        resultMap.updateValue(newValue.flatMap { (value: [AvatarPhoto?]) -> [ResultMap?] in value.map { (value: AvatarPhoto?) -> ResultMap? in value.flatMap { (value: AvatarPhoto) -> ResultMap in value.resultMap } } }, forKey: "avatarPhotos")
                    }
                }
                
                public struct AvatarPhoto: GraphQLSelectionSet {
                    public static let possibleTypes: [String] = ["UserPhotoType"]
                    
                    public static var selections: [GraphQLSelection] {
                        return [
                            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                            GraphQLField("url", type: .scalar(String.self)),
                        ]
                    }
                    
                    public private(set) var resultMap: ResultMap
                    
                    public init(unsafeResultMap: ResultMap) {
                        self.resultMap = unsafeResultMap
                    }
                    
                    public init(id: GraphQLID, url: String? = nil) {
                        self.init(unsafeResultMap: ["__typename": "UserPhotoType", "id": id, "url": url])
                    }
                    
                    public var __typename: String {
                        get {
                            return resultMap["__typename"]! as! String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "__typename")
                        }
                    }
                    
                    public var id: GraphQLID {
                        get {
                            return resultMap["id"]! as! GraphQLID
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "id")
                        }
                    }
                    
                    public var url: String? {
                        get {
                            return resultMap["url"] as? String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "url")
                        }
                    }
                }
            }
            
            public struct BlockedUser: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["blockedUsersResponse"]
                
                public static var selections: [GraphQLSelection] {
                    return [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("id", type: .scalar(String.self)),
                        GraphQLField("username", type: .scalar(String.self)),
                        GraphQLField("fullName", type: .scalar(String.self)),
                        GraphQLField("avatarPhotos", type: .list(.object(AvatarPhoto.selections))),
                    ]
                }
                
                public private(set) var resultMap: ResultMap
                
                public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                }
                
                public init(id: String? = nil, username: String? = nil, fullName: String? = nil, avatarPhotos: [AvatarPhoto?]? = nil) {
                    self.init(unsafeResultMap: ["__typename": "blockedUsersResponse", "id": id, "username": username, "fullName": fullName, "avatarPhotos": avatarPhotos.flatMap { (value: [AvatarPhoto?]) -> [ResultMap?] in value.map { (value: AvatarPhoto?) -> ResultMap? in value.flatMap { (value: AvatarPhoto) -> ResultMap in value.resultMap } } }])
                }
                
                public var __typename: String {
                    get {
                        return resultMap["__typename"]! as! String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                    }
                }
                
                public var id: String? {
                    get {
                        return resultMap["id"] as? String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "id")
                    }
                }
                
                public var username: String? {
                    get {
                        return resultMap["username"] as? String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "username")
                    }
                }
                
                public var fullName: String? {
                    get {
                        return resultMap["fullName"] as? String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "fullName")
                    }
                }
                
                public var avatarPhotos: [AvatarPhoto?]? {
                    get {
                        return (resultMap["avatarPhotos"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [AvatarPhoto?] in value.map { (value: ResultMap?) -> AvatarPhoto? in value.flatMap { (value: ResultMap) -> AvatarPhoto in AvatarPhoto(unsafeResultMap: value) } } }
                    }
                    set {
                        resultMap.updateValue(newValue.flatMap { (value: [AvatarPhoto?]) -> [ResultMap?] in value.map { (value: AvatarPhoto?) -> ResultMap? in value.flatMap { (value: AvatarPhoto) -> ResultMap in value.resultMap } } }, forKey: "avatarPhotos")
                    }
                }
                
                public struct AvatarPhoto: GraphQLSelectionSet {
                    public static let possibleTypes: [String] = ["UserPhotoType"]
                    
                    public static var selections: [GraphQLSelection] {
                        return [
                            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                            GraphQLField("url", type: .scalar(String.self)),
                        ]
                    }
                    
                    public private(set) var resultMap: ResultMap
                    
                    public init(unsafeResultMap: ResultMap) {
                        self.resultMap = unsafeResultMap
                    }
                    
                    public init(id: GraphQLID, url: String? = nil) {
                        self.init(unsafeResultMap: ["__typename": "UserPhotoType", "id": id, "url": url])
                    }
                    
                    public var __typename: String {
                        get {
                            return resultMap["__typename"]! as! String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "__typename")
                        }
                    }
                    
                    public var id: GraphQLID {
                        get {
                            return resultMap["id"]! as! GraphQLID
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "id")
                        }
                    }
                    
                    public var url: String? {
                        get {
                            return resultMap["url"] as? String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "url")
                        }
                    }
                }
            }
        }
    }
}
