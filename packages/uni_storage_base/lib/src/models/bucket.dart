///  In terms of implementation, a Bucket is a resource. 
class Bucket {
  Bucket({
    this.creationDate,
    this.name,
  });

  final DateTime? creationDate;
  final String? name;
}
