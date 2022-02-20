part of 'pages.dart';

class ChatPage extends GetView<ConsultationListController> {
  const ChatPage({Key? key}) : super(key: key);
  static const routeName = '/chat_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: SafeArea(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onTap: () {
                                Get.back();
                              },
                            ),
                            const SizedBox(width: 16.0),
                            Container(
                              height: 45,
                              width: 45,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/profile.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Text(
                                "Sarah Anadia Chelsea, M.Psi",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    ?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Expanded(
                              child: MainColorRoundedButton(
                                onClick: () {},
                                child: Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(2),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 4,
                                            offset: Offset(-2, 2),
                                          )
                                        ],
                                      ),
                                      child: const Icon(
                                        Icons.phone_outlined,
                                        color: secondaryColor,
                                      ),
                                    ),
                                    const SizedBox(width: 6),
                                    Text(
                                      "Panggilan Suara",
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption
                                          ?.copyWith(color: secondaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: SecondaryColorRoundedButton(
                                onClick: () {},
                                child: Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(2),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 4,
                                            offset: Offset(-2, 2),
                                          )
                                        ],
                                      ),
                                      child: const Icon(
                                        MdiIcons.videoOutline,
                                        color: secondaryColor,
                                      ),
                                    ),
                                    const SizedBox(width: 6),
                                    Text(
                                      "Panggilan Video",
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption
                                          ?.copyWith(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 12),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: dummyChat.length,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    var chat = dummyChat[index];
                    var chatItem = Row(
                      mainAxisAlignment: chat.chatType == ChatType.Received
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          margin: index != 0 && index != dummyChat.length - 1
                              ? const EdgeInsets.fromLTRB(21, 14, 21, 0)
                              : index == dummyChat.length - 1
                                  ? const EdgeInsets.fromLTRB(21, 14, 21, 100)
                                  : const EdgeInsets.fromLTRB(21, 0, 21, 0),
                          child: ItemChat(
                            chat: chat,
                          ),
                        ),
                      ],
                    );
                    if (index == 0) {
                      return Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 21.0),
                            child: ItemChatHeader(),
                          ),
                          const SizedBox(height: 14),
                          chatItem,
                        ],
                      );
                    }
                    return chatItem;
                  }),
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(16, 16, 0, 16),
                    decoration: const BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    child: TextField(
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(color: Colors.white),
                      controller: controller.searchController.value,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.emoji_emotions_outlined,
                              color: Colors.white),
                        ),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.attach_file,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 12),
                          ],
                        ),
                        hintStyle: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: Colors.white),
                        hintText: "Tulis pesan...",
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100.0))),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100.0))),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: mainColor,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mic_none,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
