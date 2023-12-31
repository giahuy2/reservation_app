import 'package:flutter/material.dart';
import 'package:reservation_app/routes/route_named.dart';
import 'package:reservation_app/utils/app_color.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget{
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
      backgroundColor: Color(0xFFF6EFE8),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.location_on_outlined,
            color: AppColor.red_1,
          ),
          Text(
            'Dong Khoi St, District 1',
            style: TextStyle(
                color: Color(0xFF483332),
                fontSize: 13,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
      centerTitle: true,
      actions: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(50)),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, RouteNamed.notiPage);
            },
            icon: Icon(
              Icons.notifications_outlined,
            ),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

}
