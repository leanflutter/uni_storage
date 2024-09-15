/// Container for the Suffix element.
class IndexDocument {
  IndexDocument({
    required this.suffix,
  });

  /// A suffix that is appended to a request that is for a directory on the
  /// website endpoint. (For example, if the suffix is index.html and you make a
  /// request to samplebucket/images/, the data that is returned will be for the
  /// object with the key name images/index.html.) The suffix must not be empty
  /// and must not include a slash character.
  final String suffix;
}
