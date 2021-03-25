import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'country.page.dart';
import 'cubit/country.cubit.dart';

class CountryModule extends StatelessWidget {
  const CountryModule({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String country = ModalRoute.of(context).settings.arguments;

    return BlocProvider(
      key: Key('CountryModule'),
      create: (context) => CountryCubit(country),
      child: CountryPage(),
    );
  }
}
