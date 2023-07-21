part of app.features.home;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CommonScaffold(
      body: HomeBody(),
    );
  }
}
