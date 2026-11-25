import 'package:material_ui/material_ui.dart';

class OrangeHeader extends StatelessWidget {
  const OrangeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 430 / 365,
          child: Image.asset(
            'assets/images/img_orange2.png',
            fit: BoxFit.cover,
            alignment: Alignment.bottomCenter,
          ),
        ),
        Positioned(
          top: MediaQuery.paddingOf(context).top + 34,
          left: 18,
          child: const OrangeBackButton(),
        ),
      ],
    );
  }
}

class OrangeBackButton extends StatelessWidget {
  const OrangeBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: 'Back',
      onPressed: () => Navigator.pop(context),
      icon: Container(
        width: 38,
        height: 38,
        decoration: const BoxDecoration(
          color: Color(0xFFF7EAB9),
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
