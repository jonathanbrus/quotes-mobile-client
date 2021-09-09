import 'package:flutter/material.dart';

import '../helpers/utils.dart';

import './edit_profile.dart';
import './about.dart';
import './terms.dart';

import '../widgets/greeting.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenScreenState createState() => _ProfileScreenScreenState();
}

class _ProfileScreenScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Greeting(),
                Container(
                  width: double.infinity,
                  height: 220,
                  margin: EdgeInsets.only(bottom: 26),
                  child: Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 160,
                          height: 160,
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(88),
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              color: Colors.white.withOpacity(0.4),
                            ),
                            child: Text(
                              "Jo",
                              style: TextStyle(
                                fontSize: 52,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            width: 180,
                            height: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(90),
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.5),
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            width: 204,
                            height: 204,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(106),
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.3),
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListItem(
                        icon: Icons.edit_rounded,
                        title: "Edit Profile",
                        onTap: () => Navigator.of(context)
                            .pushNamed(EditProfileScreen.routeName),
                      ),
                      ListItem(
                        icon: Icons.info_rounded,
                        title: "About us",
                        onTap: () => Navigator.of(context)
                            .pushNamed(AboutScreen.routeName),
                      ),
                      ListItem(
                        icon: Icons.document_scanner_rounded,
                        title: "Terms & Conditions",
                        onTap: () => Navigator.of(context)
                            .pushNamed(TermsScreen.routeName),
                      ),
                      ListItem(
                        icon: Icons.star_rounded,
                        title: "Review",
                        onTap: () => requestReview(),
                      ),
                      ListItem(
                        icon: Icons.share_rounded,
                        title: "Share with friends",
                        onTap: () => shareApp(),
                      ),
                      ListItem(
                        icon: Icons.groups_rounded,
                        title: "Follow us on Instagram",
                        onTap: () => launchUrl(context),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const ListItem({
    required this.title,
    required this.icon,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.only(left: 12, right: 12, bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          color: Theme.of(context).primaryColor.withOpacity(0.28),
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Theme.of(context).primaryColor.withOpacity(0.8),
              ),
              SizedBox(width: 16),
              Text(
                title,
                style: TextStyle(fontSize: 16),
              ),
              Spacer(),
              Icon(
                Icons.keyboard_arrow_right_rounded,
                color: Theme.of(context).primaryColor.withOpacity(0.8),
                size: 26,
              )
            ],
          ),
        ),
      ),
    );
  }
}
