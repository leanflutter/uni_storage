import 'package:s3_api_base/src/types/common_prefix.dart';
import 'package:s3_api_base/src/types/multipart_upload.dart';

/// Root level tag for the ListMultipartUploadsResult parameters.
class ListMultipartUploadsResult {
  ListMultipartUploadsResult({
    this.bucket,
    this.commonPrefixes,
    this.delimiter,
    this.encodingType,
    this.isTruncated,
    this.keyMarker,
    this.maxUploads,
    this.nextKeyMarker,
    this.nextUploadIdMarker,
    this.prefix,
    this.upload,
    this.uploadIdMarker,
  });

  /// The name of the bucket to which the multipart upload was initiated. Does
  /// not return the access point ARN or access point alias if used.
  final String? bucket;

  /// If you specify a delimiter in the request, then the result returns each
  /// distinct key prefix containing the delimiter in a CommonPrefixes element.
  /// The distinct key prefixes are returned in the Prefix child element.
  final List<CommonPrefix>? commonPrefixes;

  /// Contains the delimiter you specified in the request. If you don't specify
  /// a delimiter in your request, this element is absent from the response.
  final String? delimiter;

  /// Encoding type used by Amazon S3 to encode object keys in the response.
  final String? encodingType;

  /// Indicates whether the returned list of multipart uploads is truncated. A
  /// value of true indicates that the list was truncated. The list can be
  /// truncated if the number of multipart uploads exceeds the limit allowed or
  /// specified by max uploads.
  final bool? isTruncated;

  /// The key at or after which the listing began.
  final String? keyMarker;

  /// Maximum number of multipart uploads that could have been included in the
  /// response.
  final int? maxUploads;

  /// When a list is truncated, this element specifies the value that should be
  /// used for the key-marker request parameter in a subsequent request.
  final String? nextKeyMarker;

  /// When a list is truncated, this element specifies the value that should be
  /// used for the upload-id-marker request parameter in a subsequent request.
  final String? nextUploadIdMarker;

  /// When a prefix is provided in the request, this field contains the
  /// specified prefix. The result contains only keys starting with the
  /// specified prefix.
  final String? prefix;

  /// Container for elements related to a particular multipart upload. A
  /// response can contain zero or more Upload elements.
  final List<MultipartUpload>? upload;

  /// Together with key-marker, specifies the multipart upload after which
  /// listing should begin. If key-marker is not specified, the upload-id-marker
  /// parameter is ignored. Otherwise, any multipart uploads for a key equal to
  /// the key-marker might be included in the list only if they have an upload
  /// ID lexicographically greater than the specified upload-id-marker.
  final String? uploadIdMarker;
}

/// This operation lists in-progress multipart uploads in a bucket. An
/// in-progress multipart upload is a multipart upload that has been initiated
/// by the CreateMultipartUpload request, but has not yet been completed or
/// aborted.
abstract mixin class ListMultipartUploadsOperation {
  Future<ListMultipartUploadsResult> listMultipartUploads({
    /// The name of the bucket to which the multipart upload was initiated.
    required String bucket,

    /// Character you use to group keys.
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

    /// Specifies the multipart upload after which listing should begin.
    String? keyMarker,

    /// Sets the maximum number of multipart uploads, from 1 to 1,000, to return
    /// in the response body. 1,000 is the maximum number of uploads that can be
    /// returned in a response.
    String? maxUploads,

    /// Lists in-progress uploads only for those keys that begin with the
    /// specified prefix. You can use prefixes to separate a bucket into
    /// different grouping of keys. (You can think of using prefix to make
    /// groups in the same way that you'd use a folder in a file system.)
    String? prefix,

    /// Together with key-marker, specifies the multipart upload after which
    /// listing should begin. If key-marker is not specified, the
    /// upload-id-marker parameter is ignored. Otherwise, any multipart uploads
    /// for a key equal to the key-marker might be included in the list only if
    /// they have an upload ID lexicographically greater than the specified
    /// upload-id-marker.
    String? uploadIdMarker,

    /// The account ID of the expected bucket owner. If the account ID that you
    /// provide does not match the actual owner of the bucket, the request fails
    /// with the HTTP status code 403 Forbidden (access denied).
    String? expectedBucketOwner,

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
