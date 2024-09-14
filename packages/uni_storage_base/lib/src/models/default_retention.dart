/// The container element for optionally specifying the default Object Lock retention settings for new objects placed in the specified bucket.
class DefaultRetention {
  DefaultRetention({
    this.days,
    this.mode,
    this.years,
  });

  final int? days;
  final String? mode;
  final int? years;
}
