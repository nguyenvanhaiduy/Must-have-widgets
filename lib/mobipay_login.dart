import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:must_have_widgets/models/colors.dart';
import 'package:toastification/toastification.dart';

class MobiPay extends StatelessWidget {
  const MobiPay({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    var username = TextEditingController();
    var password = TextEditingController();

    return ToastificationWrapper(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromARGB(255, 245, 239, 239),
        ),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomPaint(
                painter: RPSCustomPainter(),
                child: Container(),
              ),
            ),
            Positioned(
              bottom: size.height * 0.13,
              left: size.width * 0.13,
              child: Text(
                'Your Mobile',
                style: GoogleFonts.nerkoOne(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: size.height * 0.08,
              left: size.height * 0.14,
              child: Text(
                'Your Bank',
                style: GoogleFonts.nerkoOne(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    height: size.height * 0.18,
                    width: size.width * 0.7,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        'mobiPay',
                        style: GoogleFonts.nerkoOne(
                          color: Colors.white,
                          fontSize: size.width * 0.15,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Login',
                        style: TextStyle(
                          color: color,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      const Text(
                        'Please sign in to continue',
                        style: TextStyle(
                          color: color,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: size.height * 0.04),
                      const Text(
                        'EMAIL',
                        style: TextStyle(
                          color: color,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: size.height * 0.005),
                      widgetTextField(username),
                      SizedBox(height: size.height * 0.02),
                      const Text(
                        'PASSWORD',
                        style: TextStyle(
                          color: color,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: size.height * 0.005),
                      widgetTextField(password, hidePass: true),
                      SizedBox(height: size.height * 0.025),
                      Row(
                        children: [
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: color,
                            ),
                            width: 150,
                            child: TextButton(
                              onPressed: () {
                                if (username.text.toLowerCase() == 'duy' &&
                                    password.text.toLowerCase() == '123456') {
                                  toastification.show(
                                    context: context,
                                    type: ToastificationType.success,
                                    style: ToastificationStyle.fillColored,
                                    title: const Text('Success!!!'),
                                    description: Text(
                                      'Username: ${username.text}, Password: ${password.text}',
                                    ),
                                    alignment: Alignment.topCenter,
                                    autoCloseDuration:
                                        const Duration(seconds: 3),
                                    closeButtonShowType:
                                        CloseButtonShowType.none,
                                    dragToClose: true,
                                    showProgressBar: false,
                                  );
                                } else {
                                  toastification.show(
                                    context: context,
                                    type: ToastificationType.error,
                                    style: ToastificationStyle.fillColored,
                                    title: const Text(
                                      "Faild!!!",
                                    ),
                                    description: const Text(
                                      "Incorrect username or password",
                                    ),
                                    alignment: Alignment.topCenter,
                                    autoCloseDuration:
                                        const Duration(seconds: 3),
                                    closeButtonShowType:
                                        CloseButtonShowType.none,
                                    dragToClose: true,
                                    showProgressBar: false,
                                  );
                                }
                              },
                              style: TextButton.styleFrom(
                                fixedSize: size * 0.05,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'LOGIN',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_outlined,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.02),
                      Row(
                        children: [
                          const Spacer(),
                          const Text(
                            'Forgot Password ? ',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: const Text(
                              'Click here',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: color,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height);
    path_0.lineTo(0, size.height * 0.8);
    path_0.quadraticBezierTo(
      size.width * 0.05,
      size.height * 0.78,
      size.width * 0.08,
      size.height * 0.77,
    );
    path_0.quadraticBezierTo(
      size.width * 0.42,
      size.height * 0.66,
      size.width,
      size.height * 0.93,
    );
    path_0.lineTo(size.width, size.height);

    Paint paintStroke0 = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

Widget widgetTextField(TextEditingController textEditingController,
    {bool hidePass = false}) {
  return Container(
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.3),
        blurRadius: 20,
      )
    ]),
    child: TextField(
      controller: textEditingController,
      cursorColor: color,
      obscuringCharacter: '*',
      obscureText: hidePass,
      decoration: const InputDecoration(
        fillColor: Colors.white,
        filled: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 15),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          borderSide: BorderSide(
            color: color,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
    ),
  );
}
