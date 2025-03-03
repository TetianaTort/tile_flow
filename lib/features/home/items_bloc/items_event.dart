part of 'items_bloc.dart';

@freezed
class ItemsEvent with _$ItemsEvent {
  const factory ItemsEvent.increment() = _IncrementItemsEvent;
  const factory ItemsEvent.decrement() = _DecrementItemsEvent;
}
