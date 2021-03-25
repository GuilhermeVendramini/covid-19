import 'package:covid_app/app/modules/continents/widgets/lists/continents.widget.list.covid.dart';
import 'package:covid_app/app/shared/utils/snackbars/snackbar.default.dart';
import 'package:covid_app/app/shared/widgets/icons/widget.icon.error.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:covid_app/app/modules/continents/cubit/continents.cubit.dart';
import 'package:flutter/material.dart';

class ContinentsWidgetBlockMain extends StatefulWidget {
  const ContinentsWidgetBlockMain({Key key}) : super(key: key);

  @override
  _ContinentsWidgetBlockMainState createState() =>
      _ContinentsWidgetBlockMainState();
}

class _ContinentsWidgetBlockMainState extends State<ContinentsWidgetBlockMain> {
  @override
  void initState() {
    context.read<ContinentsCubit>().loadAllContinents();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ContinentsCubit, ContinentsState>(
      listener: (context, state) {
        if (state is ContinentsError)
          SnackBarDefault.buildSnackBar(
            context: context,
            content: state.message,
          );
      },
      builder: (context, state) {
        if (state is ContinentsError) return const WidgetIconError();

        if (state is ContinentsLoading)
          return const Center(
            child: CircularProgressIndicator(),
          );

        if (state is ContinentsDone) {
          final covidContinents = state.covidContinents;

          return ContinentsWidgetListCovid(covidContinents);
        }

        return const SizedBox();
      },
    );
  }
}
