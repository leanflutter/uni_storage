/// Container for specifying if periodic QueryProgress messages should be sent.
class RequestProgress {
  RequestProgress({
    this.enabled,
  });

  /// Specifies whether periodic QueryProgress frames should be sent. Valid
  /// values: TRUE, FALSE. Default value: FALSE.
  final bool? enabled;
}
