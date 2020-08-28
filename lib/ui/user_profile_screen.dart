import '../widgets/cf_tab_view.dart';
import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  static const routeName = '/userProfile';

  leaveSessionSelected() {
    print('leave');
  }
  singerProfileSelected() {
    print('singer');
  }
  userProfileSelected() {
    print('user');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
             padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            height: 120,
            color: Color.fromRGBO(131, 45, 88, 1),
            child: CFTabView(
              firstOptionTitle: 'Leave Session',
              secondOptionTitle: 'Your Profile',
              thirdOptionAction: singerProfileSelected,
              thirdOptionTitle: 'KJ\'s Profile',
              isHome: false,
              firstOptionAction: leaveSessionSelected,
              secondOptionAction: userProfileSelected,
            ),
          ),
        ],
      ),
    );
  }
}
