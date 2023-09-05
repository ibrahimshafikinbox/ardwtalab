import 'package:bloc/bloc.dart';
import 'package:connectivity/connectivity.dart';

enum ConnectivityStatus { connected, disconnected }

class ConnectivityCubit extends Cubit<ConnectivityStatus> {
  final Connectivity _connectivity;

  ConnectivityCubit(this._connectivity)
      : super(ConnectivityStatus.disconnected) {
    _subscribeToConnectivityChanges();
  }

  Future<void> _subscribeToConnectivityChanges() async {
    _connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        emit(ConnectivityStatus.disconnected);
      } else {
        emit(ConnectivityStatus.connected);
      }
    });
  }
}
