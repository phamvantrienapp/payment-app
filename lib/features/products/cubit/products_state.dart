part of app.features.products;

class ProductsState extends Equatable {
  final LoadingStatus loadingStatus;
  final List<Product> data;
  final String error;

  const ProductsState({
    this.loadingStatus = LoadingStatus.init,
    this.data = const [],
    this.error = '',
  });

  ProductsState copyWith({
    LoadingStatus? loadingStatus,
    List<Product>? data,
    String? error,
  }) {
    return ProductsState(
      loadingStatus: loadingStatus ?? this.loadingStatus,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props {
    return [
      loadingStatus,
      data,
      error,
    ];
  }
}
