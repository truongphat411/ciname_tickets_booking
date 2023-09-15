import 'dart:async';

import 'package:ciname_tickets_booking/components/common_app_bar.dart';
import 'package:ciname_tickets_booking/modules/ticket_details/widgets/dashed_line.dart';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Ticket extends StatelessWidget {
  final double borderRadius;
  final double clipRadius;
  final double smallClipRadius;
  final int numberOfSmallClips;

  const Ticket({
    Key? key,
    this.borderRadius = 30,
    this.clipRadius = 13,
    this.smallClipRadius = 5,
    this.numberOfSmallClips = 13,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ticketSize = MediaQuery.of(context).size.height * 0.75;
    const String message =
        // ignore: lines_longer_than_80_chars
        'https://viblo.asia/p/tao-widget-hinh-ve-xem-phim-voi-customclipper-trong-flutter-gGJ59NmpKX2';

    final FutureBuilder<ui.Image> qrFutureBuilder = FutureBuilder<ui.Image>(
      future: _loadOverlayImage(),
      builder: (BuildContext ctx, AsyncSnapshot<ui.Image> snapshot) {
        if (!snapshot.hasData) {
          return SizedBox(width: ticketSize * 0.3, height: ticketSize * 0.3);
        }
        return CustomPaint(
          size: Size.square(ticketSize * 0.3),
          painter: QrPainter(
            data: message,
            version: QrVersions.auto,
            eyeStyle: const QrEyeStyle(
              eyeShape: QrEyeShape.square,
              color: Colors.white,
            ),
            dataModuleStyle: const QrDataModuleStyle(
              dataModuleShape: QrDataModuleShape.square,
              color: Colors.white,
            ),
            // size: 320.0,
            embeddedImage: snapshot.data,
            embeddedImageStyle: const QrEmbeddedImageStyle(
              size: Size.square(20),
            ),
          ),
        );
      },
    );

    return Scaffold(
      backgroundColor: const Color(0xFF0D1131),
      appBar: const CommonAppBar(
        title: 'Ticket Details',
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 20, left: 24, right: 24),
        height: ticketSize,
        child: ClipPath(
          clipper: TicketClipper(
            borderRadius: borderRadius,
            clipRadius: clipRadius,
            smallClipRadius: smallClipRadius,
            numberOfSmallClips: numberOfSmallClips,
          ),
          child: Container(
            color: const Color(0xFF051238),
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: ticketSize * 0.6,
                      padding: const EdgeInsets.only(
                          left: 14, right: 20, top: 24, bottom: 27),
                      child: Column(
                        children: [
                          IntrinsicHeight(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Image.asset('assets/images/image_test.png'),
                                Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        left: 16, right: 10),
                                    //color: Colors.black,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Flexible(
                                          child: Text(
                                            'Ralph Breaks the Internet',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                overflow: TextOverflow.fade),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            RatingBar.builder(
                                              itemSize: 20,
                                              initialRating: 5,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 4.0),
                                              itemBuilder: (context, _) =>
                                                  const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                            const Text(
                                              '(4.7)',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
                                        const Text(
                                          'Action & adventure, Comedy',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        const Text(
                                          '1h 41min',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          const Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Cinema',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    'FX Sudirman XXI',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Date & Time',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    'Sun May 22,  16:40',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Seat Number',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    'D7,D8,D9',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Paid',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    'IDR 150.000',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: ticketSize * 0.4,
                      child: Column(
                        children: [
                          qrFutureBuilder,
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'ID Order',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          const Text(
                            '04112000',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                    padding:
                        EdgeInsets.only(top: (ticketSize * 0.55 + clipRadius)),
                    child: const DashedLine())
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<ui.Image> _loadOverlayImage() async {
    final Completer<ui.Image> completer = Completer<ui.Image>();
    final ByteData byteData =
        await rootBundle.load('assets/images/image_test.png');
    ui.decodeImageFromList(byteData.buffer.asUint8List(), completer.complete);
    return completer.future;
  }
}

class TicketClipper extends CustomClipper<Path> {
  static const double clipPadding = 18;

  final double borderRadius;
  final double clipRadius;
  final double smallClipRadius;
  final int numberOfSmallClips;

  const TicketClipper({
    required this.borderRadius,
    required this.clipRadius,
    required this.smallClipRadius,
    required this.numberOfSmallClips,
  });

  @override
  Path getClip(Size size) {
    var path = Path();

    final clipCenterY = size.height * 0.55 + clipRadius;

    // draw rect
    path.addRRect(RRect.fromRectAndRadius(
      Rect.fromLTWH(0, 0, size.width, size.height),
      Radius.circular(borderRadius),
    ));

    final clipPath = Path();

    // circle on the left
    clipPath.addOval(Rect.fromCircle(
      center: Offset(0, clipCenterY),
      radius: clipRadius,
    ));

    // circle on the right
    clipPath.addOval(Rect.fromCircle(
      center: Offset(size.width, clipCenterY),
      radius: clipRadius,
    ));

    // draw small clip circles
    final clipContainerSize = size.width - clipRadius * 2 - clipPadding * 2;
    final smallClipSize = smallClipRadius * 2;
    final smallClipBoxSize = clipContainerSize / numberOfSmallClips;
    final smallClipPadding = (smallClipBoxSize - smallClipSize) / 2;
    final smallClipStart = clipRadius + clipPadding;

    final smallClipCenterOffsets = List.generate(numberOfSmallClips, (index) {
      final boxX = smallClipStart + smallClipBoxSize * index;
      final centerX = boxX + smallClipPadding + smallClipRadius;

      return Offset(centerX, clipCenterY);
    });

    // for (var centerOffset in smallClipCenterOffsets) {
    //   clipPath.addOval(Rect.fromCircle(
    //     center: centerOffset,
    //     radius: smallClipRadius,
    //   ));
    // }

    // combine two path together
    final ticketPath = Path.combine(
      PathOperation.reverseDifference,
      clipPath,
      path,
    );

    return ticketPath;
  }

  @override
  bool shouldReclip(TicketClipper oldClipper) =>
      oldClipper.borderRadius != borderRadius ||
      oldClipper.clipRadius != clipRadius ||
      oldClipper.smallClipRadius != smallClipRadius ||
      oldClipper.numberOfSmallClips != numberOfSmallClips;
}
