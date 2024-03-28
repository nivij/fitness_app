class TabText {
  final String text;

  TabText(this.text);
}
List<TabText> generateTabTextList() {
  return [
    TabText("Connection"),
    TabText("Statistics"),
    TabText("Shop"),
    // Add more TabText objects as needed
  ];
}
