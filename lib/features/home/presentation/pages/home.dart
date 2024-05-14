import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tripstick/core/common/text_types.dart';
import 'package:tripstick/features/home/presentation/cubit/home_cubit_cubit.dart';
import 'package:tripstick/features/home/presentation/pages/first_page.dart';
import 'package:tripstick/features/home/presentation/widgets/bottom_navigation_bar.dart';
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
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return BlocBuilder<HomeCubitCubit, HomeCubitState>(
        builder: (context, state) => state is SucsessHomeState
            ? Scaffold(
                backgroundColor: Colors.white,
                bottomNavigationBar: BottomNavigationBarWidget(
                    currentIndex: _currentIndex,
                    onTap: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    }),
                body: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      //! first part (app bar)
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: queryData.size.height * 0.1),
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
                          //! second part (two widgets)
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
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
                            assetName: state.postItems[0].imageUrl!,
                            title: state.postItems[0].title,
                            descrebtion: state.postItems[0].subTitle,
                            buttontext: 'Explore',
                            onPressed: () {},
                          ),
                          //! Fifth part (List view )
                          const SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: TitleText(
                              title: state.postItems[1].title,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: DescribtionText(
                              descrebtion: state.postItems[1].subTitle,
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
                              itemCount: state.postItems[1].list!.length,
                              itemBuilder: (context, index) {
                                return ListviewBody(
                                  image:
                                      state.postItems[1].list![index].imageUrl,
                                  title: state.postItems[1].list![index].title,
                                );
                              },
                            ),
                          ),
                          //! Part 6  (List view)
                          const SizedBox(height: 40),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: TitleText(
                              title: state.postItems[2].title,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: DescribtionText(
                              descrebtion: state.postItems[2].subTitle,
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
                              itemCount: state.postItems[2].list!.length,
                              itemBuilder: (context, index) {
                                return ListviewBody(
                                  image:
                                      state.postItems[2].list![index].imageUrl,
                                  title: state.postItems[2].list![index].title,
                                );
                              },
                            ),
                          ),
                          //! Last Part  (Long pic)
                          const SizedBox(height: 50),
                          LontPicWidget(
                            right: queryData.size.width * 0.30,
                            height: queryData.size.height * 0.5,
                            assetName: state.postItems[3].imageUrl!,
                            title: state.postItems[3].title,
                            descrebtion: state.postItems[3].subTitle,
                            buttontext: '''Let's go''',
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const FirstPage()));
                            },
                          ),
                          const SizedBox(height: 50)
                        ],
                      ),
                    ),
                  ),
                ),
              )
            : state is LoadingHomeState
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : const Scaffold(
                    body: Center(
                      child: Center(
                        child: Text('something went wrong'),
                      ),
                    ),
                  ));
  }
}
