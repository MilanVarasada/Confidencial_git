import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


// ignore: must_be_immutable, file_names
class CFTextField extends StatefulWidget {
  final double width;
  final String label;
  final String hint;
  final FocusNode focusNode;
  final TextInputType type;
  final String trailingIcon;
  final String leadingIcon;
  final int maxLength;
  bool isLeadingIcon = false;
  bool isPassword = false;
  bool enabled = true;
  bool isObscureText = true;
  bool isHeaderVisible = false;
  bool isDropdown = false;
  bool isPrefixCountryCode = false;
  final String prefixCountryCode;
  final String initialValue;
  final TextInputAction textInputAction;
  final List<TextInputFormatter> textInputFormatter;
  final TextEditingController controller;
  final Function onSaved;
  final Function validateFunction;
  final Function endIconClick;
  final Function onFieldSubmitted;
  Function onChanged;

  CFTextField(
      {this.width,
      this.label,
      this.hint,
      this.focusNode,
      this.type,
      this.leadingIcon,
      this.trailingIcon,
      this.isObscureText,
      this.textInputAction,
      this.isPassword,
      this.isLeadingIcon,
      this.enabled,
      this.initialValue,
      this.onSaved,
      this.maxLength,
      this.validateFunction,
      this.endIconClick,
      this.onFieldSubmitted,
      this.textInputFormatter,
      this.onChanged,
      this.isHeaderVisible,
      this.isDropdown,
      this.isPrefixCountryCode,
      this.prefixCountryCode,
      this.controller});

  @override
  State<StatefulWidget> createState() => CFTextFieldState();
}

class CFTextFieldState extends State<CFTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          widget.isHeaderVisible != null && widget.isHeaderVisible
              ? Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 0),
                  child: Text(
                    widget.label,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                )
              : Container(),
          Container(
            child: TextFormField(
              controller: widget.controller,
              textInputAction: widget.textInputAction,
              maxLength: widget.maxLength,
              focusNode: widget.focusNode,
              initialValue: widget.initialValue,
              enabled: widget.enabled,
              style: widget.enabled == true
                  ? const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )
                  : const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
              decoration: InputDecoration(
                labelText: widget.hint,
                contentPadding: EdgeInsets.only(top: 0),
                counter: Offstage(),
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                errorStyle: const TextStyle(color: Colors.red),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                hintStyle: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
                labelStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  inherit: true,
                ),
                enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.white, width: 1)),
                suffixIcon: _suffixIconCheck(),
                prefixText: widget.isPrefixCountryCode != null &&
                        widget.isPrefixCountryCode == true
                    ? widget.prefixCountryCode
                    : null,
                prefixStyle: widget.isPrefixCountryCode == true
                    ? const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      )
                    : null,
                prefixIcon: widget.isLeadingIcon != null && widget.isLeadingIcon
                    ? Image.asset(
                        widget.leadingIcon,
                        width: 1,
                        scale: 1.7,
                        height: 1,
                      )
                    : null,
              ),
              onFieldSubmitted: widget.onFieldSubmitted != null
                  ? widget.onFieldSubmitted
                  : (_) {},
              validator: widget.validateFunction,
              onSaved: widget.onSaved,
              inputFormatters: widget.textInputFormatter,
              keyboardType: widget.type,
              obscureText:
                  widget.isObscureText == null ? false : widget.isObscureText,
              onChanged: widget.onChanged != null ? widget.onChanged : (_) {},
            ),
          )
        ],
      ),
    );
  }

  _suffixIconCheck() =>
      (widget.isPassword == null || widget.isPassword == false)
          ? widget.trailingIcon != null
              ? GestureDetector(
                  onTap: () {
                    widget.endIconClick();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      widget.trailingIcon,
                      width: 200,
                      height: 50,
                      scale: 2,
                    ),
                  ),
                )
              : null
          : (widget.isPassword
              ? GestureDetector(
                  onTap: () {
                    if (widget.endIconClick != null) {
                      widget.endIconClick(!widget.isObscureText);
                    }
                    setState(() {
                      widget.isObscureText = !widget.isObscureText;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      widget.trailingIcon,
                      width: 200,
                      height: 50,
                      scale: 1.3,
                    ),
                  ),
                )
              : null);
}
