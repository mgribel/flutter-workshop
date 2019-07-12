import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshop_flutter_app/model/movies/detail/view_model/movie_detail_view_model.dart';

class MovieDetail extends StatefulWidget {
  final MovieDetailViewModel viewHandler;

  const MovieDetail({Key key, this.viewHandler}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MovieDetailState();
  }
}

class MovieDetailState extends State<MovieDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              expandedHeight: 250.0,
              floating: false,
              pinned: true,
              backgroundColor: Theme.of(context).primaryColor,
              flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(
                widget.viewHandler.posterUrl,
                fit: BoxFit.cover,
              ))),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: EdgeInsets.all(8),
                  height: 200, //TODO(Step 1.1): Remove this line)
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[Container(
                          padding: EdgeInsets.only(left: 70), //TODO(Step 1.2): Remove this line
                          child: Text(
                            widget.viewHandler.title,
                            style: TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),

                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                widget.viewHandler.voteAverage,
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.white),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                widget.viewHandler.releaseDate,
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Text(
                          widget.viewHandler.description,
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
