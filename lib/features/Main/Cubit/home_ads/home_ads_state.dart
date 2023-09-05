abstract class HomeAdsState {}

class HomeAdsInitial extends HomeAdsState {}

class HomeAdsLoading extends HomeAdsState {}

class HomeAdsSuccess extends HomeAdsState {}

class HomeAdsError extends HomeAdsState {
  final String message;
  HomeAdsError(this.message);
}
