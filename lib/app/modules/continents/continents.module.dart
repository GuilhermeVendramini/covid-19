import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'continents.page.dart';
import 'cubit/continents.cubit.dart';

class ContinentsModule extends StatelessWidget {
  const ContinentsModule({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      key: Key('ContinentsModule'),
      create: (context) => ContinentsCubit(),
      child: ContinentsPage(),
    );
  }
}
