part of '../../enums.dart';

enum AnalyticsDimension {
  country(value: "country"),
  region(value: "region"),
  city(value: "city"),
  browser(value: "browser"),
  browserVersion(value: "browserVersion"),
  operatingSystem(value: "operatingSystem"),
  operatingSystemVersion(value: "operatingSystemVersion"),
  device(value: "device"),
  screenSize(value: "screenSize"),
  referrerSource(value: "referrerSource"),
  channel(value: "channel"),
  utmSource(value: "utmSource"),
  utmMedium(value: "utmMedium"),
  utmCampaign(value: "utmCampaign"),
  utmContent(value: "utmContent"),
  utmTerm(value: "utmTerm"),
  page(value: "page"),
  hostname(value: "hostname"),
  entryPage(value: "entryPage"),
  exitPage(value: "exitPage"),
  trafficType(value: "trafficType"),
  botName(value: "botName"),
  botCategory(value: "botCategory"),
  userId(value: "userId"),
  eventName(value: "eventName"),
  props(value: "props");

  const AnalyticsDimension({required this.value});

  final String value;

  String toJson() => value;
}
