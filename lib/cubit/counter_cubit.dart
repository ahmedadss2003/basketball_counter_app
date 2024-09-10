import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrement());
  int counterA = 0, counterB = 0;
  void counterIncrement( String team,int btnNumper){
    if(team=="A"){
      counterA += btnNumper ;
      emit(CounterAIncrement()) ;
    }
    else if(team=="B"){
      counterB += btnNumper ;
      emit(CounterBIncrement()) ;      
    }
  }
}
