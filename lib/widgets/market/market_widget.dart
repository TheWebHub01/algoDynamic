import 'package:algodynamic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

Column marketWidget() {
  return Column(
    children: [
      Expanded(
          child: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: const [
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Tile(index: 0),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Tile(index: 1),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Tile(index: 2),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Tile(index: 3),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Tile(index: 4),
          ),
        ],
      )),
    ],
  );
}

List FincialService = [
  {'title': 'HDFC BANK', 'price': '1.28%'},
  {'title': 'SBIN', 'price': '-0.41%'},
  {'title': 'BAJFINANCE', 'price': '1.23%'},
  {'title': 'AXIS BANK', 'price': '0.67%'},
  {'title': 'ICICI BANK', 'price': '-0.22%'},
  {'title': 'KOTAK BANK', 'price': '-0.14%'},
  {'title': 'BAJAJFINSV', 'price': '0.38%'},
  {'title': 'SBI LIFE', 'price': '0.13%'},
  {'title': 'KOTAK BANK', 'price': '-0.14%'},
  {'title': 'BAJAJFINSV', 'price': '0.38%'},
  {'title': 'SBI LIFE', 'price': '0.13%'},
];

class Tile extends StatelessWidget {
  final int index;

  const Tile({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.blueAccent, // You can customize this as needed
      child: Center(
        child: Text(
          'Tile $index',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
