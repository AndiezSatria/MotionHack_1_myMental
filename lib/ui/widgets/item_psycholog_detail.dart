part of 'widgets.dart';

class ItemPsychologDetail extends StatelessWidget {
  const ItemPsychologDetail({
    Key? key,
    required this.psycholog,
  }) : super(key: key);
  final PsychologEntity psycholog;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            color: Colors.black26,
            offset: Offset(1, 0),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 110,
            width: 85,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              image: DecorationImage(
                image: AssetImage("assets/images/profile.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(22, 8, 22, 0),
                  child: Text(
                    psycholog.name,
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Text(
                    psycholog.alumni,
                    style: Theme.of(context).textTheme.caption?.copyWith(
                          color: const Color(0xFF959595),
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(19, 4, 6, 9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(9, 4, 9, 4),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Color(0xFFCECECE),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Colors.black26,
                              offset: Offset(1, 0),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            const Icon(MdiIcons.star),
                            const SizedBox(width: 7),
                            Text(
                              "${psycholog.rating}%",
                              style:
                                  Theme.of(context).textTheme.caption?.copyWith(
                                        fontWeight: FontWeight.w500,
                                      ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          "Untuk konsultasi selama ${psycholog.consultationDuration} menit",
                          textAlign: TextAlign.end,
                          style: Theme.of(context).textTheme.caption?.copyWith(
                                fontWeight: FontWeight.w500,
                                color: mainColor,
                              ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
    ;
  }
}
