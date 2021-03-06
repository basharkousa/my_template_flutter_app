import 'package:flutter/material.dart';
import 'package:my_template_flutter_app/src/data/models/api_response.dart';

class PaginationGridWidget<T, M> extends StatelessWidget {
  final List<M> itemsList;
  final Function() onRetryClick;
  final ScrollController scrollController;
  final IndexedWidgetBuilder itemBuilder;
  final Stream<ApiResponse<T>> paginationLiveData;

  PaginationGridWidget(
      {Key key,
        this.itemsList,
        this.scrollController,
        @required this.paginationLiveData,
        @required this.itemBuilder,
        this.onRetryClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: itemsList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5 / 1.8,
          ),
          itemBuilder: itemBuilder,
        ),
        StreamBuilder<ApiResponse<T>>(
            stream: paginationLiveData,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                switch (snapshot.data.status) {
                  case Status.LOADING:
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 30,
                        width: 30,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                        ),
                      ),
                    );
                  case Status.COMPLETED:
                    return Container();
                  case Status.ERROR:
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: InkWell(
                        onTap: () {
                          onRetryClick();
                        },
                        child: Icon(Icons.refresh,size: 30,),
                      ),
                    );
                    break;
                }
              }
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 30,
                  width: 30,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                  ),
                ),
              );
            }),
      ],
    );
  }
}
