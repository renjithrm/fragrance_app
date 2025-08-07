import 'package:flutter/material.dart';
import 'package:fragrance_app/app/app.bottomsheets.dart';
import 'package:fragrance_app/app/app.dialogs.dart';
import 'package:fragrance_app/app/app.locator.dart';
import 'package:fragrance_app/app/app.router.dart';
import 'package:fragrance_app/ui/common/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme(),
          appBarTheme: const AppBarTheme(
            scrolledUnderElevation: 0.0,
          ),
          scaffoldBackgroundColor: kcScaffoldBgColor),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [StackedService.routeObserver],
    );
  }
}

const dummy = {
  "error_code": 0,
  "message": "Success",
  "data": {
    "home_fields": [
      {
        "type": "carousel",
        "carousel_items": [
          {
            "id": 32,
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/cms/carousel/QanUXXwZZ15gHK1M5aAcqCduTeBbquS7jq6N2v9B.jpg",
            "type": "Brand"
          },
          {
            "id": 31,
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/cms/carousel/yLXGoF9HgqvvrakyNng8Xc55s2SleP86Xno5N6Et.jpg",
            "type": "Brand"
          },
          {
            "id": 30,
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/cms/carousel/jcf6QtNs1Gxq4E2LKDFAySNNU0XBKdOU9ppdkvwJ.jpg",
            "type": "Brand"
          },
          {
            "id": 38,
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/cms/carousel/tExJuUkzxxGvBn8OcT5W9zZcCXbuRxaJiWZNNb1X.jpg",
            "type": "Brand"
          }
        ]
      },
      {
        "type": "brands",
        "brands": [
          {
            "id": 38,
            "name": "Maison",
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/brand/1749807760caticon.jpg"
          },
          {
            "id": 32,
            "name": "Athoor al Alam",
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/brand/1707226965caticon.png"
          },
          {
            "id": 31,
            "name": "French Avenue",
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/brand/1707226927caticon.png"
          },
          {
            "id": 30,
            "name": "Fragrance World",
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/brand/1706782651caticon.jpg"
          }
        ]
      },
      {
        "type": "category",
        "categories": [
          {
            "id": 33,
            "name": "Deo",
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/category/1720755138caticon.png"
          },
          {
            "id": 34,
            "name": "Eau de Toilette",
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/category/1720755163caticon.png"
          },
          {
            "id": 25,
            "name": "Eau de Parfums",
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/category/1706595393caticon.png"
          }
        ]
      },
      {
        "type": "rfq",
        "image":
            "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/cms/rfq-banner/u2qQ6XfmHPAvcyMHkQPbb2iZDB9Y7EyJFYLqhfQj.jpg"
      },
      {
        "type": "collection",
        "collection_id": 1,
        "name": "Just Launched",
        "products": [
          {
            "id": 941,
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/medias/FW0003.jpg",
            "name": "Test Product 2",
            "currency": "AED",
            "unit": "per Carton",
            "wishlisted": false,
            "rfq_status": false,
            "cart_count": 0,
            "future_cart_count": 0,
            "has_stock": false,
            "price": "9.80",
            "actual_price": "10.00",
            "offer": "2% OFF",
            "offer_prices": []
          },
          {
            "id": 392,
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/medias/FA0085.jpg",
            "name": "Fierte",
            "currency": "AED",
            "unit": "per Carton",
            "wishlisted": false,
            "rfq_status": false,
            "cart_count": 0,
            "future_cart_count": 0,
            "has_stock": false,
            "price": "468.00",
            "actual_price": "520.00",
            "offer": "10% OFF",
            "offer_prices": []
          },
          {
            "id": 410,
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/medias/AA0013.jpg",
            "name": "Classique",
            "currency": "AED",
            "unit": "per Carton",
            "wishlisted": false,
            "rfq_status": false,
            "cart_count": 0,
            "future_cart_count": 0,
            "has_stock": false,
            "price": "432.00",
            "actual_price": "480.00",
            "offer": "10% OFF",
            "offer_prices": []
          },
          {
            "id": 391,
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/medias/FA0084.jpg",
            "name": "El Dorado",
            "currency": "AED",
            "unit": "per Carton",
            "wishlisted": false,
            "rfq_status": false,
            "cart_count": 0,
            "future_cart_count": 0,
            "has_stock": false,
            "price": "468.00",
            "actual_price": "520.00",
            "offer": "10% OFF",
            "offer_prices": []
          },
          {
            "id": 388,
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/medias/FA0081.jpg",
            "name": "Arsh Extrait",
            "currency": "AED",
            "unit": "per Carton",
            "wishlisted": false,
            "rfq_status": false,
            "cart_count": 0,
            "future_cart_count": 0,
            "has_stock": false,
            "price": "468.00",
            "actual_price": "520.00",
            "offer": "10% OFF",
            "offer_prices": []
          }
        ]
      },
      {
        "type": "future-order",
        "image":
            "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/cms/future-banner/WHp1t7uynvKwhTIcFAt9fP5BFSoAoFEvz3uFgUzP.jpg"
      },
      {
        "type": "banner-grid",
        "banners": [
          {
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/cms/banner-grid/xMLTL7iQ0LKeljQiIf26GXibe8sRqAPTpIvaAmvK.jpg",
            "type": "Product",
            "id": 10
          },
          {
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/cms/banner-grid/dtTLimXx1NEknSLgK2MVmDAKAXp05Hzw4syK6q8B.jpg",
            "type": "Brand",
            "id": 30
          }
        ]
      },
      {
        "type": "collection",
        "collection_id": 2,
        "name": "Featured Products",
        "products": [
          {
            "id": 940,
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/medias/FW0002.jpg",
            "name": "Test Product 1",
            "currency": "AED",
            "unit": "per Carton",
            "wishlisted": false,
            "rfq_status": false,
            "cart_count": 0,
            "future_cart_count": 0,
            "has_stock": true,
            "price": "9.80",
            "actual_price": "10.00",
            "offer": "2% OFF",
            "offer_prices": []
          },
          {
            "id": 406,
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/medias/AA0009.jpg",
            "name": "Al Zahra",
            "currency": "AED",
            "unit": "per Carton",
            "wishlisted": false,
            "rfq_status": false,
            "cart_count": 0,
            "future_cart_count": 0,
            "has_stock": false,
            "price": "432.00",
            "actual_price": "480.00",
            "offer": "10% OFF",
            "offer_prices": []
          },
          {
            "id": 403,
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/medias/AA0006.jpg",
            "name": "Al Saqr Shaheen",
            "currency": "AED",
            "unit": "per Carton",
            "wishlisted": false,
            "rfq_status": false,
            "cart_count": 0,
            "future_cart_count": 0,
            "has_stock": false,
            "price": "432.00",
            "actual_price": "480.00",
            "offer": "10% OFF",
            "offer_prices": []
          },
          {
            "id": 405,
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/medias/AA0008.jpg",
            "name": "Al Sayaad For Women",
            "currency": "AED",
            "unit": "per Carton",
            "wishlisted": false,
            "rfq_status": false,
            "cart_count": 0,
            "future_cart_count": 0,
            "has_stock": false,
            "price": "432.00",
            "actual_price": "480.00",
            "offer": "10% OFF",
            "offer_prices": []
          },
          {
            "id": 404,
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/medias/AA0007.jpg",
            "name": "Al Sayaad For Men",
            "currency": "AED",
            "unit": "per Carton",
            "wishlisted": false,
            "rfq_status": false,
            "cart_count": 0,
            "future_cart_count": 0,
            "has_stock": false,
            "price": "432.00",
            "actual_price": "480.00",
            "offer": "10% OFF",
            "offer_prices": []
          }
        ]
      },
      {
        "type": "banner",
        "banner": {
          "id": 10,
          "image":
              "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/cms/bottom-banner/7FS5PB3gxJV6ciJxEbwdhx48NXm5uCaTdClbfKam.jpg",
          "type": "Product"
        }
      },
      {
        "type": "collection",
        "collection_id": 3,
        "name": "Our Bestsellers",
        "products": [
          {
            "id": 942,
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/product-thumb/1741951482product-thumbnail.jpg",
            "name": "Test Product 003",
            "currency": "AED",
            "unit": "per Carton",
            "wishlisted": false,
            "rfq_status": false,
            "cart_count": 0,
            "future_cart_count": 0,
            "has_stock": false,
            "price": "95.00",
            "actual_price": "100.00",
            "offer": "5% OFF",
            "offer_prices": []
          },
          {
            "id": 941,
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/medias/FW0003.jpg",
            "name": "Test Product 2",
            "currency": "AED",
            "unit": "per Carton",
            "wishlisted": false,
            "rfq_status": false,
            "cart_count": 0,
            "future_cart_count": 0,
            "has_stock": false,
            "price": "9.80",
            "actual_price": "10.00",
            "offer": "2% OFF",
            "offer_prices": []
          },
          {
            "id": 940,
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/medias/FW0002.jpg",
            "name": "Test Product 1",
            "currency": "AED",
            "unit": "per Carton",
            "wishlisted": false,
            "rfq_status": false,
            "cart_count": 0,
            "future_cart_count": 0,
            "has_stock": true,
            "price": "9.80",
            "actual_price": "10.00",
            "offer": "2% OFF",
            "offer_prices": []
          },
          {
            "id": 892,
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/medias/1162.jpg",
            "name": "Suspenso Deo",
            "currency": "AED",
            "unit": "per Carton",
            "wishlisted": false,
            "rfq_status": false,
            "cart_count": 0,
            "future_cart_count": 0,
            "has_stock": false,
            "price": "6.00",
            "actual_price": "7.00",
            "offer": "10.7% OFF",
            "offer_prices": []
          },
          {
            "id": 917,
            "image":
                "https://s419.previewbay.com/fragrance-b2b-backend/public/storage/medias/3085.jpg",
            "name": "Versus Ocean Bleu Femme(NP-205)",
            "currency": "AED",
            "unit": "per Carton",
            "wishlisted": false,
            "rfq_status": false,
            "cart_count": 0,
            "future_cart_count": 0,
            "has_stock": true,
            "price": "20.00",
            "actual_price": "22.00",
            "offer": "10.7% OFF",
            "offer_prices": []
          }
        ]
      }
    ],
    "notification_count": 0
  }
};
