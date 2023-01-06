part of 'exam_cubit.dart';

@immutable
abstract class ExamState {}

class ExamIsLoading extends ExamState {}

class ExamHasData extends ExamState {}

class ExamHasError extends ExamState {}
