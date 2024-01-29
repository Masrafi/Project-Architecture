import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class DataShowEvent extends Equatable {
  const DataShowEvent();
}

class DataShowLoadEvent extends DataShowEvent {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
