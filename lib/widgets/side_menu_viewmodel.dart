import 'package:butler_admin/models/side_menu_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideMenuViewmodel extends GetxController {
  List<SideMenuModel> list = [
    SideMenuModel(
      title: 'Dashboard',
      icon: const Icon(Icons.dashboard),
      route: '/',
      children: [],
    ),
    SideMenuModel(
      title: '유저',
      icon: const Icon(Icons.person),
      route: '/',
      children: [
        SideMenuModel(
          title: '게스트',
          icon: const Icon(null),
          route: '/user/guest',
          children: [],
        ),
        SideMenuModel(
          title: '호스트',
          icon: const Icon(null),
          route: '/user/host',
          children: [],
        ),
        SideMenuModel(
          title: '승인대기',
          icon: const Icon(null),
          route: '/user/confirm',
          children: [],
        ),
      ],
    ),
    SideMenuModel(
      title: '예약',
      icon: const Icon(Icons.travel_explore_sharp),
      route: '/',
      children: [
        SideMenuModel(
          title: '예약조회',
          icon: const Icon(null),
          route: '/booking/search',
          children: [],
        ),
        SideMenuModel(
          title: '예약내역',
          icon: const Icon(null),
          route: '/booking/history',
          children: [],
        ),
        SideMenuModel(
          title: '취소/환불 내역',
          icon: const Icon(null),
          route: '/booking/cancel',
          children: [],
        ),
      ],
    ),
    SideMenuModel(
      title: '마케팅',
      icon: const Icon(Icons.markunread),
      route: '/',
      children: [
        SideMenuModel(
          title: '푸시 발송',
          icon: const Icon(null),
          route: '/marketing/push',
          children: [],
        ),
        SideMenuModel(
          title: '이벤트 관리',
          icon: const Icon(null),
          route: '/marketing/event',
          children: [],
        ),
        SideMenuModel(
          title: '쿠폰 관리',
          icon: const Icon(null),
          route: '/marketing/coupon',
          children: [],
        ),
      ],
    ),
    SideMenuModel(
      title: '설정',
      icon: const Icon(Icons.settings),
      route: '/',
      children: [
        SideMenuModel(
          title: '앱 설정',
          icon: const Icon(null),
          route: '/setting/app',
          children: [],
        ),
        SideMenuModel(
          title: '관리자 현황',
          icon: const Icon(null),
          route: '/setting/admin',
          children: [],
        ),
      ],
    ),
  ];
}
