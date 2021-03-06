class FilterModel {
  String title;
  String description;
  List<FilterItem> filterItems;
  bool isRangFilter = false;

  FilterModel(
      {this.title,
      this.description,
      this.filterItems,
      this.isRangFilter = false});

  static List<FilterModel> filteredList() {
    return [
      FilterModel(
          title: "Size",
          description: "Select the size of your bed product ",
          filterItems: [
            FilterItem(value: "Queen Beds", quantity: 369,),
            FilterItem(
              value: "King Beds",
              quantity: 231,
              isSelected: true
            ),
            FilterItem(
              value: "Double Beds",
              quantity: 226,
            ),
            FilterItem(
              value: "Single Beds",
              quantity: 125,
            ),
            FilterItem(
              value: "King Single Beds",
              quantity: 107,
            ),
            FilterItem(
              value: "Toddler Beds",
              quantity: 5,
            ),
          ]),
      FilterModel(
          title: "Bed Type",
          description: "Select bed type",
          filterItems: [
            FilterItem(value: "Silver & Grey", quantity: 427,),
            FilterItem(
              value: "Platform Bed",
              quantity: 45,
            ),
            FilterItem(
              value: "Bed Base",
              quantity: 16,
            ),
            FilterItem(
              value: "Novelty Bed",
              quantity: 14,
            ),
            FilterItem(
              value: "Canopy / Four Poster Bed",
              quantity: 7,
            ),
            FilterItem(
              value: "Trundle Only",
              quantity: 14,
            ),
          ]),
      FilterModel(
        title: "Primary Color",
        description: "Select primary colour",
        filterItems: [
          FilterItem(
            value: "Silver & Grey",
            quantity: 427,
          ),
          FilterItem(
            value: "Black",
            quantity: 45,
          ),
          FilterItem(
            value: "White",
            quantity: 16,
          ),
          FilterItem(
            value: "Blue",
            quantity: 14,
          ),
          FilterItem(
            value: "Beige ",
            quantity: 14,
          ),
          FilterItem(
            value: "Medium Timber",
            quantity: 14,
          ),
          FilterItem(
            value: "Light Timber",
            quantity: 14,
          ),
        ],
      ),
      FilterModel(
        title: "Upholstery Material",
        description: "Select upholstery material",
        filterItems: [
          FilterItem(
            value: "Fabric",
            quantity: 427,
          ),
          FilterItem(
            value: "Leather",
            quantity: 45,
          ),
          FilterItem(
            value: "Velvet ",
            quantity: 16,
          ),
        ],
      ),
      FilterModel(
        title: "Style",
        description: "Select room style",
        filterItems: [
          FilterItem(
            value: "Modern",
            quantity: 427,
          ),
          FilterItem(
            value: "Contemporary",
            quantity: 45,
          ),
          FilterItem(
            value: "Classic ",
            quantity: 16,
          ),
        ],
      ),
      FilterModel(
        title: "Product Width",
        description: "Select your product width",
        isRangFilter: true,
        filterItems: [
          FilterItem(
            value: "160 cm",
            quantity: 427,
          ),
          FilterItem(
            value: "200 cm",
            quantity: 45,
          ),
          FilterItem(
            value: "240 cm",
            quantity: 16,
          ),
        ],
      ),
      FilterModel(
        title: "Product Height",
        description: "Select your product height",
        isRangFilter: true,
        filterItems: [
          FilterItem(
            value: "160 cm",
            quantity: 427,
          ),
          FilterItem(
            value: "200 cm",
            quantity: 45,
          ),
          FilterItem(
            value: "240 cm",
            quantity: 16,
          ),
        ],
      ),
      FilterModel(
        title: "Product Depth",
        description: "Select your product depth",
        isRangFilter: true,
        filterItems: [
          FilterItem(
            value: "160 cm",
            quantity: 427,
          ),
          FilterItem(
            value: "200 cm",
            quantity: 45,
          ),
          FilterItem(
            value: "240 cm",
            quantity: 16,
          ),
        ],
      ),
      FilterModel(
        title: "Seating Capacity",
        description: "Select your seating capacity",
        filterItems: [
          FilterItem(
            value: "2 Seaters",
            quantity: 427,
          ),
          FilterItem(
            value: "3 Seaters",
            quantity: 45,
          ),
          FilterItem(
            value: "4 Seaters",
            quantity: 16,
          ),
          FilterItem(
            value: "5 Seaters or More",
            quantity: 14,
          ),
        ],
      ),
      FilterModel(
        title: "Price Range",
        description: "Select your price range",
        isRangFilter: true,
        filterItems: [
          FilterItem(
            value: "Under \$250",
            quantity: 427,
          ),
          FilterItem(
            value: "\$250 to \$500",
            quantity: 45,
          ),
          FilterItem(
            value: "\$500 to \$1,000",
            quantity: 16,
          ),
          FilterItem(
            value: "\$1,000 to \$1,500",
            quantity: 14,
          ),
          FilterItem(
            value: "\$1,500 to \$2,500",
            quantity: 7,
          ),   FilterItem(
            value: "\$2,500 & Above",
            quantity: 7,
          ),
        ],
      ),
      FilterModel(
        title: "Special Offer",
        description: "Select your special offer",
        filterItems: [
          FilterItem(
            value: "Free Shipping",
            quantity: 427,
          ),
          FilterItem(
            value: "Sale",
            quantity: 45,
          ),
          FilterItem(
            value: "Our Picks",
            quantity: 16,
          ),
          FilterItem(
            value: "New Arrivals",
            quantity: 14,
          ),
        ],
      ),
      FilterModel(
        title: "Customer Rating",
        description: "Select your rating results",
        filterItems: [
          FilterItem(
            value: "5 Stars",
            quantity: 427,
          ),
          FilterItem(
            value: "4 Stars & Up",
            quantity: 45,
          ),
          FilterItem(
            value: "3 Stars & Up",
            quantity: 16,
          ),
          FilterItem(
            value: "All Reviewed Products",
            quantity: 14,
          ),
        ],
      ),
    ];
  }
}

class FilterItem {
  bool isSelected = false;

  String value;

  int quantity;

  FilterItem({this.isSelected = false, this.value, this.quantity});
}
