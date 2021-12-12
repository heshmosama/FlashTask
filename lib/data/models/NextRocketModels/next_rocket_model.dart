import 'package:json_annotation/json_annotation.dart';

part 'next_rocket_model.g.dart';

@JsonSerializable(nullable: true, ignoreUnannotated: false)
class NextRocketModel {
  @JsonKey(name: 'fairings')
  Fairings? fairings;
  @JsonKey(name: 'links')
  Links? links;
  @JsonKey(name: 'static_fire_date_utc')
  dynamic staticFireDateUtc;
  @JsonKey(name: 'static_fire_date_unix')
  dynamic staticFireDateUnix;
  @JsonKey(name: 'net')
  bool? net;
  @JsonKey(name: 'window')
  dynamic window;
  @JsonKey(name: 'rocket')
  String? rocket;
  @JsonKey(name: 'success')
  dynamic success;
  @JsonKey(name: 'details')
  dynamic details;
  @JsonKey(name: 'payloads')
  List<String?>? payloads;
  @JsonKey(name: 'launchpad')
  String? launchpad;
  @JsonKey(name: 'flight_number')
  int? flightNumber;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'date_utc')
  String? dateUtc;
  @JsonKey(name: 'date_unix')
  int? dateUnix;
  @JsonKey(name: 'date_local')
  String? dateLocal;
  @JsonKey(name: 'date_precision')
  String? datePrecision;
  @JsonKey(name: 'upcoming')
  bool? upcoming;
  @JsonKey(name: 'cores')
  List<Core?>? cores;
  @JsonKey(name: 'auto_update')
  bool? autoUpdate;
  @JsonKey(name: 'tbd')
  bool? tbd;
  @JsonKey(name: 'launch_library_id')
  String? launchLibraryId;
  @JsonKey(name: 'id')
  String? id;

  NextRocketModel(
      {this.fairings,
      this.links,
      this.staticFireDateUtc,
      this.staticFireDateUnix,
      this.net,
      this.window,
      this.rocket,
      this.success,
      this.details,
      this.payloads,
      this.launchpad,
      this.flightNumber,
      this.name,
      this.dateUtc,
      this.dateUnix,
      this.dateLocal,
      this.datePrecision,
      this.upcoming,
      this.cores,
      this.autoUpdate,
      this.tbd,
      this.launchLibraryId,
      this.id});

  factory NextRocketModel.fromJson(Map<String, dynamic> json) =>
      _$NextRocketModelFromJson(json);

  Map<String, dynamic> toJson() => _$NextRocketModelToJson(this);
}

@JsonSerializable(nullable: true, ignoreUnannotated: false)
class Fairings {
  @JsonKey(name: 'reused')
  dynamic reused;
  @JsonKey(name: 'recovery_attempt')
  dynamic recoveryAttempt;
  @JsonKey(name: 'recovered')
  dynamic recovered;

  Fairings({this.reused, this.recoveryAttempt, this.recovered});

  factory Fairings.fromJson(Map<String, dynamic> json) =>
      _$FairingsFromJson(json);

  Map<String, dynamic> toJson() => _$FairingsToJson(this);
}

@JsonSerializable(nullable: true, ignoreUnannotated: false)
class Links {
  @JsonKey(name: 'patch')
  Patch? patch;
  @JsonKey(name: 'reddit')
  Reddit? reddit;
  @JsonKey(name: 'flickr')
  Flickr? flickr;
  @JsonKey(name: 'presskit')
  dynamic presskit;
  @JsonKey(name: 'webcast')
  dynamic webcast;
  @JsonKey(name: 'youtube_id')
  dynamic youtubeId;
  @JsonKey(name: 'article')
  dynamic article;
  @JsonKey(name: 'wikipedia')
  dynamic wikipedia;

  Links(
      {this.patch,
      this.reddit,
      this.flickr,
      this.presskit,
      this.webcast,
      this.youtubeId,
      this.article,
      this.wikipedia});

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable(nullable: true, ignoreUnannotated: false)
class Patch {
  @JsonKey(name: 'small')
  dynamic small;
  @JsonKey(name: 'large')
  dynamic large;

  Patch({this.small, this.large});

  factory Patch.fromJson(Map<String, dynamic> json) => _$PatchFromJson(json);

  Map<String, dynamic> toJson() => _$PatchToJson(this);
}

@JsonSerializable(nullable: true, ignoreUnannotated: false)
class Reddit {
  @JsonKey(name: 'campaign')
  dynamic campaign;
  @JsonKey(name: 'launch')
  dynamic launch;
  @JsonKey(name: 'media')
  dynamic media;
  @JsonKey(name: 'recovery')
  dynamic recovery;

  Reddit({this.campaign, this.launch, this.media, this.recovery});

  factory Reddit.fromJson(Map<String, dynamic> json) => _$RedditFromJson(json);

  Map<String, dynamic> toJson() => _$RedditToJson(this);
}

@JsonSerializable(nullable: true, ignoreUnannotated: false)
class Flickr {
  Flickr();

  factory Flickr.fromJson(Map<String, dynamic> json) => _$FlickrFromJson(json);

  Map<String, dynamic> toJson() => _$FlickrToJson(this);
}

@JsonSerializable(nullable: true, ignoreUnannotated: false)
class Core {
  @JsonKey(name: 'core')
  dynamic core;
  @JsonKey(name: 'flight')
  dynamic flight;
  @JsonKey(name: 'gridfins')
  dynamic gridfins;
  @JsonKey(name: 'legs')
  dynamic legs;
  @JsonKey(name: 'reused')
  dynamic reused;
  @JsonKey(name: 'landing_attempt')
  dynamic landingAttempt;
  @JsonKey(name: 'landing_success')
  dynamic landingSuccess;
  @JsonKey(name: 'landing_type')
  dynamic landingType;
  @JsonKey(name: 'landpad')
  dynamic landpad;

  Core(
      {this.core,
      this.flight,
      this.gridfins,
      this.legs,
      this.reused,
      this.landingAttempt,
      this.landingSuccess,
      this.landingType,
      this.landpad});

  factory Core.fromJson(Map<String, dynamic> json) => _$CoreFromJson(json);

  Map<String, dynamic> toJson() => _$CoreToJson(this);
}
