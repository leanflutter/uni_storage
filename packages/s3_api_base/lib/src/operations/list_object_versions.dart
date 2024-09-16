import 'package:s3_api_base/src/types/common_prefix.dart';
import 'package:s3_api_base/src/types/delete_marker_entry.dart';
import 'package:s3_api_base/src/types/object_version.dart';

/// Root level tag for the ListVersionsResult parameters.
class ListVersionsResult {
  ListVersionsResult({
    this.commonPrefixes,
    this.deleteMarker,
    this.delimiter,
    this.encodingType,
    this.isTruncated,
    this.keyMarker,
    this.maxKeys,
    this.name,
    this.nextKeyMarker,
    this.nextVersionIdMarker,
    this.prefix,
    this.version,
    this.versionIdMarker,
  });

  /// All of the keys rolled up into a common prefix count as a single return
  /// when calculating the number of returns.
  final List<CommonPrefix>? commonPrefixes;

  /// Container for an object that is a delete marker.
  final List<DeleteMarkerEntry>? deleteMarker;

  /// The delimiter grouping the included keys. A delimiter is a character that
  /// you specify to group keys. All keys that contain the same string between
  /// the prefix and the first occurrence of the delimiter are grouped under a
  /// single result element in CommonPrefixes. These groups are counted as one
  /// result against the max-keys limitation. These keys are not returned
  /// elsewhere in the response.
  final String? delimiter;

  ///  Encoding type used by Amazon S3 to encode object key names in the XML
  /// response.
  final String? encodingType;

  /// A flag that indicates whether Amazon S3 returned all of the results that
  /// satisfied the search criteria. If your results were truncated, you can
  /// make a follow-up paginated request by using the NextKeyMarker and
  /// NextVersionIdMarker response parameters as a starting place in another
  /// request to return the rest of the results.
  final bool? isTruncated;

  /// Marks the last key returned in a truncated response.
  final String? keyMarker;

  /// Specifies the maximum number of objects to return.
  final int? maxKeys;

  /// The bucket name.
  final String? name;

  /// When the number of responses exceeds the value of MaxKeys, NextKeyMarker
  /// specifies the first key not returned that satisfies the search criteria.
  /// Use this value for the key-marker request parameter in a subsequent
  /// request.
  final String? nextKeyMarker;

  /// When the number of responses exceeds the value of MaxKeys,
  /// NextVersionIdMarker specifies the first object version not returned that
  /// satisfies the search criteria. Use this value for the version-id-marker
  /// request parameter in a subsequent request.
  final String? nextVersionIdMarker;

  /// Selects objects that start with the value supplied by this parameter.
  final String? prefix;

  /// Container for version information.
  final List<ObjectVersion>? version;

  /// Marks the last version of the key returned in a truncated response.
  final String? versionIdMarker;
}

/// This operation is not supported by directory buckets.
abstract mixin class ListObjectVersionsOperation {
  Future<ListVersionsResult> listObjectVersions({
    /// The bucket name that contains the objects.
    String bucket,

    /// A delimiter is a character that you specify to group keys. All keys that
    /// contain the same string between the prefix and the first occurrence of
    /// the delimiter are grouped under a single result element in
    /// CommonPrefixes. These groups are counted as one result against the
    /// max-keys limitation. These keys are not returned elsewhere in the
    /// response.
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

    /// Specifies the key to start with when listing objects in a bucket.
    String? keyMarker,

    /// Sets the maximum number of keys returned in the response. By default,
    /// the action returns up to 1,000 key names. The response might contain
    /// fewer keys but will never contain more. If additional keys satisfy the
    /// search criteria, but were not returned because max-keys was exceeded,
    /// the response contains <isTruncated>true</isTruncated>. To return the
    /// additional keys, see key-marker and version-id-marker.
    String? maxKeys,

    /// Use this parameter to select only those keys that begin with the
    /// specified prefix. You can use prefixes to separate a bucket into
    /// different groupings of keys. (You can think of using prefix to make
    /// groups in the same way that you'd use a folder in a file system.) You
    /// can use prefix with delimiter to roll up numerous objects into a single
    /// result under CommonPrefixes.
    String? prefix,

    /// Specifies the object version you want to start listing from.
    String? versionIdMarker,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,

    /// Specifies the optional fields that you want returned in the response.
    /// Fields that you do not specify are not returned.
    String? optionalObjectAttributes,

    /// Confirms that the requester knows that they will be charged for the
    /// request. Bucket owners need not specify this parameter in their
    /// requests. If either the source or destination S3 bucket has Requester
    /// Pays enabled, the requester will pay for corresponding charges to copy
    /// the object. For information about downloading objects from Requester
    /// Pays buckets, see Downloading Objects in Requester Pays Buckets in the
    /// Amazon S3 User Guide.
    String? requestPayer,
  });
}
