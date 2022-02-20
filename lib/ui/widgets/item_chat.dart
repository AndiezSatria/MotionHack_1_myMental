part of 'widgets.dart';

class ItemChat extends StatelessWidget {
  const ItemChat({
    Key? key,
    required this.chat,
  }) : super(key: key);
  final ChatEntity chat;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width * 0.2,
        maxWidth: MediaQuery.of(context).size.width * 0.65,
      ),
      decoration: BoxDecoration(
        color: chat.chatType == ChatType.Received ? Colors.white : mainColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            offset: Offset(0, 1),
          )
        ],
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(10),
          topRight: const Radius.circular(10),
          bottomLeft: chat.chatType == ChatType.Received
              ? const Radius.circular(0)
              : const Radius.circular(10),
          bottomRight: chat.chatType == ChatType.Received
              ? const Radius.circular(10)
              : const Radius.circular(0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            chat.body,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  color: chat.chatType == ChatType.Received
                      ? const Color(0xFF585858)
                      : Colors.white,
                ),
          ),
          const SizedBox(height: 6),
          Text(
            chat.seen,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: chat.chatType == ChatType.Received
                      ? const Color(0xFF585858)
                      : Colors.white,
                ),
          ),
        ],
      ),
    );
  }
}
