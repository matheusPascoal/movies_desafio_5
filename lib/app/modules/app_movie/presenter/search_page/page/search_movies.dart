import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';

import '../../../domain/entities/movies_entity.dart';
import '../../../domain/errors/errors.dart';
import '../store/movie_store.dart';

class SearchMovies extends StatefulWidget {
  final MovieStore store;
  final MovieEntity searchEntity;

  const SearchMovies({
    super.key,
    required this.store,
    required this.searchEntity,
  });

  @override
  State<SearchMovies> createState() => _SearchMoviesState();
}

class _SearchMoviesState extends State<SearchMovies> {
  @override
  void initState() {
    super.initState();
    widget.store.getAllMovies();
  }

  @override
  Widget build(BuildContext context) {
    final themeApp = Theme.of(context);
    return Scaffold(
      backgroundColor: themeApp.backgroundColor,
      body: ScopedBuilder<MovieStore, SystemError, List<MovieEntity>>(
        store: widget.store,
        onError: (context, error) => Text(error.toString()),
        onLoading: (context) =>
            const Center(child: CircularProgressIndicator()),
        onState: (context, state) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return Text(
                widget.searchEntity.name,
                style: const TextStyle(color: Colors.white, fontSize: 50),
              );
            },
          );
        },
      ),
    );
  }
}
