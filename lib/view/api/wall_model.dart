// To parse this JSON data, do
//
//     final getImage? = getImageFromMap(jsonString);

import 'dart:convert';

class GetImage {
    GetImage({
        this.id,
        this.createdAt,
        this.updatedAt,
        this.promotedAt,
        this.width,
        this.height,
        this.color,
        this.blurHash,
        this.description,
        this.altDescription,
        this.urls,
        this.links,
        this.categories,
        this.likes,
        this.likedByUser,
        this.currentUserCollections,
        this.sponsorship,
        this.user,
    });

    final String? id;
    final DateTime? createdAt;
    final DateTime? updatedAt;
    final DateTime? promotedAt;
    final int? width;
    final int? height;
    final String? color;
    final String? blurHash;
    final dynamic description;
    final String? altDescription;
    final Urls? urls;
    final GetImageLinks? links;
    final List<dynamic>? categories;
    final int? likes;
    final bool? likedByUser;
    final List<dynamic>? currentUserCollections;
    final Sponsorship? sponsorship;
    final User? user;

    factory GetImage.fromJson(String str) => GetImage.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory GetImage.fromMap(Map<String, dynamic> json) => GetImage(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        promotedAt: json["promoted_at"] == null ? null : DateTime.parse(json["promoted_at"]),
        width: json["width"],
        height: json["height"],
        color: json["color"],
        blurHash: json["blur_hash"],
        description: json["description"],
        altDescription: json["alt_description"],
        urls: Urls.fromMap(json["urls"]),
        links: GetImageLinks.fromMap(json["links"]),
        categories: List<dynamic>.from(json["categories"].map((x) => x)),
        likes: json["likes"],
        likedByUser: json["liked_by_user"],
        currentUserCollections: List<dynamic>.from(json["current_user_collections"].map((x) => x)),
        sponsorship: json["sponsorship"] == null ? null : Sponsorship.fromMap(json["sponsorship"]),
        user: User.fromMap(json["user"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "promoted_at": promotedAt == null ? null : promotedAt!.toIso8601String(),
        "width": width,
        "height": height,
        "color": color,
        "blur_hash": blurHash,
        "description": description,
        "alt_description": altDescription,
        "urls": urls!.toMap(),
        "links": links!.toMap(),
        "categories": List<dynamic>.from(categories!.map((x) => x)),
        "likes": likes,
        "liked_by_user": likedByUser,
        "current_user_collections": List<dynamic>.from(currentUserCollections!.map((x) => x)),
        "sponsorship": sponsorship == null ? null : sponsorship!.toMap(),
        "user": user!.toMap(),
    };
}

class GetImageLinks {
    GetImageLinks({
        this.self,
        this.html,
        this.download,
        this.downloadLocation,
    });

    final String? self;
    final String? html;
    final String? download;
    final String? downloadLocation;

    factory GetImageLinks.fromJson(String str) => GetImageLinks.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory GetImageLinks.fromMap(Map<String, dynamic> json) => GetImageLinks(
        self: json["self"],
        html: json["html"],
        download: json["download"],
        downloadLocation: json["download_location"],
    );

    Map<String, dynamic> toMap() => {
        "self": self,
        "html": html,
        "download": download,
        "download_location": downloadLocation,
    };
}

class Sponsorship {
    Sponsorship({
        this.impressionUrls,
        this.tagline,
        this.taglineUrl,
        this.sponsor,
    });

    final List<String>? impressionUrls;
    final String? tagline;
    final String? taglineUrl;
    final User? sponsor;

    factory Sponsorship.fromJson(String str) => Sponsorship.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Sponsorship.fromMap(Map<String, dynamic> json) => Sponsorship(
        impressionUrls: List<String>.from(json["impression_urls"].map((x) => x)),
        tagline: json["tagline"],
        taglineUrl: json["tagline_url"],
        sponsor: User.fromMap(json["sponsor"]),
    );

    Map<String, dynamic> toMap() => {
        "impression_urls": List<dynamic>.from(impressionUrls!.map((x) => x)),
        "tagline": tagline,
        "tagline_url": taglineUrl,
        "sponsor": sponsor!.toMap(),
    };
}

class User {
    User({
        this.id,
        this.updatedAt,
        this.username,
        this.name,
        this.firstName,
        this.lastName,
        this.twitterUsername,
        this.portfolioUrl,
        this.bio,
        this.location,
        this.links,
        this.profileImage,
        this.instagramUsername,
        this.totalCollections,
        this.totalLikes,
        this.totalPhotos,
        this.acceptedTos,
        this.forHire,
        this.social,
    });

    final String? id;
    final DateTime? updatedAt;
    final String? username;
    final String? name;
    final String? firstName;
    final String? lastName;
    final String? twitterUsername;
    final String? portfolioUrl;
    final String? bio;
    final String? location;
    final UserLinks? links;
    final ProfileImage? profileImage;
    final String? instagramUsername;
    final int? totalCollections;
    final int? totalLikes;
    final int? totalPhotos;
    final bool? acceptedTos;
    final bool? forHire;
    final Social? social;

    factory User.fromJson(String str) => User.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["id"],
        updatedAt: DateTime.parse(json["updated_at"]),
        username: json["username"],
        name: json["name"],
        firstName: json["first_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        twitterUsername: json["twitter_username"] == null ? null : json["twitter_username"],
        portfolioUrl: json["portfolio_url"] == null ? null : json["portfolio_url"],
        bio: json["bio"] == null ? null : json["bio"],
        location: json["location"] == null ? null : json["location"],
        links: UserLinks.fromMap(json["links"]),
        profileImage: ProfileImage.fromMap(json["profile_image"]),
        instagramUsername: json["instagram_username"] == null ? null : json["instagram_username"],
        totalCollections: json["total_collections"],
        totalLikes: json["total_likes"],
        totalPhotos: json["total_photos"],
        acceptedTos: json["accepted_tos"],
        forHire: json["for_hire"],
        social: Social.fromMap(json["social"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "updated_at": updatedAt!.toIso8601String(),
        "username": username,
        "name": name,
        "first_name": firstName,
        "last_name": lastName == null ? null : lastName,
        "twitter_username": twitterUsername == null ? null : twitterUsername,
        "portfolio_url": portfolioUrl == null ? null : portfolioUrl,
        "bio": bio == null ? null : bio,
        "location": location == null ? null : location,
        "links": links!.toMap(),
        "profile_image": profileImage!.toMap(),
        "instagram_username": instagramUsername == null ? null : instagramUsername,
        "total_collections": totalCollections,
        "total_likes": totalLikes,
        "total_photos": totalPhotos,
        "accepted_tos": acceptedTos,
        "for_hire": forHire,
        "social": social!.toMap(),
    };
}

class UserLinks {
    UserLinks({
        this.self,
        this.html,
        this.photos,
        this.likes,
        this.portfolio,
        this.following,
        this.followers,
    });

    final String? self;
    final String? html;
    final String? photos;
    final String? likes;
    final String? portfolio;
    final String? following;
    final String? followers;

    factory UserLinks.fromJson(String str) => UserLinks.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory UserLinks.fromMap(Map<String, dynamic> json) => UserLinks(
        self: json["self"],
        html: json["html"],
        photos: json["photos"],
        likes: json["likes"],
        portfolio: json["portfolio"],
        following: json["following"],
        followers: json["followers"],
    );

    Map<String, dynamic> toMap() => {
        "self": self,
        "html": html,
        "photos": photos,
        "likes": likes,
        "portfolio": portfolio,
        "following": following,
        "followers": followers,
    };
}

class ProfileImage {
    ProfileImage({
        this.small,
        this.medium,
        this.large,
    });

    final String? small;
    final String? medium;
    final String? large;

    factory ProfileImage.fromJson(String str) => ProfileImage.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ProfileImage.fromMap(Map<String, dynamic> json) => ProfileImage(
        small: json["small"],
        medium: json["medium"],
        large: json["large"],
    );

    Map<String, dynamic> toMap() => {
        "small": small,
        "medium": medium,
        "large": large,
    };
}

class Social {
    Social({
        this.instagramUsername,
        this.portfolioUrl,
        this.twitterUsername,
        this.paypalEmail,
    });

    final String? instagramUsername;
    final String? portfolioUrl;
    final String? twitterUsername;
    final dynamic? paypalEmail;

    factory Social.fromJson(String str) => Social.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Social.fromMap(Map<String, dynamic> json) => Social(
        instagramUsername: json["instagram_username"] == null ? null : json["instagram_username"],
        portfolioUrl: json["portfolio_url"] == null ? null : json["portfolio_url"],
        twitterUsername: json["twitter_username"] == null ? null : json["twitter_username"],
        paypalEmail: json["paypal_email"],
    );

    Map<String, dynamic> toMap() => {
        "instagram_username": instagramUsername == null ? null : instagramUsername,
        "portfolio_url": portfolioUrl == null ? null : portfolioUrl,
        "twitter_username": twitterUsername == null ? null : twitterUsername,
        "paypal_email": paypalEmail,
    };
}

class Urls {
    Urls({
        this.raw,
        this.full,
        this.regular,
        this.small,
        this.thumb,
    });

    final String? raw;
    final String? full;
    final String? regular;
    final String? small;
    final String? thumb;

    factory Urls.fromJson(String str) => Urls.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Urls.fromMap(Map<String, dynamic> json) => Urls(
        raw: json["raw"],
        full: json["full"],
        regular: json["regular"],
        small: json["small"],
        thumb: json["thumb"],
    );

    Map<String, dynamic> toMap() => {
        "raw": raw,
        "full": full,
        "regular": regular,
        "small": small,
        "thumb": thumb,
    };
}
