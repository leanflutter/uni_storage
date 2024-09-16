import 'package:s3_api_base/src/types/common_prefix.dart';
import 'package:s3_api_base/src/types/object.dart';

/// Root level tag for the ListBucketResult parameters.
class ListBucketResult {
  ListBucketResult({
    this.commonPrefixes,
    this.contents,
    this.delimiter,
    this.encodingType,
    this.isTruncated,
    this.marker,
    this.maxKeys,
    this.name,
    this.nextMarker,
    this.prefix,
  });

  /// All of the keys (up to 1,000) rolled up in a common prefix count as a
  /// single return when calculating the number of returns.
  final List<CommonPrefix>? commonPrefixes;

  /// Metadata about each object returned.
  final List<Object>? contents;

  /// Causes keys that contain the same string between the prefix and the first
  /// occurrence of the delimiter to be rolled up into a single result element
  /// in the CommonPrefixes collection. These rolled-up keys are not returned
  /// elsewhere in the response. Each rolled-up result counts as only one return
  /// against the MaxKeys value.
  final String? delimiter;

  /// Encoding type used by Amazon S3 to encode the object keys in the response.
  /// Responses are encoded only in UTF-8. An object key can contain any Unicode
  /// character. However, the XML 1.0 parser can't parse certain characters,
  /// such as characters with an ASCII value from 0 to 10. For characters that
  /// aren't supported in XML 1.0, you can add this parameter to request that
  /// Amazon S3 encode the keys in the response. For more information about
  /// characters to avoid in object key names, see Object key naming guidelines.
  final String? encodingType;

  /// A flag that indicates whether Amazon S3 returned all of the results that
  /// satisfied the search criteria.
  final bool? isTruncated;

  /// Indicates where in the bucket listing begins. Marker is included in the
  /// response if it was sent with the request.
  final String? marker;

  /// The maximum number of keys returned in the response body.
  final int? maxKeys;

  /// The bucket name.
  final String? name;

  /// When the response is truncated (the IsTruncated element value in the
  /// response is true), you can use the key name in this field as the marker
  /// parameter in the subsequent request to get the next set of objects. Amazon
  /// S3 lists objects in alphabetical order.
  final String? nextMarker;

  /// Keys that begin with the indicated prefix.
  final String? prefix;
}

/// This operation is not supported by directory buckets.
abstract mixin class ListObjectsOperation {
  Future<dynamic> listObjects({
    /// The name of the bucket containing the objects.
    String bucket,

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

    /// Marker is where you want Amazon S3 to start listing from. Amazon S3
    /// starts listing after this specified key. Marker can be any key in the
    /// bucket.
    String? marker,

    /// Sets the maximum number of keys returned in the response. By default,
    /// the action returns up to 1,000 key names. The response might contain
    /// fewer keys but will never contain more.
    String? maxKeys,

    /// Limits the response to keys that begin with the specified prefix.
    String? prefix,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,

    /// Specifies the optional fields that you want returned in the response.
    /// Fields that you do not specify are not returned.
    String? optionalObjectAttributes,

    /// Confirms that the requester knows that she or he will be charged for the
    /// list objects request. Bucket owners need not specify this parameter in
    /// their requests.
    String? requestPayer,
  });
}
