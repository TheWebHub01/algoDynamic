import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

Column marketWidget() {
  return Column(
    children: [
      const MarketIndexHeader(),
      Expanded(
          child: StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              children: const [
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: MarketTile(
                title: "HDFC BANK",
                percentage: "+1.28%",
                color: Colors.green,
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: MarketTile(
                title: "SBIN",
                percentage: "-0.41%",
                color: Colors.red,
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: MarketTile(
                title: "ICICI BANK",
                percentage: "-0.22%",
                color: Colors.red,
              ),
            ),
          ])),
    ],
  );
}

class MarketIndexHeader extends StatelessWidget {
  const MarketIndexHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('NIFTY 50 - 24275.70 (+0.80, +0.35%)',
            style: TextStyle(color: Colors.green)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FilterButton('< -1'),
            FilterButton('-1'),
            FilterButton('-0.5'),
            FilterButton('0.5'),
            FilterButton('1'),
            FilterButton('> 1'),
          ],
        ),
      ],
    );
  }
}

class FilterButton extends StatelessWidget {
  final String text;
  const FilterButton(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }
}

class MarketTile extends StatelessWidget {
  final String title;
  final String percentage;
  final Color color;

  const MarketTile({
    super.key,
    required this.title,
    required this.percentage,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              percentage,
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
