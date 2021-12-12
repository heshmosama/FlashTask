import 'package:json_annotation/json_annotation.dart'; 

part 'upcoming_rocket_model.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class UpcomingRocketModel {
  @JsonKey(name: 'fairings')
  Fairings? fairings;
  @JsonKey(name: 'links')
  Links? links;
  @JsonKey(name: 'net')
  bool? net;
  @JsonKey(name: 'rocket')
  String? rocket;
  @JsonKey(name: 'payloads')
  List<String>? payloads;
  @JsonKey(name: 'launchpad')
  String? launchpad;
  @JsonKey(name: 'flight_number')
  double? flightNumber;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'date_utc')
  String? dateUtc;
  @JsonKey(name: 'date_unix')
  double? dateUnix;
  @JsonKey(name: 'date_local')
  String? dateLocal;
  @JsonKey(name: 'date_precision')
  String? datePrecision;
  @JsonKey(name: 'upcoming')
  bool? upcoming;
  @JsonKey(name: 'cores')
  List<Core>? cores;
  @JsonKey(name: 'auto_update')
  bool? autoUpdate;
  @JsonKey(name: 'tbd')
  bool? tbd;
  @JsonKey(name: 'launch_library_id')
  String? launchLibraryId;
  @JsonKey(name: 'id')
  String? id;

  UpcomingRocketModel({this.fairings, this.links, this.net, this.rocket, this.payloads, this.launchpad, this.flightNumber, this.name, this.dateUtc, this.dateUnix, this.dateLocal, this.datePrecision, this.upcoming, this.cores, this.autoUpdate, this.tbd, this.launchLibraryId, this.id});

   factory UpcomingRocketModel.fromJson(Map<String, dynamic> json) => _$UpcomingRocketModelFromJson(json);

   Map<String, dynamic> toJson() => _$UpcomingRocketModelToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Fairings {

  Fairings();

   factory Fairings.fromJson(Map<String, dynamic> json) => _$FairingsFromJson(json);

   Map<String, dynamic> toJson() => _$FairingsToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Links {
  @JsonKey(name: 'patch')
  Patch? patch;
  @JsonKey(name: 'reddit')
  Reddit? reddit;
  @JsonKey(name: 'flickr')
  Flickr? flickr;

  Links({this.patch, this.reddit, this.flickr});

   factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

   Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Patch {

  Patch();

   factory Patch.fromJson(Map<String, dynamic> json) => _$PatchFromJson(json);

   Map<String, dynamic> toJson() => _$PatchToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Reddit {

  Reddit();

   factory Reddit.fromJson(Map<String, dynamic> json) => _$RedditFromJson(json);

   Map<String, dynamic> toJson() => _$RedditToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Flickr {

  Flickr();

   factory Flickr.fromJson(Map<String, dynamic> json) => _$FlickrFromJson(json);

   Map<String, dynamic> toJson() => _$FlickrToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Core {

  Core();

   factory Core.fromJson(Map<String, dynamic> json) => _$CoreFromJson(json);

   Map<String, dynamic> toJson() => _$CoreToJson(this);
}

