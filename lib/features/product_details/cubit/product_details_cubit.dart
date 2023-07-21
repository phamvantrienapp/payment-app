part of app.features.product_details;

@injectable
class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  ProductDetailsCubit() : super(const ProductDetailsState());

  Future<void> load({int? id, Product? data}) async {
    try {
      emit(state.copyWith(
        loadingStatus: LoadingStatus.loading,
      ));
      await Future.delayed(const Duration(seconds: 2));
      if (id != null) {
        return emit(state.copyWith(
          id: id,
          loadingStatus: LoadingStatus.loadingSuccess,
        ));
      }
      emit(state.copyWith(
        data: data,
        loadingStatus: LoadingStatus.loadingSuccess,
      ));
    } on Exception catch (e) {
      log('$e');
      emit(state.copyWith(
        loadingStatus: LoadingStatus.loadingError,
      ));
    }
  }
}
