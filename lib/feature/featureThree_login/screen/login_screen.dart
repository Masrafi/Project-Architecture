import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../core/shared_preference/sharedPrefarance_service.dart';
import '../bloc/login_bloc.dart';
import '../bloc/login_event.dart';
import '../bloc/login_state.dart';
import '../repo/loginShow_impl.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = new TextEditingController();
  var passController = new TextEditingController();
  bool colo1 = false;
  bool colo2 = false;
  late String fName, lName, email, pass, conPass;
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LogInBloc>(
           create: (context) => LogInBloc(LoginRepo()),
           child: Scaffold(
            body: SingleChildScrollView(
                  reverse: true,
                  child: Column(
                    children: [
                      BlocConsumer<LogInBloc, LogInState>(
                        listener: (context, state) {
                          if (state is LogInSuccessState) {
                           //print(state.loginModel.token?.token.toString());
                           setState(() {
                           SharedPreferencesService.saveString('token', '${state.loginModel.token?.token.toString()}');
                           SharedPreferencesService.saveString('id', state.loginModel.user!.last.id.toString());
                           });
                            //showSpinner = false;
                             Future.delayed(const Duration(milliseconds: 500));

                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Login Successfully'),
                              ),
                            );
                            Navigator.pushNamed(
                            context,
                            '/showScreen'
                          );
                          }
                          if (state is LogInFailState) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Login Fail'),
                              ),
                            );
                          }
                        },
                        //child: BlocBuilder<LogInBloc, LogInState>(
                        builder: (context, state) {
                          return Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.height / 40,
                                  right: MediaQuery.of(context).size.height / 40,
                                  top: MediaQuery.of(context).size.height / 40,
                                  bottom: MediaQuery.of(context).size.height / 40,
                                ),
                                margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height / 5,
                                  left: MediaQuery.of(context).size.height / 40,
                                  right: MediaQuery.of(context).size.height / 40,
                                  // top: displayWidth(context) * .04,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 1,
                                      blurRadius: 10,
                                      offset:
                                          const Offset(0, 0), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        // Image.asset(
                                        //   'assets/registration.png',
                                        //   height: 50,
                                        //   width: 20,
                                        // ),
                                        const Text(
                                          'Log In',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.italic),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        if (state is LogInErrorState) ...[
                                          Center(
                                            child: Text(
                                              state.errorMessage,
                                              style: const TextStyle(
                                                color: Colors.black,
                                              ),
                                            ),
                                          )
                                        ],
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    TextFormField(
                                      onTap: () {
                                        setState(() {
                                          colo1 = true;
                                          colo2 = false;
                                        });
                                      },
                                      onChanged: (value) {
                                        email = value;
                                        BlocProvider.of<LogInBloc>(context).add(
                                            LogInTextChangeEvent(emailController.text,
                                                passController.text));
                                      },
                                      controller: emailController,
                                      cursorColor: Colors.green,
                                      keyboardType: TextInputType.emailAddress,
                                      //controller: _email,
                                      style: const TextStyle(color: Colors.green),
                                      // validator: (val) =>
                                      //     val!.isEmpty || !val.contains("@")
                                      //         ? "Enter a valid eamil"
                                      //         : null,
                                      decoration: InputDecoration(
                                          enabledBorder: const UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),
                                          ),
                                          focusedBorder: const UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.green),
                                          ),
                                          //border: InputBorder.none,
                                          // contentPadding: EdgeInsets.only(top: 14, left: 20, right: 20),
                                          prefixIcon: Padding(
                                            padding: const EdgeInsets.only(right: 20),
                                            child: Icon(
                                              FontAwesomeIcons.envelope,
                                              color: colo1 == true
                                                  ? Colors.green
                                                  : Colors.black,
                                              size: 20,
                                            ), // Change this icon as per your requirement
                                          ),
                                          hintText: "Email",
                                          hintStyle: TextStyle(
                                            color: colo1 == true
                                                ? Colors.green
                                                : Colors.black,
                                          )),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    TextFormField(
                                      obscureText: _obscureText,
                                      onTap: () {
                                        setState(() {
                                          colo1 = false;
                                          colo2 = true;
                                        });
                                      },
                                      onChanged: (va) {
                                        BlocProvider.of<LogInBloc>(context).add(
                                            LogInTextChangeEvent(emailController.text,
                                                passController.text));
                                      },
                                      keyboardType: TextInputType.visiblePassword,
                                      //controller: _pass,
                                      controller: passController,
                                      style: const TextStyle(color: Colors.green),
                                      // validator: (val) {
                                      //   if (val!.isEmpty) {
                                      //     return 'Password is empty';
                                      //   } else if (val.trim().length < 5) {
                                      //     return "Give at least 6 characters";
                                      //   }
                                      // },
                                      cursorColor: Colors.green,
                                      decoration: InputDecoration(
                                          enabledBorder: const UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),
                                          ),
                                          focusedBorder: const UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.green),
                                          ),
                                          //border: InputBorder.none,
                                          contentPadding: const EdgeInsets.only(
                                            top: 14,
                                          ),
                                          prefixIcon: Padding(
                                            padding: const EdgeInsets.only(right: 20),
                                            child: Icon(
                                              FontAwesomeIcons.key,
                                              color: colo2 == true
                                                  ? Colors.green
                                                  : Colors.black,
                                              size: 20,
                                            ), // Change this icon as per your requirement
                                          ),
                                          suffixIcon: InkWell(
                                            onTap: () {
                                              //_toggle();
                                            },
                                            child: Icon(
                                              FontAwesomeIcons.eye,
                                              color: colo2 == true
                                                  ? Colors.green
                                                  : Colors.black,
                                              size: 20,
                                            ),
                                          ),
                                          hintText: "Password",
                                          hintStyle: TextStyle(
                                            color: colo2 == true
                                                ? Colors.green
                                                : Colors.black,
                                          )),
                                    ),
                                    const SizedBox(
                                      height: 18,
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: InkWell(
                                        child: const Text(
                                          "Forgot Password",
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 16),
                                        ),
                                        onTap: () {
                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //         builder: (context) => ForgotPas()));
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              ),
                              if (state is LogInLoadingState) ...[
                                const Center(child: CircularProgressIndicator())
                              ],
                              Container(
                                margin: const EdgeInsets.only(left: 270, right: 20, top: 50),
                                height: 45,
                                decoration: BoxDecoration(
                                  color: (state is LogInValidState)
                                      ? Colors.teal
                                      : Colors.grey,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(18),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 1,
                                      blurRadius: 10,
                                      offset:
                                          const Offset(0, 0), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: GestureDetector(
                                  onTap: () async {
                                    if (state is LogInValidState) {
                                      BlocProvider.of<LogInBloc>(context).add(
                                        LogInSubmittedEvent(
                                          emailController.text,
                                          passController.text,
                                        ),
                                      );
                                      // emailController.clear();
                                      // passController.clear();
                                      // Navigator.pushNamed(context, '/internet', arguments: {
                                      //   "title": emailController.text,
                                      //   "pass": passController.text
                                      // });
                                    } else {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                          content: Text('TextField is not valid'),
                                        ),
                                      );
                                    }
                                  },
                                  child: const Center(
                                    child: Text(
                                      'Sign In',
                                      style: TextStyle(
                                        color: Colors.white,
                                        letterSpacing: 1.5,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'OpenSans',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Don't have an account? ",
                                    style: TextStyle(
                                      color: Colors.black26,
                                      fontSize: MediaQuery.of(context).size.height / 55,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, '/registration');
                                    },
                                    child: const Text(
                                      'Signup',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      ),
                      //),
                    ],
                  ),
                )),
         );
    
    
  }
}
