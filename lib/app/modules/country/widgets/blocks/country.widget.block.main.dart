import 'package:covid_app/app/modules/country/cubit/country.cubit.dart';
import 'package:covid_app/app/shared/utils/snackbars/snackbar.default.dart';
import 'package:covid_app/app/shared/widgets/icons/widget.icon.error.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import 'continents.widget.block.country.dart';

class CountryWidgetBlockMain extends StatefulWidget {
  CountryWidgetBlockMain({Key key}) : super(key: key);

  @override
  _CountryWidgetBlockMainState createState() => _CountryWidgetBlockMainState();
}

class _CountryWidgetBlockMainState extends State<CountryWidgetBlockMain> {
  void initState() {
    context.read<CountryCubit>().loadSpecificCountry();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CountryCubit, CountryState>(
      listener: (context, state) {
        if (state is CountryError)
          SnackBarDefault.buildSnackBar(
            context: context,
            content: state.message,
          );
      },
      builder: (context, state) {
        if (state is CountryError) return const WidgetIconError();

        if (state is CountryLoading)
          return const Center(
            child: CircularProgressIndicator(),
          );

        if (state is CountryDone) {
          final covidCountry = state.covidCountry;

          return ContinentsWidgetBlockCountry(covidCountry);
        }

        return const SizedBox();
      },
    );
  }
}
