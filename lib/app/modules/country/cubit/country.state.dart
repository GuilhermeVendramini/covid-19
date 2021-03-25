part of 'country.cubit.dart';

@immutable
abstract class CountryState {
  const CountryState();
}

class CountryInitial extends CountryState {
  const CountryInitial();
}

class CountryLoading extends CountryState {
  const CountryLoading();
}

class CountryDone extends CountryState {
  final ModelCovidCountry covidCountry;

  const CountryDone(this.covidCountry);
}

class CountryError extends CountryState {
  final String message;

  const CountryError(this.message);
}
