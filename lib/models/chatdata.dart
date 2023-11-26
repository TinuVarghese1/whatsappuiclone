
class Chat {
  final String profilePic;
  final String name;
  final String lastMessage;
  final String messageTime;

  Chat({
    required this.profilePic,
    required this.name,
    required this.lastMessage,
    required this.messageTime,
  });
}

List<Chat> clist = [
  Chat(
    profilePic: 'assets/aiony-haust-3TLl_97HNJo-unsplash.jpg',
    name: 'Alice',
    lastMessage: 'yes, sure',
    messageTime: '2:09 am',
  ),
  Chat(
    profilePic: 'assets/ayo-ogunseinde-sibVwORYqs0-unsplash.jpg',
    name: 'jonny',
    lastMessage: 'okk vroo',
    messageTime: '2:23 am',
  ),

  Chat(
    profilePic: 'assets/charlesdeluvio-kVg2DQTAK7c-unsplash.jpg',
    name: 'robert',
    lastMessage: 'then....',
    messageTime: '2:21 am',
  ),


  Chat(
    profilePic: 'assets/charlie-green-3JmfENcL24M-unsplash.jpg',
    name: 'Daniel',
    lastMessage: 'text me back',
    messageTime: '2:21 am',
  ),

  Chat(
    profilePic: 'assets/gabriel-silverio-u3WmDyKGsrY-unsplash.jpg',
    name: 'tommy',
    lastMessage: 'meet at stadium',
    messageTime: '2:21 am',
  ),
  Chat(
    profilePic: 'assets/irene-strong-v2aKnjMbP_k-unsplash.jpg',
    name: 'vickey',
    lastMessage: 'ok buddy',
    messageTime: '2:21 am',
  ),
  Chat(
    profilePic: 'assets/joseph-gonzalez-iFgRcqHznqg-unsplash.jpg',
    name: 'rocky',
    lastMessage: 'call me',
    messageTime: '2:21 am',
  ),

];
