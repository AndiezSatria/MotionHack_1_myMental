part of 'widgets.dart';

class ItemSchedule extends StatelessWidget {
  const ItemSchedule({
    Key? key,
    required this.schedule,
  }) : super(key: key);
  final ScheduleEntity schedule;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 11, 16, 11),
      decoration: BoxDecoration(
        border: Border.all(color: greyColor),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(blurRadius: 3, color: Colors.black26),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  schedule.title,
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  schedule.body,
                  style: Theme.of(context).textTheme.caption?.copyWith(
                        color: const Color(0xFF959595),
                      ),
                ),
                const SizedBox(height: 10),
                Text(
                  "15 j 12 m",
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(10, 6, 10, 6),
                decoration: BoxDecoration(
                  border: Border.all(color: greyColor),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  color: secondaryColor,
                  boxShadow: const [
                    BoxShadow(blurRadius: 3, color: Colors.black26),
                  ],
                ),
                child: Center(
                  child: Text(
                    schedule.time,
                    style: Theme.of(context).textTheme.caption?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                schedule.date,
                style: Theme.of(context).textTheme.caption?.copyWith(
                      color: const Color(0xFF959595),
                    ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
