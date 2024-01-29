import 'package:flutter_bloc/flutter_bloc.dart';
import '../repo/dataShow_impl.dart';
import 'dataShow_event.dart';
import 'dataShow_state.dart';

class DataShowBloc extends Bloc<DataShowEvent, DataShowState> {
  final DataShowRepo _repository;

  DataShowBloc(this._repository) : super(DataShowLoadingState()) {
    on<DataShowLoadEvent>((event, emit) async {
      emit(DataShowLoadingState());
      final user = await _repository.dataShowFetch();
        print('This is from bloc: $user');
        user.fold(
        (failure) => emit(DataShowErrorState('Error in Bloc')), 
        (user) => emit(DataShowLoadedState( user))
        //emit(DataShowLoadedState( user)
        );
    });
  }
}
