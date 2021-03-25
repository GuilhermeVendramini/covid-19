import 'package:bloc/bloc.dart';
import 'package:covid_app/app/shared/models/covid/model.covid.country.dart';
import 'package:covid_app/app/shared/services/covid/service.covid.dart';
import 'package:meta/meta.dart';

part 'country.state.dart';

class CountryCubit extends Cubit<CountryState> {
  final String country;

  CountryCubit(this.country) : super(CountryInitial());

  final ServiceCovid _serviceCovid = ServiceCovid();

  Future<void> loadSpecificCountry() async {
    try {
      emit(CountryLoading());

      final ModelCovidCountry covidCountry =
          await _serviceCovid.getSpecificCountry(country);

      emit(CountryDone(covidCountry));
    } catch (e) {
      print(e);
      emit(CountryError('Error ao carregar dados'));
    }
  }
}
