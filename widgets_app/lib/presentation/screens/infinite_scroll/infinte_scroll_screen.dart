import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfiniteScrollScreen extends StatefulWidget {
  static const name = 'infinite_scroll_screen';
  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
  List<int> imagesIDs = [1, 2, 3, 4, 5];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;
  bool isMounted = true;
  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        //load next page
        loadNextPage();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    isMounted = false;
    scrollController.dispose();
  }

  Future loadNextPage() async {
    if (isLoading) return;
    isLoading = true;
    setState(() {});
    await Future.delayed(Duration(seconds: 2));
    AddFiveImages();
    isLoading = false;
    if (!isMounted) return;
    setState(() {});
    //mover scroll
    MoveScrollToBottom();
  }

  Future<void> onRefesh() async {
    await Future.delayed(Duration(seconds: 3));
    isLoading = true;
    setState(() {
    });
    if (!isMounted) return;
    isLoading = false;
    final lastId = imagesIDs.last;
    imagesIDs.clear();
    imagesIDs.add(lastId + 1);
    AddFiveImages();
    setState(() {});
  }

  void MoveScrollToBottom(){
    if(scrollController.position.pixels+100 <= scrollController.position.maxScrollExtent)return;
    scrollController.animateTo(scrollController.position.pixels+120, duration: Duration(milliseconds: 300), curve: Curves.fastOutSlowIn);
  }

  void AddFiveImages() {
    final lastId = imagesIDs.last;
    imagesIDs.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: RefreshIndicator(
          onRefresh: onRefesh,
          edgeOffset: 10,
          strokeWidth: 2,
          child: ListView.builder(
            controller: scrollController,
            itemCount: imagesIDs.length,
            itemBuilder: (context, index) {
              return FadeInImage(
                fit: BoxFit.cover,
                width: double.infinity,
                height: 300,
                placeholder: AssetImage('assets/images/jar-loading.gif'),
                image: NetworkImage(
                  'https://picsum.photos/id/${imagesIDs[index]}/500/300',
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(),
        //child: Icon(Icons.arrow_back_ios_new_outlined),
        child: isLoading
            ? SpinPerfect(infinite: true, child: Icon(Icons.refresh_rounded))
            : FadeIn(child: Icon(Icons.arrow_back_ios_new_outlined)),
      ),
    );
  }
}
