part of app.features.products;

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final productsCubit = ProductsCubit();
        productsCubit.load();
        return productsCubit;
      },
      child: BlocSelector<ProductsCubit, ProductsState, LoadingStatus>(
        selector: (state) {
          return state.loadingStatus;
        },
        builder: (context, loadingStatus) {
          if (loadingStatus.isLoadingSuccess) {
            return const ProductsBody();
          }
          return const CommonSkeletonLoading();
        },
      ),
    );
  }
}
