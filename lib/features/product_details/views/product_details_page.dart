part of app.features.product_details;

class ProductDetailsPage extends StatelessWidget {
  final int? id;
  final Product product;
  const ProductDetailsPage({
    super.key,
    this.id,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final productDetailsCubit = ProductDetailsCubit();
        productDetailsCubit.load(data: product);
        return productDetailsCubit;
      },
      child: CommonScaffold(
        appBar: AppBar(
          title: const Text(
            'Product Detail',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: BlocSelector<ProductDetailsCubit, ProductDetailsState,
            LoadingStatus>(
          selector: (state) {
            return state.loadingStatus;
          },
          builder: (context, loadingStatus) {
            if (loadingStatus.isLoadingSuccess) {
              return const ProductDetailsBody();
            }

            return const CommonSkeletonLoading(
              type: SkeletonTypes.detail,
            );
          },
        ),
        persistentFooterButtons: [
          Builder(builder: (context) {
            return CommonButton(
              lable: 'Buy',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PaymentsPage(product: product);
                }));
              },
            );
          })
        ],
      ),
    );
  }
}
