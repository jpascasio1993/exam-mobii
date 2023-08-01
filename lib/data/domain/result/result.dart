import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@Freezed(map: FreezedMapOptions(map: false, maybeMap: false, mapOrNull: false))
class Result<T> with _$Result<T> {
  const factory Result.success(T data) = _ResultSuccess;
  const factory Result.error(String message, {required Exception exception, StackTrace? stackTrace}) = _ResultException;

  @override
  String toString() {
    return when(success: (data) => 'Success[data=$data]',
        error: (message, exception, stackTrace) => 'Error[exception=$exception]');
  }
}