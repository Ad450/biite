import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class BiiteTextButton extends StatelessWidget {
  const BiiteTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isBusy = false,
    this.style,
    this.buttonStyle,
  });

  final VoidCallback onPressed;
  final String text;
  final bool isBusy;
  final TextStyle? style;
  final ButtonStyle? buttonStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: buttonStyle,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}

class LoadingButton extends StatefulWidget {
  final bool isLoading;
  final VoidCallback onTap;
  final String buttonText;

  const LoadingButton({
    required this.isLoading,
    required this.onTap,
    this.buttonText = "Start Loading",
    super.key,
  });

  @override
  State<LoadingButton> createState() => _LoadingButtonState();
}

class _LoadingButtonState extends State<LoadingButton> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller and scale animation
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    // Scale animation that shrinks the width
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void didUpdateWidget(LoadingButton oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.isLoading) {
      _controller.forward(); // Start folding animation
    } else {
      _controller.reverse(); // Return to button when not loading
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 600),
        child: widget.isLoading
            ? Container(
                key: const ValueKey("loading"),
                width: 60.0,
                height: 60.0,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: ColorName.primary,
                  shape: BoxShape.circle,
                ),
                child: const CircularProgressIndicator(
                  color: Colors.white,
                ),
              )
            : AnimatedBuilder(
                animation: _scaleAnimation,
                builder: (context, child) {
                  return Transform.scale(
                    scaleX: _scaleAnimation.value, // Horizontal fold effect
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 200.0,
                      height: 50.0,
                      child: ElevatedButton(
                        key: const ValueKey("button"),
                        onPressed: widget.onTap,
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          backgroundColor: ColorName.primary,
                        ),
                        child: Opacity(
                          opacity: _scaleAnimation.value, // Fade text with fold
                          child: Text(
                            widget.buttonText,
                            style: const TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
