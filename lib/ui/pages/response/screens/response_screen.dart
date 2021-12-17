import 'package:cryptoinnovate/data/services/coin_pool.dart';
import 'package:cryptoinnovate/domain/models/coin_models.dart';
import 'package:cryptoinnovate/domain/use_case/controllers/theme_controller.dart';
import 'package:flutter/material.dart';

class ResponseScreen extends StatelessWidget {
  final ThemeController controller;

  const ResponseScreen({Key? key, required this.controller}) : super(key: key);

  Widget build(BuildContext context) {
    CoinPoolService service = CoinPoolService();
    Future<List<CoinModel>> futureCoins = service.fecthData();
    String imagenapi = controller.darkMode
        ? "assets/images/coindarkmode.png"
        : "assets/images/coin.png";
    return Expanded(
        flex: 2,
        child: FutureBuilder<List<CoinModel>>(
          future: futureCoins,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final items = snapshot.data!;
              return ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  CoinModel coin = items[index];
                  return Card(
                    child: Row(
                      children: [
                        Image.network(
                          coin.iconUrl,
                          errorBuilder: (BuildContext context, Object exception,
                              StackTrace? stackTrace) {
                            // Appropriate logging or analytics, e.g.
                            // myAnalytics.recordError(
                            //   'An error occurred loading "https://example.does.not.exist/image.jpg"',
                            //   exception,
                            //   stackTrace,
                            // );
                            return Image.asset(imagenapi,
                                width: 40, height: 40);
                          },
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("nombre: ${coin.name}"),
                            Text("rank: ${coin.rank}"),
                            Text("simbolo: ${coin.symbol}"),
                            Text("precio: ${coin.price.toStringAsFixed(2)}"),
                            Text(
                                "Capitalizacion del mercado: ${coin.marketCap.floor()}"),
                            Text("Volumen: ${coin.volume.floor()}")
                          ],
                        )
                      ],
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner.
            return const Center(child: CircularProgressIndicator());
          },
        ));
  }
}
