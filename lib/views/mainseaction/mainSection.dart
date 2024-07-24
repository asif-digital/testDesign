import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sara_plus/global/widgets.dart';
import 'package:sara_plus/views/mainseaction/drawer/settings.dart';
import 'package:sara_plus/views/mainseaction/pages/funds.dart';
import 'package:sara_plus/views/mainseaction/pages/home.dart';
import 'package:sara_plus/views/mainseaction/pages/passBook.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../global/colors.dart';
import 'drawer/gameRates.dart';
import 'drawer/notifications.dart';
import 'drawer/submitIdea.dart';
import 'drawer/videos.dart';
import 'pages/bids.dart';

int visit = 0;

class MainSection extends StatefulWidget {
  @override
  _MainSectionState createState() => _MainSectionState();
}

class _MainSectionState extends State<MainSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lev_one,
        title: Text('Sara +'),
      ),
      drawer: AppDrawer(),
      body: visit == 0
          ? HomePage()
          : visit == 1
              ? BidsPage()
              : visit == 2
                  ? PassBook()
                  : Funds(),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GNav(
            // backgroundColor: white,
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 8,
            activeColor: lev_one,
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: Duration(milliseconds: 400),
            tabBackgroundColor: Colors.grey[100]!,
            color: Colors.black,
            tabs: const [
              GButton(
                icon: LineIcons.home,
                text: 'Home',
              ),
              GButton(
                icon: LineIcons.gavel,
                text: 'Bids',
              ),
              GButton(
                icon: LineIcons.alternateTicket,
                text: 'PassBook',
              ),
              GButton(
                icon: LineIcons.boxes,
                text: 'Funds',
              ),
            ],
            selectedIndex: visit,
            onTabChange: (index) {
              setState(() {
                visit = index;
              });
              // if (visit == 3) {
              // showModalBottomSheet<void>(
              //   isScrollControlled: true,
              //   backgroundColor: Colors.transparent,
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(20),
              //   ),
              //   context: context,
              //   builder: (BuildContext context) {
              //     return Padding(
              //       padding: MediaQuery.of(context).viewInsets,
              //       child: DrawerScreen(),
              //     );
              //   },
              // );
              // }
            },
          ),
        ),
      ),
    );
  }
}

class AppDrawer extends StatefulWidget {
  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  final String _url = 'https://unsplash.com/apps';

  // Function to open the website
  Future<void> _openWebsite() async {
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }

  Future<void> _shareApp(BuildContext context) async {
    // Replace these placeholders with your actual app store and Google Play links
    final appStoreLink = 'https://apps.apple.com/app/your-app-id';
    final playStoreLink =
        'https://play.google.com/store/apps/details?id=your.app.package';

    final message = 'Check out my awesome app!\n'
        '• App Store: $appStoreLink\n'
        '• Google Play: $playStoreLink';

    // Use the share plugin to offer sharing options to different apps
    await Share.share(message, subject: 'Share this amazing app');
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // User Profile Section
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: lev_one, // Set your desired color here
            ),
            accountName: Text('Muzammil Shaik'),
            accountEmail: Text('+1234567890'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: lev_three,
              child: Icon(Icons.person),
            ),
          ),
          // Drawer Items
          DrawerItem(
            title: 'Home',
            icon: Icons.home,
            onTap: () {
              // Handle Home Item Tap
              Navigator.pop(context); // Close the drawer
              // Implement navigation to Home screen
            },
          ),
          DrawerItem(
            title: 'My Bids',
            icon: Icons.gavel,
            onTap: () {
              setState(() {
                visit = 1;
              });
              // Handle My Bids Item Tap
              Navigator.pop(context); // Close the drawer
              // Implement navigation to My Bids screen
            },
          ),
          DrawerItem(
            title: 'MPIN',
            icon: Icons.security,
            onTap: () {
              // Handle MPIN Item Tap
              Navigator.pop(context); // Close the drawer
              // Implement navigation to MPIN screen
            },
          ),
          // Add more DrawerItems for other menu items
          // ...
// ---------------

          DrawerItem(
            title: 'Game Rates',
            icon: Icons.star_border_sharp,
            onTap: () {
              // Handle Settings Item Tap
              Navigator.pop(context); // Close the drawer
              // Implement navigation to Settings screen
            },
          ),
          DrawerItem(
            title: 'Funds',
            icon: Icons.money_rounded,
            onTap: () {
              setState(() {
                visit = 2;
              });
              // Handle Settings Item Tap
              Navigator.pop(context); // Close the drawer
              // Implement navigation to Settings screen
            },
          ),
          DrawerItem(
            title: 'Notifications',
            icon: Icons.notifications,
            onTap: () {
              // Handle Settings Item Tap
              toScreen(
                  context: context, page: Notifications()); // Close the drawer
              // Implement navigation to Settings screen
            },
          ),
          DrawerItem(
            title: 'Videos',
            icon: Icons.videocam_sharp,
            onTap: () {
              // Handle Settings Item Tap
              toScreen(context: context, page: Videos()); // Close the drawer
              // Implement navigation to Settings screen
            },
          ),
          DrawerItem(
            title: 'Notice Board / Rules',
            icon: Icons.dangerous_sharp,
            onTap: () {
              // Handle Settings Item Tap
              Navigator.pop(context); // Close the drawer
              // Implement navigation to Settings screen
            },
          ),

// -------------
          // Settings Item
          DrawerItem(
            title: 'Game Rates',
            icon: Icons.star_border_sharp,
            onTap: () {
              // Handle Settings Item Tap
              toScreen(context: context, page: GameRates()); // Close the drawer
              // Implement navigation to Settings screen
            },
          ),

          // Settings Item
          DrawerItem(
            title: 'Charts',
            icon: Icons.graphic_eq_sharp,
            onTap: () {
              // Handle Settings Item Tap
              _openWebsite();
              // Implement navigation to Settings screen
            },
          ),

          // Settings Item
          DrawerItem(
            title: 'Submit Idea',
            icon: Icons.bubble_chart_outlined,
            onTap: () {
              // Handle Settings Item Tap
              toScreen(context: context, page: SubmitIdea());
              // Implement navigation to Settings screen
            },
          ),

          // Settings Item
          DrawerItem(
            title: 'Settings',
            icon: Icons.settings,
            onTap: () {
              // Handle Settings Item Tap
              toScreen(context: context, page: Settings());
              // Implement navigation to Settings screen
            },
          ),

          // Settings Item
          DrawerItem(
            title: 'Share',
            icon: Icons.share,
            onTap: () {
              // Handle Settings Item Tap
              _shareApp(context);
              // Implement navigation to Settings screen
            },
          ),

          // Settings Item
          DrawerItem(
            title: 'LogOUt',
            icon: Icons.logout,
            onTap: () {
              // Handle Settings Item Tap
              Navigator.pop(context); // Close the drawer
              // Implement navigation to Settings screen
            },
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  DrawerItem({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Icon(icon),
      onTap: onTap,
    );
  }
}
