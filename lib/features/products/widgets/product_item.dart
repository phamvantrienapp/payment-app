part of app.features.products;

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) {
              return ProductDetailsPage(
                product: product,
              );
            },
          ),
        );
      },
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 22.0,
      ),
      leading: Image.asset(
        product.imgUrl ?? '',
      ),
      title: Text(
        '${product.name}',
        style: const TextStyle(
          fontSize: 17.0,
          fontWeight: FontWeight.w500,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        '${product.price ?? 0} đ',
        style: const TextStyle(
          fontSize: 20.0,
          color: Colors.red,
          fontWeight: FontWeight.w700,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: MaterialButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return PaymentsPage(
                  product: product,
                );
              },
            ),
          );
        },
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: const Text(
          'Buy',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
