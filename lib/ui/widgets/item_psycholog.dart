part of 'widgets.dart';

class ItemPsycholog extends StatelessWidget {
  const ItemPsycholog({
    Key? key,
    required this.psycholog,
    required this.onButtonClick,
  }) : super(key: key);
  final PsychologEntity psycholog;
  final Function onButtonClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
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
            height: 130,
            width: 110,
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(9, 4, 9, 4),
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
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
                                const Icon(MdiIcons.bagChecked),
                                const SizedBox(width: 7),
                                Text(
                                  "${psycholog.experience} tahun",
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      ?.copyWith(
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(
                                MdiIcons.database,
                                color: greenColor,
                              ),
                              const SizedBox(width: 12),
                              Text(
                                "Rp ${psycholog.price.toString().replaceAllMapped(regMoney, (Match match) => '${match[1]}.')}",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          onButtonClick();
                        },
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 6, 20, 6),
                          decoration: BoxDecoration(
                            border: Border.all(color: greyColor),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                            color: secondaryColor,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Colors.black26,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              "Lihat",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
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
  }
}
