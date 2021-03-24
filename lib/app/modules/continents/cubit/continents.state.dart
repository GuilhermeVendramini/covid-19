part of 'continents.cubit.dart';

@immutable
abstract class ContinentsState {
  const ContinentsState();
}

class ContinentsInitial extends ContinentsState {
  const ContinentsInitial();
}

class ContinentsLoading extends ContinentsState {
  const ContinentsLoading();
}

class ContinentsDone extends ContinentsState {
  final List<ModelCovidContinent> covidContinents;

  const ContinentsDone(this.covidContinents);
}

class ContinentsError extends ContinentsState {
  final String message;

  const ContinentsError(this.message);
}
