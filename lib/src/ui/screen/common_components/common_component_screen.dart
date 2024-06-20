import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_widget/flutter_widget.dart';
import 'package:stripe_terminal/stripe_terminal.dart';


class CommonComponentScreen extends StatefulWidget {
  static const routeName = '/common-components';
  const CommonComponentScreen({super.key});

  @override
  State<CommonComponentScreen> createState() => _CommonComponentScreenState();
}

class _CommonComponentScreenState extends State<CommonComponentScreen> {
  final lang = Localization.current;
  @override
  void initState() {
    _multiselectController = MultiselectController();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.background,
      body: _buildBody(context),
    );
  }

  _buildBody(BuildContext context) {
    return Center(
      child: AppButton(
        type: AppButtonType.secondarySmall,
        label: 'Call Stripe To Payment',
        onPressed: () { StripeTerminal.instance.initialize();},
      ),
    );
    // return SizedBox(
    //   child: ListView(
    //     children: [
    //       _buildExampleAppBarComponent(),
    //       _buildListItemCustom(),
    //       _buildListViewCustom(),
    //       Container(
    //         height: 100,
    //         width: double.infinity,
    //         color: Colors.red,
    //       )
    //     ],
    //   ),
    // );
  }

  Widget _buildExampleAppBarComponent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Base AppBar"),
        BaseAppBar.onlyBackButton(
          title: "通知一覧",
        ),
        const Text("Base AppBar with menu"),
        BaseAppBar.withHistoryButton(
          context: context,
          title: "通知一覧",
        ),
        const Text("Base AppBar with setting"),
        BaseAppBar.withSettingButton(
          context: context,
          title: "通知一覧",
        ),
        const Text("Base AppBar with menu"),
        BaseAppBar.withNotifyAndMenuButton(
          context: context,
          title: "通知一覧",
          itemMenuWithAction: {
            "斎藤　一": () {},
            "グループ一覧": () {},
          },
        ),
        const Text("Base AppBar with scan QR code"),
        BaseAppBar.withScanQrButton(
          context: context,
          title: "通知一覧",
        ),
        const Text("Base AppBar with message and group"),
        BaseAppBar.withMessageAndGroupButton(
          context: context,
          title: "通知一覧",
        ),
        const Text("Base AppBar with paging"),
        BaseAppBar.withPagingSlide(
          context: context,
          title: "通知一覧",
          canNext: false,
        ),
      ],
    );
  }

  bool selected = false;

  Widget _buildListItemCustom() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Item notification normal"),
        CustomItemList.notificationItem(
          index: 0,
          title: "重要な通知タイトル",
          content:
              "ここはお知らせの本文です。最大二行しか表示されていません。文章内容はダミーです。文章 ここはお知らせの本文です。最大二行しか表示されていません。文章内容はダミーです。文章内",
          createDate: DateTime.now(),
        ),
        const Text("Item notification warning, unread"),
        CustomItemList.notificationItem(
          important: true,
          unRead: true,
          index: 0,
          title: "重要な通知タイトル",
          content:
              "ここはお知らせの本文です。最大二行しか表示されていません。文章内容はダミーです。文章 ここはお知らせの本文です。最大二行しか表示されていません。文章内容はダミーです。文章内",
          createDate: DateTime.now(),
          showCheckBox: true,
          isSelected: selected,
          onSelect: (value) {
            setState(() {
              selected = value ?? false;
            });
          },
        ),
      ],
    );
  }

  late MultiselectController _multiselectController;

  Widget _buildListViewCustom() {
    return Column(
      children: [
        Space.h24(),
        Row(
          children: [
            AppButton.primarySmall(
                label: "Select all",
                onPressed: () {
                  StripeTerminal.instance.initialize();
                  setState(() {
                    _multiselectController.selectAll();
                  });
                }),
            AppButton.primarySmall(
                label: "clear all",
                onPressed: () {
                  setState(() {
                    _multiselectController.clearSelection();
                  });
                }),
          ],
        ),
      ],
    );
  }
}
