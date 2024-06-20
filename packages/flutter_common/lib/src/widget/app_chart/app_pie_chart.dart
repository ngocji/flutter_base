import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_widget/flutter_widget.dart';


class AppPieChart extends StatefulWidget {
  final Color colorActive;
  final Color? colorBg;
  final int total;
  final int value;

  const AppPieChart(
      {super.key,
      required this.colorActive,
      this.colorBg,
      required this.total,
      required this.value});

  @override
  State<AppPieChart> createState() => _AppPieChartState();
}

class _AppPieChartState extends State<AppPieChart> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Row(
        children: <Widget>[
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          // touchedIndex = -1;
                          return;
                        }
                        // touchedIndex = pieTouchResponse
                        //     .touchedSection!.touchedSectionIndex;
                      });
                    },
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 0,
                  centerSpaceRadius: 60,
                  sections: showingSections(),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 28,
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
      // final isTouched = i == touchedIndex;
      // final fontSize = isTouched ? 25.0 : 16.0;
      // final radius = isTouched ? 10.0 : 20.0;
      // const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color:  Colors.deepOrange,
            value: 40,
            title: '',
            radius: 10,
            // titleStyle: TextStyle(
            //   fontSize: fontSize,
            //   fontWeight: FontWeight.bold,
            //   color: AppColors.mainTextColor1,
            //   shadows: shadows,
            // ),
          );
        case 1:
          return PieChartSectionData(
            color: Colors.grey,
            value: 30,
            title: '',
            radius: 10,
            // titleStyle: TextStyle(
            //   fontSize: fontSize,
            //   fontWeight: FontWeight.bold,
            //   color: AppColors.mainTextColor1,
            //   shadows: shadows,
            // ),
          );
        default:
          throw Error();
      }
    });
  }
}
