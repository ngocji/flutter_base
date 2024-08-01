import 'package:flutter_widget/flutter_widget.dart';
import 'package:showslinger/src/ui/screen/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/splashScreen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _runDelayHome();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _runDelayHome() {
     Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.of(context).popAndPushNamed(HomeScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.surface,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Center(
            child: AppLoading.centerLoading(),
          ),
        ],
      ),
    );
  }
}
