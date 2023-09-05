abstract class getDepartmentState {}

class getDepartmentInitial extends getDepartmentState {}

class getDepartmentLoading extends getDepartmentState {}

class getDepartmentSuccess extends getDepartmentState {}

class getDepartmentError extends getDepartmentState {
  final String message;
  getDepartmentError(this.message);
}
