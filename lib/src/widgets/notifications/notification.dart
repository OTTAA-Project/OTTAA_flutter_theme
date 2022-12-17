import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:ottaa_ui_kit/theme.dart';

class OTTAANotification implements TickerProvider {
  Ticker? _ticker;

  final BuildContext context;
  final Color background;
  final Color textColor;
  final String text;

  late final AnimationController? animationController = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  );

  late final Animation<double>? animation = CurveTween(curve: Curves.fastOutSlowIn).animate(animationController!);

  OTTAANotification._(this.context, {required this.background, required this.text, required this.textColor});

  factory OTTAANotification.primary(BuildContext context, {required String text}) {
    return OTTAANotification._(context, background: kWhiteColor, textColor: kBlackColor, text: text)._show();
  }

  factory OTTAANotification.secondary(BuildContext context, {required String text}) {
    return OTTAANotification._(context, background: kPrimaryColor, textColor: kWhiteColor, text: text)._show();
  }

  factory OTTAANotification.optional(BuildContext context, {required String text}) {
    return OTTAANotification._(context, background: kWhiteColor, textColor: kDarkenGrayColor, text: text)._show();
  }

  OTTAANotification _show() {
    OverlayState? overlayState = Overlay.of(context);

    final overlayEntry = OverlayEntry(builder: (context) {
      final size = MediaQuery.of(context).size;

      return Positioned.fill(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 48),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(23),
              child: Material(
                child: FadeTransition(
                  opacity: animation!,
                  child: Container(
                    alignment: Alignment.center,
                    color: background,
                    padding: const EdgeInsets.symmetric(horizontal: 39, vertical: 10),
                    width: size.width * 0.8,
                    height: size.height * 0.06,
                    child: Text(
                      text,
                      style: TextStyle(color: textColor),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    });
    animationController!.addListener(() {
      // ignore: invalid_use_of_protected_member
      overlayState!.setState(() {});
    });
    // inserting overlay entry
    overlayState!.insert(overlayEntry);
    animationController!.forward();
    Future.delayed(const Duration(seconds: 3))
        .whenComplete(() => animationController!.reverse())
        // removing overlay entry after stipulated time.
        .whenComplete(() => overlayEntry.remove());
    return this;
  }

  @override
  Ticker createTicker(TickerCallback onTick) {
    _ticker = Ticker(onTick);
    _updateTickerModeNotifier();
    _updateTicker();
    return _ticker!;
  }

  void dispose() {
    _tickerModeNotifier?.removeListener(_updateTicker);
    _tickerModeNotifier = null;
  }

  ValueNotifier<bool>? _tickerModeNotifier;

  void activate() {
    _updateTickerModeNotifier();
    _updateTicker();
  }

  void _updateTicker() {
    if (_ticker != null) {
      _ticker!.muted = !_tickerModeNotifier!.value;
    }
  }

  void _updateTickerModeNotifier() {
    final ValueNotifier<bool> newNotifier = TickerMode.getNotifier(context);
    if (newNotifier == _tickerModeNotifier) {
      return;
    }
    _tickerModeNotifier?.removeListener(_updateTicker);
    newNotifier.addListener(_updateTicker);
    _tickerModeNotifier = newNotifier;
  }
}
