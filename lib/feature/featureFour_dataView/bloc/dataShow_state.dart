import 'package:flutter/cupertino.dart';
import 'package:equatable/equatable.dart';

import '../model/view_model.dart';

@immutable
abstract class DataShowState extends Equatable {}

//data loading state
class DataShowLoadingState extends DataShowState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class DataShowLoadedState extends DataShowState {
  DataShowLoadedState(this.users);
  final List<DataView> users;
  @override
  // TODO: implement props
  List<Object?> get props => [users];
}

class DataShowErrorState extends DataShowState {
  DataShowErrorState(this.error);
  final String error;
  @override
  // TODO: implement props
  List<Object?> get props => [error];
}
