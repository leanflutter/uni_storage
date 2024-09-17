import 'package:s3_api_base/src/types/common_prefix.dart';
import 'package:s3_api_base/src/types/object.dart';

/// Root level tag for the ListBucketResult parameters.
class ListBucketResultV2 {
  ListBucketResultV2({
    this.commonPrefixes,
    this.contents,
    this.continuationToken,
    this.delimiter,
    this.encodingType,
    this.isTruncated,
    this.keyCount,
    this.maxKeys,
    this.name,
    this.nextContinuationToken,
    this.prefix,
    this.startAfter,
  });

  /// All of the keys (up to 1,000) that share the same prefix are grouped
  /// together. When counting the total numbers of returns by this API
  /// operation, this group of keys is considered as one item.
  final List<CommonPrefix>? commonPrefixes;

  /// Metadata about each object returned.
  final List<Object>? contents;

  ///  If ContinuationToken was sent with the request, it is included in the
  /// response. You can use the returned ContinuationToken for pagination of the
  /// list response. You can use this ContinuationToken for pagination of the
  /// list results.
  final String? continuationToken;

  /// Causes keys that contain the same string between the prefix and the first
  /// occurrence of the delimiter to be rolled up into a single result element
  /// in the CommonPrefixes collection. These rolled-up keys are not returned
  /// elsewhere in the response. Each rolled-up result counts as only one return
  /// against the MaxKeys value.
  final String? delimiter;

  /// Encoding type used by Amazon S3 to encode object key names in the XML
  /// response.
  final String? encodingType;

  /// Set to false if all of the results were returned. Set to true if more keys
  /// are available to return. If the number of results exceeds that specified
  /// by MaxKeys, all of the results might not be returned.
  final bool? isTruncated;

  ///  KeyCount is the number of keys returned with this request. KeyCount will
  /// always be less than or equal to the MaxKeys field. For example, if you ask
  /// for 50 keys, your result will include 50 keys or fewer.
  final int? keyCount;

  /// Sets the maximum number of keys returned in the response. By default, the
  /// action returns up to 1,000 key names. The response might contain fewer
  /// keys but will never contain more.
  final int? maxKeys;

  /// The bucket name.
  final String? name;

  ///  NextContinuationToken is sent when isTruncated is true, which means there
  /// are more keys in the bucket that can be listed. The next list requests to
  /// Amazon S3 can be continued with this NextContinuationToken.
  /// NextContinuationToken is obfuscated and is not a real key
  final String? nextContinuationToken;

  /// Keys that begin with the indicated prefix.
  final String? prefix;

  /// If StartAfter was sent with the request, it is included in the response.
  final String? startAfter;
}

/// Returns some or all (up to 1,000) of the objects in a bucket with each
/// request. You can use the request parameters as selection criteria to return
/// a subset of the objects in a bucket. A 200 OK response can contain valid or
/// invalid XML. Make sure to design your application to parse the contents of
/// the response and handle it appropriately. For more information about listing
/// objects, see Listing object keys programmatically in the Amazon S3 User
/// Guide. To get a list of your buckets, see ListBuckets.
abstract mixin class ListObjectsV2Operation {
  Future<ListBucketResultV2> listObjectsV2({
    ///  Directory buckets - When you use this operation with a directory
    /// bucket, you must use virtual-hosted-style requests in the format
    /// Bucket_name.s3express-az_id.region.amazonaws.com. Path-style requests
    /// are not supported. Directory bucket names must be unique in the chosen
    /// Availability Zone. Bucket names must follow the format
    /// bucket_base_name--az-id--x-s3 (for example,
    /// DOC-EXAMPLE-BUCKET--usw2-az1--x-s3). For information about bucket naming
    /// restrictions, see Directory bucket naming rules in the Amazon S3 User
    /// Guide.
    required String bucket,

    ///  ContinuationToken indicates to Amazon S3 that the list is being
    /// continued on this bucket with a token. ContinuationToken is obfuscated
    /// and is not a real key. You can use this ContinuationToken for pagination
    /// of the list results.
    String? continuationToken,

    /// A delimiter is a character that you use to group keys.
    String? delimiter,

    /// Encoding type used by Amazon S3 to encode the object keys in the
    /// response. Responses are encoded only in UTF-8. An object key can contain
    /// any Unicode character. However, the XML 1.0 parser can't parse certain
    /// characters, such as characters with an ASCII value from 0 to 10. For
    /// characters that aren't supported in XML 1.0, you can add this parameter
    /// to request that Amazon S3 encode the keys in the response. For more
    /// information about characters to avoid in object key names, see Object
    /// key naming guidelines.
    String? encodingType,

    /// The owner field is not present in ListObjectsV2 by default. If you want
    /// to return the owner field with each key in the result, then set the
    /// FetchOwner field to true.
    String? fetchOwner,

    /// Sets the maximum number of keys returned in the response. By default,
    /// the action returns up to 1,000 key names. The response might contain
    /// fewer keys but will never contain more.
    String? maxKeys,

    /// Limits the response to keys that begin with the specified prefix.
    String? prefix,

    /// StartAfter is where you want Amazon S3 to start listing from. Amazon S3
    /// starts listing after this specified key. StartAfter can be any key in
    /// the bucket.
    String? startAfter,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,

    /// Specifies the optional fields that you want returned in the response.
    /// Fields that you do not specify are not returned.
    String? optionalObjectAttributes,

    /// Confirms that the requester knows that she or he will be charged for the
    /// list objects request in V2 style. Bucket owners need not specify this
    /// parameter in their requests.
    String? requestPayer,
  });
}
