class InventoryItem {
  final String cycleImage;
  final String cycletitle;
  final String cycletype;

  InventoryItem(
      {required this.cycleImage,
      required this.cycletitle,
      required this.cycletype});
}

List Inventory = [
  InventoryItem(
      cycleImage: "assets/images/inventory/Bicycle - 1280x811.png",
      cycletitle: "THE\nROAD\nBIKES",
      cycletype: "ROAD"),
  InventoryItem(
      cycleImage: "assets/images/inventory/favpng_santa-cruz-bicycles-mountain-bike-bicycle-suspension 1.png",
      cycletitle: "\t\t\t THE\nMOUNTAIN\n\t\t\t BIKES",
      cycletype: "MOUNTAIN"),
  InventoryItem(
      cycleImage: "assets/images/inventory/pngwing 1.png",
      cycletitle: "THE\nELECTRIC\nBIKES",
      cycletype: "ELECTRIC"),
];
