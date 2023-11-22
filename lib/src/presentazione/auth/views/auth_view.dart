import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_app23/src/presentazione/auth/core/constants.dart';
import 'package:personal_app23/src/presentazione/auth/widgets/social_button.dart';

class AuthConnector extends StatefulWidget {
  const AuthConnector({Key? key}) : super(key: key);

  @override
  State<AuthConnector> createState() => _AuthConnectorState();
}

class _AuthConnectorState extends State<AuthConnector> {
  @override
  void initState() {
    super.initState();
    print(supabase.auth.currentUser);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: ColoredBox(
              color: const Color.fromRGBO(80, 124, 171, 1).withOpacity(0.1),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/bot.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [
                            Colors.black.withOpacity(0.5),
                            Colors.black.withOpacity(0.9),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Testo
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your AI Pal',
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                            color: Colors.blue,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Beyond your world',
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Hype is the Key',
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox.shrink(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox.shrink(),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Login',
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    const SocialButton(),
                  ],
                ),
                Column(
                  children: const [
                    Text('IED exam'),
                    Text('Privacy Policy'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
