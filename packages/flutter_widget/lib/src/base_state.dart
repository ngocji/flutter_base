abstract class BaseState{}

abstract class InitData extends BaseState {}
abstract class ShowLoading extends BaseState {}
abstract class DismissLoading extends BaseState {}
abstract class StateSuccess extends BaseState{}
abstract class StateError extends BaseState{}
abstract class StateShowError extends StateError{}