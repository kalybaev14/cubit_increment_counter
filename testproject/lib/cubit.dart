import 'package:flutter_bloc/flutter_bloc.dart';

class Maincubit extends Cubit<InitialStates> {
  Maincubit() : super(InitialStates(count: 0));
   void increment() {
    emit(InitialStates(count:state.count+2));
   }
     void dicrement() { if(state.count>0){
      emit(InitialStates(count:state.count-1));
     }else{
      emit(InitialStates(count:0));
     }
    
     }

  }

class InitialStates  {
   InitialStates({required this.count});
  final int count;
}

