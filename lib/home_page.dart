import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poc_barcodescanner/home_page_controller.dart';

class HomePage extends StatelessWidget {
  HomePage() {
    Get.put(HomePageController());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BarCode Scanner'),
          backgroundColor: Colors.blueAccent,
        ),
        body: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/barcodefig.png', width: 300),
              Text(
                'Valor do código de barras:',
                style: Theme.of(context).textTheme.headline5?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black45),
              ),
              GetBuilder<HomePageController>(builder: (controller) {
                return Text(
                  controller.valorCodigoBarras,
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: Colors.black54),
                );
              }),
              SizedBox(
                height: 80,
              ),
              TextButton.icon(
                onPressed: () {
                  Get.find<HomePageController>().escanearCodigoBarras();
                },
                icon: Image.asset('assets/barcode.jpg', width: 50),
                label: Text(
                  'Ler código de barras',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.blueAccent),
                ),
              ),
            ],
          ),
        ));
  }
}
