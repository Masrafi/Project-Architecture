import 'package:atbjobsapp/core/extensions/log_reg_extension.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../repo/loginShow_impl.dart';
import 'login_event.dart';
import 'login_state.dart';

class LogInBloc extends Bloc<LogInEvent, LogInState> {
  LoginRepo loginRepo;
  LogInBloc(this.loginRepo) : super(LogInInitialState()) {
    on<LogInTextChangeEvent>(
      (event, emit) {
        if (EmailValidator.validate(event.emailValue) == false) {
          emit(LogInErrorState("Please enter a valid email"));
        } else if (event.passwordValue.isValidPhone) {
          emit(LogInErrorState("Please enter a valiod password"));
        } else {
          emit(LogInValidState());
        }
      },
    );

    on<LogInSubmittedEvent>(
      (event, emit) async {
        emit(LogInLoadingState());
        try{
          final message = await loginRepo.login(event.email, event.password);
          print("This is maessage: $message");
          emit(LogInSuccessState(loginModel: message));         
        }catch(e){
          print('..............................${e.toString()}');
          emit(LogInFailState());
        }
        
        
        
      },
    );
  }
}
