// Copyright 2016 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../demo/all.dart';

typedef Widget GalleryDemoBuilder();

class GalleryItem extends StatelessWidget {
  const GalleryItem({
    @required this.title,
    this.subtitle,
    @required this.category,
    @required this.routeName,
    @required this.buildRoute,
  }) : assert(title != null),
       assert(category != null),
       assert(routeName != null),
       assert(buildRoute != null);

  final String title;
  final String subtitle;
  final String category;
  final String routeName;
  final WidgetBuilder buildRoute;

  @override
  Widget build(BuildContext context) {
    return new MergeSemantics(
      child: new ListTile(
        title: new Text(title),
        subtitle: new Text(subtitle),
        onTap: () {
          if (routeName != null) {
            Timeline.instantSync('Start Transition', arguments: <String, String>{
              'from': '/',
              'to': routeName
            });
            Navigator.pushNamed(context, routeName);
          }
        }
      ),
    );
  }
}

List<GalleryItem> _buildGalleryItems() {
  // When editing this list, make sure you keep it in sync with
  // the list in ../../test_driver/transitions_perf_test.dart
  final List<GalleryItem> galleryItems = <GalleryItem>[
    // Demos
    new GalleryItem(
      title: '商铺',
      subtitle:'购物应用演示',
      category: '演示',
      routeName: ShrineDemo.routeName,
      buildRoute: (BuildContext context) => new ShrineDemo(),
    ),
    new GalleryItem(
      title: '联系人',
      subtitle: '通讯录应用演示',
      category: '演示',
      routeName: ContactsDemo.routeName,
      buildRoute: (BuildContext context) => new ContactsDemo(),
    ),
    new GalleryItem(
      title: '动画',
      subtitle: '动画效果颜色',
      category: '演示',
      routeName: AnimationDemo.routeName,
      buildRoute: (BuildContext context) => const AnimationDemo(),
    ),
    // Material Components
    new GalleryItem(
      title: '底部导航栏',
      subtitle: '底部导航栏',
      category: 'Android风格控件',
      routeName: BottomNavigationDemo.routeName,
      buildRoute: (BuildContext context) => new BottomNavigationDemo(),
    ),
    new GalleryItem(
      title: 'Buttons',
      subtitle: '演示了按钮的所有属性: flat, raised, dropdown, icon, etc',
      category: 'Android风格控件',
      routeName: ButtonsDemo.routeName,
      buildRoute: (BuildContext context) => new ButtonsDemo(),
    ),
    new GalleryItem(
      title: 'Cards',
      subtitle: 'Material with rounded corners and a drop shadow',
      category: 'Android风格控件',
      routeName: CardsDemo.routeName,
      buildRoute: (BuildContext context) => new CardsDemo(),
    ),
    new GalleryItem(
      title: 'Chips',
      subtitle: '带图标的按钮',
      category: 'Android风格控件',
      routeName: ChipDemo.routeName,
      buildRoute: (BuildContext context) => new ChipDemo(),
    ),
    new GalleryItem(
      title: 'Date and time pickers',
      subtitle: '时间日期选择器',
      category: 'Android风格控件',
      routeName: DateAndTimePickerDemo.routeName,
      buildRoute: (BuildContext context) => new DateAndTimePickerDemo(),
    ),
    new GalleryItem(
      title: 'Dialog',
      subtitle: 'All kinds: simple, alert, fullscreen, etc',
      category: 'Android风格控件',
      routeName: DialogDemo.routeName,
      buildRoute: (BuildContext context) => new DialogDemo(),
    ),
    new GalleryItem(
      title: 'Drawer',
      subtitle: '侧滑菜单',
      category: 'Android风格控件',
      routeName: DrawerDemo.routeName,
      buildRoute: (BuildContext context) => new DrawerDemo(),
    ),
    new GalleryItem(
      title: 'Expand/collapse list control',
      subtitle: '列表和可扩展列表',
      category: 'Android风格控件',
      routeName: TwoLevelListDemo.routeName,
      buildRoute: (BuildContext context) => new TwoLevelListDemo(),
    ),
    new GalleryItem(
      title: 'Expansion panels',
      subtitle: '列表选择框',
      category: 'Android风格控件',
      routeName: ExpasionPanelsDemo.routeName,
      buildRoute: (BuildContext context) => new ExpasionPanelsDemo(),
    ),
    new GalleryItem(
      title: 'Floating action button',
      subtitle: '右下角浮动按钮',
      category: 'Android风格控件',
      routeName: TabsFabDemo.routeName,
      buildRoute: (BuildContext context) => new TabsFabDemo(),
    ),
    new GalleryItem(
      title: 'Grid',
      subtitle: '网格布局',
      category: 'Android风格控件',
      routeName: GridListDemo.routeName,
      buildRoute: (BuildContext context) => const GridListDemo(),
    ),
    new GalleryItem(
      title: 'Icons',
      subtitle: 'Enabled and disabled 图标',
      category: 'Android风格控件',
      routeName: IconsDemo.routeName,
      buildRoute: (BuildContext context) => new IconsDemo(),
    ),
    new GalleryItem(
      title: 'Leave-behind list items',
      subtitle: '带侧滑删除的ListView',
      category: 'Android风格控件',
      routeName: LeaveBehindDemo.routeName,
      buildRoute: (BuildContext context) => const LeaveBehindDemo(),
    ),
    new GalleryItem(
      title: 'List',
      subtitle: '普通ListView',
      category: 'Android风格控件',
      routeName: ListDemo.routeName,
      buildRoute: (BuildContext context) => const ListDemo(),
    ),
    new GalleryItem(
      title: 'Menus',
      subtitle: '菜单',
      category: 'Android风格控件',
      routeName: MenuDemo.routeName,
      buildRoute: (BuildContext context) => const MenuDemo(),
    ),
    new GalleryItem(
      title: 'Modal bottom sheet',
      subtitle: '底部选择菜单',
      category: 'Android风格控件',
      routeName: ModalBottomSheetDemo.routeName,
      buildRoute: (BuildContext context) => new ModalBottomSheetDemo(),
    ),
    new GalleryItem(
      title: 'Page selector',
      subtitle: '带指示器的ViewPager',
      category: 'Android风格控件',
      routeName: PageSelectorDemo.routeName,
      buildRoute: (BuildContext context) => new PageSelectorDemo(),
    ),
    new GalleryItem(
      title: 'Persistent bottom sheet',
      subtitle: '底部选择菜单',
      category: 'Android风格控件',
      routeName: PersistentBottomSheetDemo.routeName,
      buildRoute: (BuildContext context) => new PersistentBottomSheetDemo(),
    ),
    new GalleryItem(
      title: 'Progress indicators',
      subtitle: '进度条：环形条形',
      category: 'Android风格控件',
      routeName: ProgressIndicatorDemo.routeName,
      buildRoute: (BuildContext context) => new ProgressIndicatorDemo(),
    ),
    new GalleryItem(
      title: 'Pull to refresh',
      subtitle: '下拉刷新',
      category: 'Android风格控件',
      routeName: OverscrollDemo.routeName,
      buildRoute: (BuildContext context) => const OverscrollDemo(),
    ),
    new GalleryItem(
      title: 'Scrollable tabs',
      subtitle: '顶部tab导航',
      category: 'Android风格控件',
      routeName: ScrollableTabsDemo.routeName,
      buildRoute: (BuildContext context) => new ScrollableTabsDemo(),
    ),
    new GalleryItem(
      title: '单选多选框',
      subtitle: 'Checkboxes, radio buttons, and switches',
      category: 'Android风格控件',
      routeName: SelectionControlsDemo.routeName,
      buildRoute: (BuildContext context) => new SelectionControlsDemo(),
    ),
    new GalleryItem(
      title: 'Sliders',
      subtitle: 'Seekbar',
      category: 'Android风格控件',
      routeName: SliderDemo.routeName,
      buildRoute: (BuildContext context) => new SliderDemo(),
    ),
    new GalleryItem(
      title: 'Snackbar',
      subtitle: 'Temporary message that appears at the bottom',
      category: 'Android风格控件',
      routeName: SnackBarDemo.routeName,
      buildRoute: (BuildContext context) => const SnackBarDemo(),
    ),
    new GalleryItem(
      title: 'Tabs',
      subtitle: 'Tabs with independently scrollable views',
      category: 'Android风格控件',
      routeName: TabsDemo.routeName,
      buildRoute: (BuildContext context) => new TabsDemo(),
    ),
    new GalleryItem(
      title: 'Text fields',
      subtitle: '单行输入框',
      category: 'Android风格控件',
      routeName: TextFormFieldDemo.routeName,
      buildRoute: (BuildContext context) => const TextFormFieldDemo(),
    ),
    new GalleryItem(
      title: 'Tooltips',
      subtitle: '长按提示',
      category: 'Android风格控件',
      routeName: TooltipDemo.routeName,
      buildRoute: (BuildContext context) => new TooltipDemo(),
    ),
    // Cupertino Components
    new GalleryItem(
      title: 'Activity Indicator',
      subtitle: '加载中',
      category: 'iOS风格控件',
      routeName: CupertinoProgressIndicatorDemo.routeName,
      buildRoute: (BuildContext context) => new CupertinoProgressIndicatorDemo(),
    ),
    new GalleryItem(
      title: 'Buttons',
      subtitle: 'Cupertino styled buttons',
      category: 'iOS风格控件',
      routeName: CupertinoButtonsDemo.routeName,
      buildRoute: (BuildContext context) => new CupertinoButtonsDemo(),
    ),
    new GalleryItem(
      title: 'Dialogs',
      subtitle: 'Cupertino styled dialogs',
      category: 'iOS风格控件',
      routeName: CupertinoDialogDemo.routeName,
      buildRoute: (BuildContext context) => new CupertinoDialogDemo(),
    ),
    new GalleryItem(
      title: 'Sliders',
      subtitle: 'Seekbar',
      category: 'iOS风格控件',
      routeName: CupertinoSliderDemo.routeName,
      buildRoute: (BuildContext context) => new CupertinoSliderDemo(),
    ),
    new GalleryItem(
      title: 'Switch',
      subtitle: 'Cupertino styled switches',
      category: 'iOS风格控件',
      routeName: CupertinoSwitchDemo.routeName,
      buildRoute: (BuildContext context) => new CupertinoSwitchDemo(),
    ),
    // Styles
    new GalleryItem(
      title: '颜色样式演示',
      subtitle: '所有定义好的颜色样式',
      category: '主题样式',
      routeName: ColorsDemo.routeName,
      buildRoute: (BuildContext context) => new ColorsDemo(),
    ),
    new GalleryItem(
      title: '字体样式演示',
      subtitle: '所有定义好的文字样式',
      category: '主题样式',
      routeName: TypographyDemo.routeName,
      buildRoute: (BuildContext context) => new TypographyDemo(),
    )
  ];

  // Keep Pesto around for its regression test value. It is not included
  // in (release builds) the performance tests.
  assert(() {
    galleryItems.insert(0,
      new GalleryItem(
        title: '食谱',
        subtitle: '简单食谱浏览',
        category: '演示',
        routeName: PestoDemo.routeName,
        buildRoute: (BuildContext context) => const PestoDemo(),
      ),
    );
    return true;
  }());

  return galleryItems;
}

final List<GalleryItem> kAllGalleryItems = _buildGalleryItems();
