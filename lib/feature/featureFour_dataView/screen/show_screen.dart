import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/shared_preference/sharedPrefarance_service.dart';
import '../bloc/dataShow_bloc.dart';
import '../bloc/dataShow_event.dart';
import '../bloc/dataShow_state.dart';
import '../model/view_model.dart';
import '../repo/dataShow_impl.dart';

class ShowScreen extends StatefulWidget {
  const ShowScreen({super.key});

  @override
  State<ShowScreen> createState() => _ShowScreenState();
}

class _ShowScreenState extends State<ShowScreen> {
  String? username;
  @override
  void initState() {
    // TODO: implement initState
    get();
    super.initState();
  }
  get()async{
     username = SharedPreferencesService.getString('token');
     print('This is value $username');
  }
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
                 providers: [
                   BlocProvider(
                     create: (context) => DataShowBloc(
                       RepositoryProvider.of<DataShowRepo>(context),
                     )..add(
                         DataShowLoadEvent(),
                       ),
                   ),
                 ],
                 child: Scaffold(
                     body:  BlocBuilder<DataShowBloc, DataShowState>(
                           builder: (context, state) {
                         if (state is DataShowLoadingState) {
                           return const Center(
                             child: CircularProgressIndicator(),
                           );
                         }
                         if (state is DataShowErrorState) {
                           return Center(
                             child: Text(state.error.toString()),
                           );
                         }
                         if (state is DataShowLoadedState) {
                           List<DataView> dataList = state.users;
                           return ListView.builder(
                               scrollDirection: Axis.vertical,
                               shrinkWrap: true,
                               itemCount: dataList.length,
                               itemBuilder: (_, index) {
                                 return GestureDetector(
                                 onTap: (){
                                   Navigator.pushNamed(
                                     context,
                                     '/showScreenTwo'
                                   );
                                 },
                                   child: Text(
                                   dataList[index].title ?? "View Image",
                                   style: TextStyle(
                                     color: Colors.black,
                                     fontSize: 16,
                                     fontWeight: FontWeight.bold,
                                     fontFamily: 'OpenSans',
                                   ),
                                                                  ),
                                 );
                               });
                         }
                         return GestureDetector(
                          child: Text("Click"),
                          onTap: (){
                          Navigator.pushNamed(
                          context,
                          '/showScreenTwo'
                        );
                          },
                          );
                       }),
                     ),
               );
   
  }
}
