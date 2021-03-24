import 'package:bloc/bloc.dart';
import 'package:covid_app/app/shared/models/covid/model.covid.continent.dart';
import 'package:covid_app/app/shared/services/covid/service.covid.dart';
import 'package:meta/meta.dart';

part 'continents.state.dart';

class ContinentsCubit extends Cubit<ContinentsState> {
  ContinentsCubit() : super(ContinentsInitial());

  final ServiceCovid _serviceCovid = ServiceCovid();

  Future<void> loadAllContinents() async {
    try {
      emit(ContinentsLoading());

      final List<ModelCovidContinent> covidContinents =
          await _serviceCovid.getAllContinents();

      emit(ContinentsDone(covidContinents));
    } catch (e) {
      print(e);
      emit(ContinentsError('Error ao carregar dados'));
    }
  }
}
