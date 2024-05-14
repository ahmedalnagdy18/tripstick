import 'package:flutter/material.dart';
import 'package:tripstick/core/common/text_types.dart';
import 'package:tripstick/features/home/presentation/widgets/listview_body.dart';
import 'package:tripstick/features/home/presentation/widgets/long_pic_widget.dart';
import 'package:tripstick/features/home/presentation/widgets/member_widget.dart';
import 'package:tripstick/features/home/presentation/widgets/search_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Padding(
                    padding: EdgeInsets.only(top: queryData.size.height * 0.1),
                    child: Row(
                      children: [
                        Image.asset(
                          'images/tripstick.png',
                          scale: 2,
                        ),
                        const Spacer(),
                        Image.asset(
                          'images/favorate.jpeg',
                          scale: 2,
                        ),
                        const SizedBox(width: 6),
                        Image.asset(
                          'images/notification.jpeg',
                          scale: 2,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: SearchWidget(
                    hintText: 'Where to?',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: queryData.size.height * 0.2,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: SizedBox(
                                  width: 100,
                                  child: Image.asset(
                                    'images/pic1.png',
                                  ),
                                ),
                              ),
                              const Flexible(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: Text(
                                  'Travel inspiration',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ))
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 30),
                      Expanded(
                        child: Container(
                          height: queryData.size.height * 0.2,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: SizedBox(
                                  width: 100,
                                  child: Image.asset(
                                    'images/pic3.png',
                                  ),
                                ),
                              ),
                              const Flexible(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: Text(
                                  'Why choose tripstick?',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //! third part (are you a member?)
                const SizedBox(height: 30),
                const MemberWidget(),
                //! Forth part (long photo)
                const SizedBox(height: 30),
                LontPicWidget(
                  right: queryData.size.width * 0.30,
                  height: queryData.size.height * 0.5,
                  assetName:
                      "https://res.cloudinary.com/drykvi3xr/image/upload/v1684742300/tripstick/scuba-diving_h2iagu.jpg",
                  title:
                      '17 cool stays by the water for a once-in-a-lifetime trip',
                  descrebtion:
                      'Over divers underwater of colther cliffside returne and more',
                  buttontext: 'Explore',
                ),
                //! Fifth part (List view )
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TitleText(
                    title: 'Top destinations for your next holiday',
                  ),
                ),
                const SizedBox(height: 6),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: DescribtionText(
                    descrebtion:
                        '''Here's where you follow travellers are recced''',
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 120,
                  child: ListView.separated(
                    padding: const EdgeInsets.only(left: 25),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 12),
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return const ListviewBody(
                        image:
                            'https://i.pinimg.com/564x/1b/98/88/1b988822076454c4afc212c68d0a5884.jpg',
                        title: 'Paris',
                      );
                    },
                  ),
                ),
                //! Part 6  (List view)
                const SizedBox(height: 40),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TitleText(
                    title: 'Cilinary holidays for food lovers',
                  ),
                ),
                const SizedBox(height: 6),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: DescribtionText(
                    descrebtion: '''check out the top during soats in town''',
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 120,
                  child: ListView.separated(
                    padding: const EdgeInsets.only(left: 25),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 12),
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return const ListviewBody(
                        image:
                            'https://i.pinimg.com/564x/1b/98/88/1b988822076454c4afc212c68d0a5884.jpg',
                        title: 'Paris',
                      );
                    },
                  ),
                ),
                //! Last Part  (List view)
                const SizedBox(height: 50),
                LontPicWidget(
                  right: queryData.size.width * 0.30,
                  height: queryData.size.height * 0.5,
                  assetName:
                      "https://res.cloudinary.com/drykvi3xr/image/upload/v1684742299/tripstick/desert-safari_ollcdv.jpg",
                  title: 'The perfect 2 days in dubai',
                  descrebtion:
                      'Enjoy the desert in 48 hours-we will show you how!',
                  buttontext: '''Let's go''',
                ),
                const SizedBox(height: 50)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
