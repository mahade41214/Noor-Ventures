class UnboardingContent{
  String image;
  String title;
  String description;
  UnboardingContent(
      {required this.description, required this.image, required this.title});
}

List<UnboardingContent> contents=[
  UnboardingContent(
      description: '   Strong Financial Backing\nDiversified Business Portfolio',
      image:"images/logoang.png",
      title: '                  Noor Ventures\n A Investment and Business platform'),
  UnboardingContent(
      description: '   Startup Incubation & Funding\n    Direct Business Investments',
      image:"images/logoevent.png",
      title: 'Integrated Digital Platform\n     Client & Partner Trust'),
  UnboardingContent(
      description: '    Strong Financial Backing\nDiversified Business Portfolio',
      image:"images/planersfull.png",
      title: 'Real Estate & Asset Growth\n        Equity Partnerships'),
];

