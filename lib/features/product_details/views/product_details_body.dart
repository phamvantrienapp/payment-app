part of app.features.product_details;

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Builder(builder: (context) {
        final data = context.select(
          (ProductDetailsCubit cubit) => cubit.state.data,
        );
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(data?.imgUrl ?? ''),
            const SizedBox(height: 15.0),
            Text(
              data?.name ?? '',
              style: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 15.0),
            Text(
              data?.price ?? '',
              style: const TextStyle(
                fontSize: 26.0,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15.0),
            Text(data?.description ?? ''),
          ],
        );
      }),
    );
  }
}
