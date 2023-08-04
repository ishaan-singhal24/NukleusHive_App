import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nukleushive_app/data/constants/app_colors.dart';
import 'package:nukleushive_app/data/constants/app_text_styles.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final Function() onPressed;
  final Color? color;
  final Color? hoverColor;
  final double? width;
  final double? height;
  final Color? hoverTextColor;
  final IconData? trailingIcon;

  // Color of text

  final Color? textColor;

  // Radius of Custom button

  final double? radius;

  // font size of text

  final double? fontSize;

  // font weight of text

  final FontWeight? fontWeight;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color,
    this.hoverColor,
    this.width,
    this.height,
    this.hoverTextColor,
    this.trailingIcon,
    this.textColor,
    this.radius,
    this.fontSize,
    this.fontWeight,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: InkWell(
        onHover: (value) {
          _isHover = value;
          setState(() {});
        },
        hoverColor: widget.hoverColor ?? (widget.color ?? Color(0xFFFFFFFF)),
        borderRadius: BorderRadius.circular(11),
        // borderRadius: BorderRadius.circular(38),
        onTap: widget.onPressed,
        child: Container(
            width: widget.width,
            height: widget.height,
            padding: (widget.width == null && widget.height == null)
                ? EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  )
                : const EdgeInsets.all(0),
            // EdgeInsets.symmetric(
            //     horizontal: 130,
            //     vertical: 16,
            //   ),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFDEE5D8),
                  blurRadius: 0.1,
                ),
              ],
              color: _isHover
                  ? (widget.hoverColor ?? Color(0xFFFFFFFF))
                  : widget.color ?? Color(0xFFFFFFFF),
              // borderRadius: (widget.rad == null) ? BorderRadius.circular(8) : BorderRadius.circular(widget.rad!),
              borderRadius: BorderRadius.circular(widget.radius ?? 8),
              // borderRadius: BorderRadius.circular(38),
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.text,
                  textAlign: TextAlign.center,
                  style: _isHover
                      ? TextStyle(
                          fontSize: widget.fontSize ?? 16,
                          fontWeight: widget.fontWeight ?? FontWeight.w400,
                          fontFamily: 'Poppins-Regular',
                        ).copyWith(
                          color: widget.hoverTextColor ?? Color(0xFFFFFFFF),
                        )
                      : TextStyle(
                          // fontSize: 16,
                          fontSize: widget.fontSize ?? 16,
                          fontWeight: widget.fontWeight ?? FontWeight.w400,
                          fontFamily: 'Poppins-Regular',

                          // Color of text
                          color: widget.textColor ?? Color(0xFFFFFFFF),
                        ),
                ),
                // Text(
                //   widget.text,
                //   style: _isHover
                //       ? TextStyle(
                //           fontSize: 16,
                //           fontWeight: FontWeight.w700,
                //           fontFamily: 'Poppins',
                //         ).copyWith(
                //           color: widget.hoverTextColor ?? Color(0xFF002204))
                //       : TextStyle(
                //           fontSize: 16,
                //           fontWeight: FontWeight.w700,
                //           fontFamily: 'Poppins',
                //         ),
                // ),
                if (widget.trailingIcon != null) ...{
                  SizedBox(
                    height: 8,
                  ),
                  Icon(
                    widget.trailingIcon,
                    size: 14,
                    color: _isHover
                        ? widget.hoverTextColor ?? Color(0xFF002204)
                        : Color(0xFF002204),
                  ),
                },
              ],
            )),
      ),
    );
  }
}
