part of app.features.product_details;

class ProductDetailsState extends Equatable {
  final int id;
  final Product? data;
  final LoadingStatus loadingStatus;
  final String error;

  const ProductDetailsState({
    this.id = 0,
    this.data,
    this.loadingStatus = LoadingStatus.init,
    this.error = '',
  });

  ProductDetailsState copyWith({
    int? id,
    Product? data,
    LoadingStatus? loadingStatus,
    String? error,
  }) {
    return ProductDetailsState(
      id: id ?? this.id,
      data: data ?? this.data,
      loadingStatus: loadingStatus ?? this.loadingStatus,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props {
    return [id, data, loadingStatus, error];
  }
}
