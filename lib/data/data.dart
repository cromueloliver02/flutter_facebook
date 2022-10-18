import '../models/models.dart';

const loggedUser = User(
  name: 'Cromuel Barut',
  imageUrl:
      'https://i.pinimg.com/originals/b5/e2/02/b5e202526684a6cef81c910e27bc58be.jpg',
);

const List<User> onlineUsers = [
  User(
    name: 'Yukino Yukinoshita',
    imageUrl: 'https://i.ytimg.com/vi/6aj_H4xdteU/maxresdefault.jpg',
  ),
  User(
    name: 'Arisu Sakayanagi',
    imageUrl:
        'https://steamuserimages-a.akamaihd.net/ugc/867367113420353262/54B94546315296DC4AA91E55137B74D4CF7A1FE4/?imw=1024&imh=695&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true',
  ),
  User(
    name: 'Kasumigaoka Utaha',
    imageUrl:
        'https://i.pinimg.com/originals/3f/7c/68/3f7c6814ed1a1d1373f2f05e8a11450c.jpg',
  ),
  User(
    name: 'Kei Karuizawa',
    imageUrl:
        'https://external-preview.redd.it/Vft7YJWwLp4O6Ucy1MbWNlTqFWnMQUoNbaAzHvMAOxQ.png?width=640&crop=smart&format=pjpg&auto=webp&s=07dad7196f9744e892cd7e89ad78cc071e64ecf9',
  ),
  User(
    name: 'Eriri Spencer Sawamura',
    imageUrl:
        'https://64.media.tumblr.com/1e815e2370448fe320d50c0c19f19448/tumblr_pczq1vLuV41x2q4f4o1_1280.jpg',
  ),
  User(
      name: 'Shinobu Kocho',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDaczijEGXnU27mbATmZJQxkco0HEwT58Hbg&usqp=CAU'),
  User(
    name: 'Sumireko Sanshokuin',
    imageUrl:
        'https://static.wikia.nocookie.net/oresuki/images/2/27/Sumireko_Pansy.PNG/revision/latest?cb=20191011191726',
  ),
  User(
    name: 'Kiyotaka Ayanokoji',
    imageUrl:
        'https://i.pinimg.com/736x/f8/d5/df/f8d5dfc6be0b8ee7627372e059d1d30d.jpg',
  ),
  User(
    name: 'Kurumi Walnut',
    imageUrl:
        'https://animecorner.me/wp-content/uploads/2021/10/Tokisaki-Kurumi-FIgure.jpg',
  ),
  User(
    name: 'Megumi Kato',
    imageUrl: 'https://i1.sndcdn.com/artworks-000231694472-sko6fi-t500x500.jpg',
  ),
];

final List<Story> stories = [
  Story(
    user: onlineUsers[0],
    imageUrl:
        'https://w0.peakpx.com/wallpaper/319/638/HD-wallpaper-yukinon-anime-oregairu-otaku-yukinoshita-thumbnail.jpg',
  ),
  Story(
    user: onlineUsers[1],
    imageUrl:
        'https://static.wikia.nocookie.net/youkoso-jitsuryoku-shijou-shugi-no-kyoushitsu-e/images/7/77/Episode_007_End_Card.jpg/revision/latest?cb=20170911092517',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[2],
    imageUrl:
        'https://i.pinimg.com/originals/e8/0f/a5/e80fa5ff6cd4fcf62999578e7b430258.jpg',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[3],
    imageUrl: 'https://i.ytimg.com/vi/zrbFI4JG28I/maxresdefault.jpg',
  ),
  Story(
    user: onlineUsers[4],
    imageUrl:
        'https://steamuserimages-a.akamaihd.net/ugc/834706451775996104/DF2036CB362551D87CED0F2DDCA1FF941C8BDA3D/?imw=5000&imh=5000&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false',
  ),
  Story(
    user: onlineUsers[5],
    imageUrl: 'https://wallpaperaccess.com/full/1488739.png',
  ),
  Story(
    user: onlineUsers[6],
    imageUrl:
        'http://cdn.shopify.com/s/files/1/1358/9279/collections/Oresuki_peek_001_1200x1200.jpg?v=1641305772',
  ),
  Story(
    user: onlineUsers[7],
    imageUrl:
        'http://pm1.narvii.com/7651/fb4bfce64a7a9f9eafe80650f88e13b7991498cbr1-1556-2048v2_00.jpg',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[8],
    imageUrl:
        'https://i.pinimg.com/564x/d6/5a/a9/d65aa9e88876e92343354e1139890063.jpg',
  ),
  Story(
    user: onlineUsers[9],
    imageUrl:
        'https://i.pinimg.com/originals/34/b7/4e/34b74ee3bd69e59f38e26b8dcdacd0f3.jpg',
    isViewed: true,
  ),
];

final List<Post> posts = [
  const Post(
    user: loggedUser,
    caption: 'Check out these cool puppers',
    timeAgo: '58m',
    imageUrl: 'https://images.unsplash.com/photo-1525253086316-d0c936c814f8',
    likes: 1202,
    comments: 184,
    shares: 96,
  ),
  Post(
    user: onlineUsers[5],
    caption:
        'Please enjoy this placeholder text: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    timeAgo: '3hr',
    imageUrl: null,
    likes: 683,
    comments: 79,
    shares: 18,
  ),
  Post(
    user: onlineUsers[4],
    caption: 'This is a very good boi.',
    timeAgo: '8hr',
    imageUrl:
        'https://images.unsplash.com/photo-1575535468632-345892291673?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    likes: 894,
    comments: 201,
    shares: 27,
  ),
  Post(
    user: onlineUsers[3],
    caption: 'Adventure 🏔',
    timeAgo: '15hr',
    imageUrl:
        'https://images.unsplash.com/photo-1573331519317-30b24326bb9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    likes: 722,
    comments: 183,
    shares: 42,
  ),
  Post(
    user: onlineUsers[0],
    caption:
        'More placeholder text for the soul: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    timeAgo: '1d',
    imageUrl: null,
    likes: 482,
    comments: 37,
    shares: 9,
  ),
  Post(
    user: onlineUsers[9],
    caption: 'A classic.',
    timeAgo: '1d',
    imageUrl:
        'https://images.unsplash.com/reserve/OlxPGKgRUaX0E1hg3b3X_Dumbo.JPG?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    likes: 1523,
    shares: 129,
    comments: 301,
  )
];
