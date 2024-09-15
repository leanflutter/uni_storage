/// Container for Payer.
class RequestPaymentConfiguration {
  RequestPaymentConfiguration({
    required this.payer,
  });

  /// Specifies who pays for the download and request fees.
  final String payer;
}
