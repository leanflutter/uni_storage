/// The container element for optionally specifying the default Object Lock
/// retention settings for new objects placed in the specified bucket.
class DefaultRetention {
  DefaultRetention({
    this.days,
    this.mode,
    this.years,
  });

  /// The number of days that you want to specify for the default retention
  /// period. Must be used with Mode.
  final int? days;

  /// The default Object Lock retention mode you want to apply to new objects
  /// placed in the specified bucket. Must be used with either Days or Years.
  final String? mode;

  /// The number of years that you want to specify for the default retention
  /// period. Must be used with Mode.
  final int? years;
}
