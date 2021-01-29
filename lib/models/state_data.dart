import 'package:real_state/models/real_state.dart';

class StaticData {
  static final List<realState> sampleStatic = [
    realState(
      name: "Gorgious Appartment",
      imagePath: "assets/images/property-1.png",
      price: "\$6000/yr",
      description: "1-3 Beds, 1-2 Baths",
      address: "252 1st Avenue",
      propertyTypes: Real_State.AGENCY,
      liked: false,
    ),
    realState(
      name: "Lemon Appartment",
      imagePath: "assets/images/property-2.png",
      price: "\$3500/yr",
      description: "1-4 Beds, 1-2 Baths",
      address: "252 1st Avenue",
      propertyTypes: Real_State.PRIVATE,
      liked: true,
    ),
    realState(
      name: "Gaya Appartment",
      imagePath: "assets/images/property-3.png",
      price: "\$5000",
      description: "1-6 Beds, 1 Baths",
      address: "252 1st Avenue",
      propertyTypes: Real_State.AGENCY,
      liked: false,
    ),
    realState(
      name: "Nemous Appartment",
      imagePath: "assets/images/property-4.png",
      price: "\$4200",
      description: "1-5 Beds, 1-2 Baths",
      address: "252 1st Avenue",
      propertyTypes: Real_State.AGENCY,
      liked: true,
    ),
  ];
}
