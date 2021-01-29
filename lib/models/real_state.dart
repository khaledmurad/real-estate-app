enum Real_State { PRIVATE, AGENCY }

class realState {
  final String name;
  final String description;
  final String address;
  final String price;
  final String imagePath;
  final Real_State propertyTypes;
  final bool liked;

  realState({
    this.name,
    this.description,
    this.address,
    this.price,
    this.imagePath,
    this.liked,
    this.propertyTypes,
  });
}
