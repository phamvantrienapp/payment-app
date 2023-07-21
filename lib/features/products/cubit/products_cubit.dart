part of app.features.products;

@injectable
class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(const ProductsState());

  Future<void> load() async {
    try {
      emit(
        state.copyWith(
          loadingStatus: LoadingStatus.loading,
        ),
      );

      List<Product> data = [];
      final dataJson = jsonDecode(product.dataJson);
      dataJson.forEach((element) {
        data.add(Product.fromJson(element));
      });

      await Future.delayed(const Duration(seconds: 2));

      emit(
        state.copyWith(
          loadingStatus: LoadingStatus.loadingSuccess,
          data: data,
        ),
      );
    } on Exception catch (e) {
      emit(
        state.copyWith(
          loadingStatus: LoadingStatus.loadingError,
          error: e.toString(),
        ),
      );
    }
  }
}
