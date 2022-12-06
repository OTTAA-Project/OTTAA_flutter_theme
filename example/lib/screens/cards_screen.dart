import 'package:example/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:ottaa_theme/widgets.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      children: <Widget>[
        const TitleWidget(title: 'Action Card'),
        const ActionCard(
          title: 'Title',
          subtitle: 'Subtitle',
          trailingImage: NetworkImage(
            'https://media.discordapp.net/attachments/1022491179041968148/1049628470000488488/image.png',
          ),
          focused: true,
        ),
        const SizedBox(height: 16),
        const TitleWidget(title: 'Presseable Action Card'),
        ActionCard(
          title: 'Title',
          subtitle: 'Subtitle',
          trailingImage: const NetworkImage(
            'https://media.discordapp.net/attachments/1022491179041968148/1049628470000488488/image.png',
          ),
          onPressed: () {},
          focused: true,
        ),
        const SizedBox(height: 16),
        const TitleWidget(title: 'Profile Card'),
        const ProfileCard(
          title: 'Juan Varela',
          subtitle: 'Usuario',
          leadingImage: NetworkImage(
            'https://cdn.discordapp.com/avatars/854381699559718922/517e6e3900959a7a4bb89f3b16dab238.png?size=1024',
          ),
        ),
        const TitleWidget(title: 'Presseable Profile Card'),
        ProfileCard(
          title: 'Juan Varela',
          subtitle: 'Usuario',
          leadingImage: const NetworkImage(
            'https://cdn.discordapp.com/avatars/854381699559718922/517e6e3900959a7a4bb89f3b16dab238.png?size=1024',
          ),
          onPressed: () {},
        ),
        const TitleWidget(title: 'Profile Card Actions'),
        ProfileCard(
          title: 'Juan Varela',
          subtitle: 'Usuario',
          leadingImage: const NetworkImage(
            'https://cdn.discordapp.com/avatars/854381699559718922/517e6e3900959a7a4bb89f3b16dab238.png?size=1024',
          ),
          actions: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(Icons.edit),
                splashRadius: 15,
                onPressed: () {},
              ),
              IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(Icons.delete),
                splashRadius: 15,
                onPressed: () {},
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        const TitleWidget(title: 'Pictogram Card '),
        PictogramCard(
          title: 'Acciones',
          actionText: 'Ver Pictogramas',
          pictogram: const NetworkImage(
            'https://media.discordapp.net/attachments/1022491179041968148/1049659463424020570/image.png',
          ),
          onPressed: () {},
        ),
        const SizedBox(height: 16),
        const TitleWidget(title: 'Pictogram Card w/ Switch'),
        PictogramCard(
          title: 'Acciones',
          actionText: 'Ver Pictogramas',
          pictogram: const NetworkImage(
            'https://media.discordapp.net/attachments/1022491179041968148/1049659463424020570/image.png',
          ),
          onPressed: () {},
          status: true,
          onChange: (_) {},
        )
      ],
    );
  }
}
