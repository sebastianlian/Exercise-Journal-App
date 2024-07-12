enum SplitType {
  full(
    title: 'Full Body',
    splitType: 'Full Body',
    description: 'A full body workout targets all major muscle groups in one session.',
    image: 'fb.jpg',
  ),
  upperLower(
    title: 'Upper/Lower',
    splitType: 'Upper/Lower',
    description: 'The Upper/Lower split divides workouts into upper body exercises on one day and lower body exercises on another.',
    image: 'ul.jpg',
  ),
  pushPull(
    title: 'Push Pull',
    splitType: 'Push Pull',
    description: 'The Push/Pull split alternates workouts between push exercises (chest, shoulders, triceps) and pull exercises (back, biceps).',
    image: 'pp.jpg',
  );
  // custom(
  //   title: 'Custom',
  //   splitType: 'Custom',
  //   description: 'A Custom split allows users to design their own workout routine based on personal preferences, goals, and training experience. Users can choose specific muscle groups to target in each session, modify exercise selection, adjust intensity, and incorporate rest days as needed. This flexibility makes it ideal for individuals with specific fitness goals, athletes with sport-specific training needs, or anyone looking to personalize their workout regimen for optimal results.',
  //   image: 'full.jpg',
  // );

  // constructor
  const SplitType({
    required this.title,
    required this.splitType,
    required this.description,
    required this.image,
  });

  final String title;
  final String splitType;
  final String description;
  final String image;
}

