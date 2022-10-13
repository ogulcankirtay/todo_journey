import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_journey/cubit/app_cubit_states.dart';
import 'package:to_do_journey/services/data_services.dart';

import '../model/data_model.dart';

class AppCubits extends Cubit<CubitStates>{
  AppCubits({required this.data}):super(InitalState()){
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;
  void getData() async{
    try{
      emit(LoadingState());
      places=await data.getInfo();
      emit(LoadedState(places));
    }
  catch(e){
      print(e);
    }}
  DetailPage(DataModel data){
    emit(DetailState(data));
  }
  goHome(){
    emit(LoadedState(places));
  }
}