class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "READY TO BE THE #BESTDADYOUCANBE?",
    image: "assets/images/animation/father.json",
    desc:
        "MANtenatal should be 'MANdatory' for All expecting Dads & Birth Partners!",
  ),
  OnboardingContents(
    title: "COURSE OUTLINE",
    image: "assets/images/animation/course.json",
    desc: "DISCUSS & SHARE | BEFORE BIRTH | BIRTH & BEYOND | HAPPY DAD",
  ),
  OnboardingContents(
    title: "We Are Here To Help You",
    image: "assets/images/animation/help.json",
    desc: "",
  ),
];
