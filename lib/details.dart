import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
import 'package:com_279045_lab3/model/product.dart';

class DetailsPage extends StatefulWidget {
  final Product product;
  const DetailsPage({Key? key, required this.product}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Product Details'),
        ),
        body: Column(children: [
          Text(widget.product.prmodel.toString(),
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Expanded(
              flex: 5,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                      elevation: 10,
                      child: Container(
                          padding: const EdgeInsets.all(20),
                          child: SingleChildScrollView(
                              child: Table(
                                  //defaultColumnWidth: FixedColumnWidth(120.0),
                                  // border: TableBorder.all(
                                  //     color: Colors.black, style: BorderStyle.solid, width: 2,),
                                  columnWidths: const {
                                    0: FractionColumnWidth(0.3),
                                    1: FractionColumnWidth(0.7)
                                  },
                                  defaultVerticalAlignment:
                                      TableCellVerticalAlignment.top,
                                  children: [
                                    TableRow(children: [
                                      const Text('ID',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                      Text(widget.product.prid.toString()),
                                    ]),
                                    TableRow(children: [
                                      const Text('Price',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                      Text("RM " +
                                          double.parse(widget.product.prprice
                                                  .toString())
                                              .toStringAsFixed(2)),
                                    ]),
                                    TableRow(children: [
                                      const Text('Model',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                      Text(widget.product.prmodel.toString()),
                                    ]),
                                    TableRow(children: [
                                      const Text('Price',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                      Text("RM " +
                                          double.parse(widget.product.prprice
                                                  .toString())
                                              .toStringAsFixed(2)),
                                    ]),
                                    TableRow(children: [
                                      const Text('StockLeft',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                      Text(widget.product.prstockleft
                                          .toString()),
                                    ]),
                                    TableRow(children: [
                                      const Text('Fuel',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                      Text(widget.product.prfuel.toString()),
                                    ]),
                                    TableRow(children: [
                                      const Text('Colour',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                      Text(widget.product.prcolour.toString()),
                                    ]),
                                  ]))))))
        ]));
  }
}
