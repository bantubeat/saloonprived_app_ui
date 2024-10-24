import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyLineChart extends StatelessWidget {
  const MyLineChart();

  @override
  Widget build(BuildContext context) {
    return LineChart(
      sampleData1,
      duration: const Duration(milliseconds: 250),
    );
  }

  LineChartData get sampleData1 => LineChartData(
        lineTouchData: lineTouchData1,
        gridData: gridData, // Utilisation des données de grille
        titlesData: titlesData1,
        borderData: borderData,
        lineBarsData: lineBarsData1,
        minX: 0,
        maxX: 11,
        maxY: 5,
        minY: 0,
      );

  LineTouchData get lineTouchData2 => LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          getTooltipColor: (touchedSpot) => Colors.blueGrey.withOpacity(0.8),
        ),
      );

  LineTouchData get lineTouchData1 => LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          getTooltipColor: (touchedSpot) => Colors.blueGrey.withOpacity(0.8),
          tooltipRoundedRadius: 8, // Rounded corners
          tooltipPadding: const EdgeInsets.all(8), // Padding inside the tooltip
          getTooltipItems: (List<LineBarSpot> touchedSpots) {
            return touchedSpots.map((spot) {
              // Determine the color of the text based on the line color (by barIndex)
              Color textColor;
              if (spot.barIndex == 0) {
                // Blue line
                textColor = Colors.blue;
              } else if (spot.barIndex == 1) {
                // Yellow line
                textColor = Colors.yellow;
              } else {
                // Default text color if more lines exist
                textColor = Colors.black;
              }

              final textStyle = TextStyle(
                color: textColor, // Set text color dynamically
                fontWeight: FontWeight.w700, // Font weight
                fontSize: 10, // Font size
              );

              return LineTooltipItem(
                '  ${spot.y} BZC  ', // Tooltip content
                textStyle,
              );
            }).toList();
          },
          fitInsideHorizontally:
              true, // Ensure tooltip stays inside the chart horizontally
          fitInsideVertically:
              true, // Ensure tooltip stays inside the chart vertically
        ),
        touchCallback: (FlTouchEvent event, LineTouchResponse? response) {
          // Handle touch interactions if needed
        },
      );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: const AxisTitles(),
        topTitles: const AxisTitles(),
        leftTitles: const AxisTitles(),
      );

  List<LineChartBarData> get lineBarsData1 => [
        lineChartBarDataBlue,
        lineChartBarDataYellow,
      ];
  static List<String> months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    final style = GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 9,
    );
    Widget text;
    if (value.toInt() >= 0 && value.toInt() < months.length) {
      text = Text(months[value.toInt()], style: style);
    } else {
      text = const Text(''); // Handle any unexpected value
    }

    return Center(
      child: SideTitleWidget(
        axisSide: meta.axisSide,
        space: 5,
        fitInside:
            SideTitleFitInsideData.fromTitleMeta(meta, distanceFromEdge: -3),
        child: text,
      ),
    );
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  // Grille avec lignes grisées
  FlGridData get gridData => FlGridData(
        drawVerticalLine: false, // Ne dessiner que les lignes horizontales
        horizontalInterval: 1, // Espacement des lignes à chaque unité
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: Colors.grey, // Couleur des lignes en gris
            strokeWidth: 1, // Épaisseur des lignes
          );
        },
      );

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(width: 1.1, color: Colors.grey),
          left: BorderSide(color: Colors.transparent),
          right: BorderSide(color: Colors.transparent),
          top: BorderSide(color: Colors.transparent),
        ),
      );

  // Courbe bleue
  LineChartBarData get lineChartBarDataBlue => LineChartBarData(
        isCurved: true,
        color: Colors.blue,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(),
        spots: const [
          FlSpot(0, 1),
          FlSpot(1, 2),
          FlSpot(2, 1.8),
          FlSpot(3, 3),
          FlSpot(4, 2.5),
          FlSpot(5, 3.2),
          FlSpot(6, 3),
          FlSpot(7, 2.8),
          FlSpot(8, 3.5),
          FlSpot(9, 3),
          FlSpot(10, 2.7),
          FlSpot(11, 3),
        ],
      );

  // Courbe jaune
  LineChartBarData get lineChartBarDataYellow => LineChartBarData(
        isCurved: true,
        color: Colors.yellow,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(),
        spots: const [
          FlSpot(0, 1.5),
          FlSpot(1, 1.2),
          FlSpot(2, 1.8),
          FlSpot(3, 2.2),
          FlSpot(4, 2),
          FlSpot(5, 2.5),
          FlSpot(6, 2.8),
          FlSpot(7, 3.1),
          FlSpot(8, 2.5),
          FlSpot(9, 2.8),
          FlSpot(10, 2.9),
          FlSpot(11, 3.2),
        ],
      );
}

class PieChartSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 140, // Adjust the size
        height: 140,
        child: PieChart(
          PieChartData(
            sections: pieChartSections(),
            centerSpaceRadius: 40, // Space at the center
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> pieChartSections() {
    return [
      PieChartSectionData(
        color: Colors.green, // Green section
        value: 80, // Percentage of the green section
        title: '',
        radius: 20, // Size of the section
      ),
      PieChartSectionData(
        color: const Color.fromRGBO(236, 255, 242, 1),
        value: 20,
        title: '',
        radius: 20,
      ),
    ];
  }
}
