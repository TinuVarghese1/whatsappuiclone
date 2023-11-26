class StatusUpdate {
  final String profilePic;
  final String name;
  final String timeAgo;

  StatusUpdate({
    required this.profilePic,
    required this.name,
    required this.timeAgo,
  });
}

List<StatusUpdate> slist = [
  StatusUpdate(
    profilePic: 'assets/charlesdeluvio-kVg2DQTAK7c-unsplash.jpg',
    name: 'robert',
    timeAgo: '2:40 pm',
  ),
  StatusUpdate(
    profilePic: 'assets/aiony-haust-3TLl_97HNJo-unsplash.jpg',
    name: 'Alice',
    timeAgo: '2:40 pm',
  ),

  StatusUpdate(
    profilePic: 'assets/joseph-gonzalez-iFgRcqHznqg-unsplash.jpg',
    name: 'rocky',
    timeAgo: '2:40 pm',
  ),


  // Add more status updates as needed


];