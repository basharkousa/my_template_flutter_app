// import 'package:mymoviesapp/src/data/loacal/constants/db_constants.dart';
// import 'package:mymoviesapp/src/data/models/movies/movies_response.dart';
// import 'package:sembast/sembast.dart';
import 'package:sqflite/sqflite.dart';

import 'package:inject/inject.dart';

class MyAppDataSource {
  // A Store with int keys and Map<String, dynamic> values.
  // This Store acts like a persistent map, values of which are Flogs objects converted to Map

//  final _postsStore = intMapStoreFactory.store(DBConstants.STORE_NAME);

  // Private getter to shorten the amount of code needed to get the
  // singleton instance of an opened database.
  // Future<Database> get _db async => await AppDatabase.instance.database;
//
  // database instance

//  final Future<Database> _db;
  final Database _db;
  // Constructor

  @provide
  MyAppDataSource(this._db);

//  // DB functions:--------------------------------------------------------------

  // Future<int> createCourse(var course) async{
  //   //db.rawInsert('insert into courses value')
  //   return _db.insert('courses', course.toMap());
  // }
  // Future<List> allCourses() async{
  //
  //   //db.rawQuery('select * from courses');
  //   return _db.query('courses');
  // }
  //
  // Future<int> delete(int id) async{
  //   return _db.delete('courses', where: 'id = ?', whereArgs: [id]);
  // }
  // Future<int> courseUpdate(var course) async{
  //   return await _db.update('courses', course.toMap(),where: 'id = ?', whereArgs: [course.id]);
  // }


  // Future<int> insert(Movie movie) async {
  //   return await _postsStore.add(await _db, movie.toJson());
  // }
  //
  // Future<int> count() async {
  //   return await _postsStore.count(await _db);
  // }
  //
  // Future<List<Movie>> getAllSortedByFilter({List<Filter> filters}) async {
  //   //creating finder
  //   final finder = Finder(
  //       filter: Filter.and(filters),
  //       sortOrders: [SortOrder(DBConstants.FIELD_ID)]);
  //
  //   final recordSnapshots = await _postsStore.find(
  //     await _db,
  //     finder: finder,
  //   );
  //
  //   // Making a List<Post> out of List<RecordSnapshot>
  //   return recordSnapshots.map((snapshot) {
  //     final post = Movie.fromJson(snapshot.value);
  //     // An ID is a key of a record from the database.
  //     post.id = snapshot.key;
  //     return post;
  //   }).toList();
  // }
  //
  // Future<MoviesResponse> getMoviesFromDb() async {
  //
  //   print('Loading from database');
  //
  //   // post list
  //   var moviesList;
  //
  //   // fetching data
  //   final recordSnapshots = await _postsStore.find(
  //     await _db,
  //   );
  //
  //   // Making a List<Post> out of List<RecordSnapshot>
  //   if(recordSnapshots.length > 0) {
  //     moviesList = MoviesResponse(
  //         results: recordSnapshots.map((snapshot) {
  //           final movie = Movie.fromJson(snapshot.value);
  //           // An ID is a key of a record from the database.
  //           movie.id = snapshot.key;
  //           return movie;
  //         }).toList());
  //   }
  //
  //   return moviesList;
  // }
  //
  // Future<int> update(Movie post) async {
  //   // For filtering by key (ID), RegEx, greater than, and many other criteria,
  //   // we use a Finder.
  //   final finder = Finder(filter: Filter.byKey(post.id));
  //   return await _postsStore.update(
  //     await _db,
  //     post.toJson(),
  //     finder: finder,
  //   );
  // }
  //
  // Future<int> delete(Movie post) async {
  //   final finder = Finder(filter: Filter.byKey(post.id));
  //   return await _postsStore.delete(
  //     await _db,
  //     finder: finder,
  //   );
  // }
  //
  // Future deleteAll() async {
  //   await _postsStore.drop(
  //     await _db,
  //   );
  // }

}
