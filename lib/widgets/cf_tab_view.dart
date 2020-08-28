import 'package:flutter/material.dart';

class CFTabView extends StatefulWidget {
  final String firstOptionTitle;
  final String secondOptionTitle;
  final Function firstOptionAction;
  final Function secondOptionAction;
  final String thirdOptionTitle;
  final Function thirdOptionAction;
  final bool isHome;
  CFTabView({
    @required this.firstOptionTitle,
    @required this.secondOptionTitle,
    @required this.firstOptionAction,
    @required this.secondOptionAction,
    @required this.isHome,
    this.thirdOptionTitle,
    this.thirdOptionAction
  });

  @override
  _CFTabViewState createState() => _CFTabViewState();
}

class _CFTabViewState extends State<CFTabView> {
  Alignment _alignment = Alignment.topLeft;
  bool _firstOptionSelected = true;
  bool _secondOptionSelected = false;
  bool _thirdOptionSelected = false;

  @override
  void initState() {
    super.initState();
    // if (widget.isHome) {
    //   if (Provider.of<HomeProvider>(context, listen: false)
    //       .isRestaurantListing) {
    //     _alignment = Alignment.topLeft;
    //   } else {
    //     _alignment = Alignment.topRight;
    //     _firstOptionSelected = false;
    //   }
    // }
  }

  @override
  Widget build(BuildContext context) {
    // getScreenSize(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: MediaQuery.of(context).size.width * 0.1,
        decoration: BoxDecoration(
          // color: ColorUtils.tabViewBgColor,
          color: Colors.white,
          borderRadius: BorderRadius.circular((MediaQuery.of(context).size.width * 0.1) / 2),
        ),
        child: Stack(
          children: <Widget>[
            _getAnimatedSwitcher(),
            Row(
              children: <Widget>[
                _getTabViewOptions(
                    option: widget.firstOptionTitle,
                    onTap: () {
                      setState(() {
                        _alignment = Alignment.topLeft;
                        _firstOptionSelected = true;
                        _secondOptionSelected = false;
                        _thirdOptionSelected = false;
                        widget.firstOptionAction();
                      });
                    },
                    isSelected: _firstOptionSelected),
                
                widget.thirdOptionTitle == null || widget.thirdOptionTitle == "" ? Container() :
                _getTabViewOptions(
                  option: widget.thirdOptionTitle,
                  onTap: () {
                    setState(() {
                      _alignment = Alignment.topCenter;
                      _firstOptionSelected = false;
                      _secondOptionSelected = false;
                      _thirdOptionSelected = true;
                      widget.thirdOptionAction();
                    });
                  },
                  isSelected: _thirdOptionSelected,
                ),
                _getTabViewOptions(
                    option: widget.secondOptionTitle,
                    onTap: () {
                      setState(() {
                        _alignment = Alignment.topRight;
                        _firstOptionSelected = false;
                      _secondOptionSelected = true;
                      _thirdOptionSelected = false;
                        widget.secondOptionAction();
                      });
                    },
                    isSelected: _secondOptionSelected),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _getAnimatedSwitcher() => AnimatedContainer(
        curve: Curves.easeInOut,
        duration: Duration(milliseconds: 200),
        alignment: _alignment,
        child: Container(
          width: (MediaQuery.of(context).size.width * 0.9) /   (widget.thirdOptionTitle == null || widget.thirdOptionTitle == "" ? 2 : 3) ,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(40.0),
            ),
            color: Color.fromRGBO(195, 75, 142, 1),
          ),
        ),
      );

  _getTabViewOptions({String option, Function onTap, bool isSelected}) =>
      Expanded(
        flex: 1,
        child: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {
            onTap();
          },
          child: Container(
            child: Center(
              child: Text(
                option,
                style: TextStyle(
                  fontSize: 14,
                  color:
                      // isSelected ? Colors.white : Colors.appbarcolor,
                       isSelected ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      );
}
