import 'package:flutter/material.dart';
import 'package:flutter_app_peliculas/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              const _PosterAndTitle(),
              const _Overview(),
              const CastingCards()
            ]),
          ),
        ],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar();

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.all(0),
        title: Container(
          padding: const EdgeInsets.only(bottom: 10),
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: Colors.black12,
          child: const Text(
            'movie.title',
            style: TextStyle(fontSize: 16),
          ),
        ),
        background: const FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('https://via.placeholder.com/500x300'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  const _PosterAndTitle();
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage('https://via.placeholder.com/200x300'),
                height: 150,
              ),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'movie.title',
                  style: textTheme.headlineSmall,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  'movie.originalTitle',
                  style: textTheme.titleMedium,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Row(
                  children: [
                    const Icon(Icons.star_outlined,
                        size: 15, color: Colors.grey),
                    const SizedBox(width: 5),
                    Text(
                      'movie.voteAverate',
                      style: textTheme.bodySmall,
                    ),
                  ],
                )
              ],
            )
          ],
        ));
  }
}

class _Overview extends StatelessWidget {
  const _Overview();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        'Reprehenderit incididunt dolore pariatur aute dolore in nostrud tempor et dolor. Deserunt consequat dolore enim nostrud Lorem officia et occaecat occaecat. Nulla amet in tempor consequat ipsum sit Lorem incididunt veniam magna eiusmod occaecat adipisicing irure.',
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
