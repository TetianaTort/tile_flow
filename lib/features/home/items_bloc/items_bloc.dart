import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'items_event.dart';
part 'items_bloc.freezed.dart';

class ItemsBloc extends Bloc<ItemsEvent, List<String>> {
  ItemsBloc() : super([]) {
    on<_IncrementItemsEvent>(_increment);
    on<_DecrementItemsEvent>(_decrement);
  }

  Future<void> _increment(
    _IncrementItemsEvent event,
    Emitter<List<String>> emit,
  ) async {
    final updatedList = List<String>.from(state)..add('Item ${state.length}');
    emit(updatedList);
  }

  Future<void> _decrement(
    _DecrementItemsEvent event,
    Emitter<List<String>> emit,
  ) async {
    if (state.isNotEmpty) {
      final updatedList = List<String>.from(state)..removeLast();
      emit(updatedList);
    }
  }
}
