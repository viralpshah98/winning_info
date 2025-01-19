import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winning_info/utils/text_style_utils/text_style_utils.dart';
import 'package:winning_info/utils/utils.dart';

class CommonTextFormFieldWidget extends StatefulWidget {
  const CommonTextFormFieldWidget({
    super.key,
    required this.initialValue,
    required this.textStyle,
    this.hintText,
    this.errorText,
    this.helperText,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.textInputAction = TextInputAction.done,
    this.textInputType = TextInputType.text,
    this.textCapitalization = TextCapitalization.none,
    required this.onChanged,
    this.isEnabled = true,
    this.isReadOnly = false,
    this.maxLines = 1,
    this.minLines = 1,
    this.inputFormatter,
    this.onTap,
    this.focusNode,
    this.onFieldSubmitted,
  });

  final String initialValue;
  final TextStyle textStyle;
  final String? hintText;
  final String? errorText;
  final String? helperText;

  final bool obscureText;

  final Widget? prefixIcon;
  final Widget? suffixIcon;

  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final TextCapitalization textCapitalization;

  final ValueChanged onChanged;

  final bool isEnabled;
  final bool isReadOnly;

  final int maxLines;
  final int minLines;

  final List<TextInputFormatter>? inputFormatter;
  final Function()? onTap;

  final Function(String)? onFieldSubmitted;

  final FocusNode? focusNode;

  @override
  State<CommonTextFormFieldWidget> createState() =>
      _CommonTextFormFieldWidgetState();
}

class _CommonTextFormFieldWidgetState
    extends State<CommonTextFormFieldWidget> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    _textEditingController = TextEditingController(text: widget.initialValue);
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant CommonTextFormFieldWidget oldWidget) {
    if (_textEditingController.text != widget.initialValue) {
      _textEditingController.text = widget.initialValue;
      _textEditingController.selection =
          TextSelection.collapsed(offset: widget.initialValue.length);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: widget.onFieldSubmitted,
      key: widget.key,
      controller: _textEditingController,
      focusNode: widget.focusNode,
      style: widget.textStyle,
      enabled: widget.isEnabled,
      readOnly: widget.isReadOnly,
      obscureText: widget.obscureText,
      keyboardType: widget.textInputType,
      textInputAction: widget.textInputAction,
      textCapitalization: widget.textCapitalization,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      inputFormatters: widget.inputFormatter,
      decoration: InputDecoration(
        filled: true,
        hintText: widget.hintText,
        hintStyle: redhatDisplayMedium.copyWith(
          fontSize: 12.sp,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
        ),
        errorText: widget.errorText,
        errorStyle: redhatDisplayRegular.copyWith(
          fontSize: 12.sp,
          color: Utils().colorsUtils.errorColor,
          fontWeight: FontWeight.w500,
        ),
        errorMaxLines: 3,
        helperText: widget.helperText,
        helperStyle: redhatDisplayRegular.copyWith(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),
        helperMaxLines: 3,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Utils().colorsUtils.colorRed,
          ),
          borderRadius: BorderRadius.circular(12.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            width: 1,
            color: Utils().colorsUtils.colorRed,
          ),
        ),
      ),
      onChanged: widget.onChanged,
      onTap: widget.onTap,
      textAlign: TextAlign.start,
    );
  }
}
