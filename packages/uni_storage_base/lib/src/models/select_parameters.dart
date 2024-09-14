import 'package:uni_storage_base/src/models/input_serialization.dart';
import 'package:uni_storage_base/src/models/output_serialization.dart';

/// Amazon S3 Select is no longer available to new customers. Existing customers of Amazon S3 Select can continue to use the feature as usual. Learn more 
class SelectParameters {
  SelectParameters({
  required  this.expression,
  required  this.expressionType,
  required  this.inputSerialization,
  required  this.outputSerialization,
  });

  final String expression;
  final String expressionType;
  final InputSerialization inputSerialization;
  final OutputSerialization outputSerialization;
}
