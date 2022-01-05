## 3.0.2
- Fix Function model name on the functions services

## 3.0.1
- Export Query Builder

## 3.0.0
- Support for Appwrite 0.12
- **BREAKING** Updated database service to adapt 0.12 API 
- **BREAKING** Custom ID support while creating resources
- [View all the changes](https://github.com/appwrite/appwrite/blob/master/CHANGES.md#version-0120)

## 2.0.0
- BREAKING All services and methods now return structured response objects instead of `Response` object

## 1.0.2
- Support for Appwrite 0.11

## 1.0.1
- Export, separate IO and Browser clients for Flutter (Client and Realtime as well) and Dart (Client)

## 1.0.0
- Support for Appwrite 0.10
- Refactored for better cross platform support
- Exception implements `toString()` to get proper error message for unhandled exceptions
- **Breaking** - Signature for `MultipartFile` has changed as we have dropped Dio in favor of [http](https://pub.dev/packages/http) package. [Here is the new signature for MultipartFile](https://pub.dev/documentation/http/latest/http/MultipartFile-class.html)
- **Breaking** - Signature for `Response` has changed, now it only exposes the data.

## 0.7.0
- Support for Appwrite 0.9
- Breaking - removed order type enum, now you should pass string &#039;ASC&#039; or &#039;DESC&#039;
- Breaking - changed param name from `env` to `runtime` in the **Functions** API
- Image Crop Gravity support in image preview service
- New endpoint in Account getSession to get session by ID
- New endpoint in the Users API to update user verification status 
- Fix - issues with User-Agent when app name consisted of non-ASCII characters

## 0.6.2

- Removed default values, nothing should change in usage as default values are already allocated in server

## 0.6.1

- Fix for image preview param types

## 0.6.0

- Upgraded to Null-safety, minimum Dart SDK required 2.12.0
- Upgraded all underlying dependencies to null safe version
- BREAKING Renamed users.deleteUser to users.delete
- BREAKING Renamed parameter inviteId to membershipId on teams.updateMembershipStatus, teams.deleteMembership
- JWT Support client.setJWT(&#039;JWT_GENERATED_IN_CLIENT&#039;)
- [Update membership roles](https://appwrite.io/docs/client/teams?sdk=dart#teamsUpdateMembershipRoles)
- New awesome image preview features, supports borderRadius, borderColor, borderWidth 

## 0.5.0-dev.1

- Upgraded to Null-safety, minimum Dart SDK required 2.12.0
- Upgraded all underlying dependencies to null safe version

## 0.3.1

- Minor fixes for custom exceptions

## 0.3.0

- Improved code quality
- Added a custom Appwrite exception
- Enabled access to private storage file

## 0.2.0

- Upgraded to work with Appwrite 0.7

## 0.1.0

- First release
