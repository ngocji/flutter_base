import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget/flutter_widget.dart';

import 'builder.dart';

class BaseWidget extends StatelessWidget {
  const BaseWidget({
    Key? key,
    required this.bloc,
    required this.childBuilder,
  }) : super(key: key);

  final Cubit bloc;
  final BuilderObject childBuilder;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc,
      child: BlocConsumer(
        bloc: bloc,
        buildWhen: (prev, state) {
          return state is InitData ||
              state is StateSuccess ||
              state is StateError;
        },
        builder: (BuildContext context, Object? state) {
          return childBuilder.call(state);
        },
        listener: (BuildContext context, Object? state) {
          debugPrint('xxxxx: ${state?.toString()}');
          if (state is ShowLoading) {
            showLoadingOverlay(context);
          } else if (state is StateShowError) {
            //todo show error here
            dismissLoadingOverlay(context);
          } else {
            dismissLoadingOverlay(context);
          }
        },
      ),
    );
  }
}
