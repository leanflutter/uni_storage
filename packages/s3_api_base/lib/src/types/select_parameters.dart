import 'package:s3_api_base/src/types/input_serialization.dart';
import 'package:s3_api_base/src/types/output_serialization.dart';

/// Amazon S3 Select is no longer available to new customers. Existing customers
/// of Amazon S3 Select can continue to use the feature as usual. Learn more
class SelectParameters {
  SelectParameters({
    required this.expression,
    required this.expressionType,
    required this.inputSerialization,
    required this.outputSerialization,
  });

  /// Amazon S3 Select is no longer available to new customers. Existing
  /// customers of Amazon S3 Select can continue to use the feature as usual.
  /// Learn more
  final String expression;

  /// The type of the provided expression (for example, SQL).
  final String expressionType;

  /// Describes the serialization format of the object.
  final InputSerialization inputSerialization;

  /// Describes how the results of the Select job are serialized.
  final OutputSerialization outputSerialization;
}
