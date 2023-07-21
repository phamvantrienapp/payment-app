part of app.features.products;

class ProductsBody extends StatelessWidget {
  const ProductsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final data = context.read<ProductsCubit>().state.data;
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return ProductItem(product: data[index]);
      },
    );
  }
}
