part of app.features.splash;

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 65.0),
            SvgPicture.asset(
              'assets/images/cards.svg',
            ),
            const SizedBox(height: 55.0),
            const Text(
              'Make with you money move with you',
              style: TextStyle(
                color: Colors.white,
                fontSize: 34.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15.0),
            const Text(
              'Most of the things in our app are managed with gestures',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 55.0),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return const HomePage();
                    },
                  ),
                );
              },
              height: 55.0,
              minWidth: double.infinity,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: const Color(0xFFE5F240),
              child: const Text(
                'Get started',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
