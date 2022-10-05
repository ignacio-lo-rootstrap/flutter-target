abstract class Resource<T, E> {}

class Success<T, E> extends Resource<T, E> {
  final T data;

  Success(this.data);
}

class Failure<T, E> extends Resource<T, E> {
  final E error;
  final T? data;

  Failure(this.error, [this.data]);
}

extension ResourceExtension<T, E> on Resource<T, E> {
  void when({
    required Function(T data) onSuccess,
    required Function(E error, T? data) onError,
  }) {
    Object result = this;

    if (result is Success) {
      onSuccess(result.data);
    } else if (result is Failure) {
      onError(result.error, result.data);
    }
  }
}
