class PlaceStory {
  final List<String> keywords;
  final String title;
  final String story;
  PlaceStory({required this.keywords, required this.title, required this.story});
}

class PlaceStoryService {
  static final List<PlaceStory> _stories = [
    PlaceStory(keywords: ['沙溪', '沙溪古镇'], title: '沙溪古镇 · 静谧时光', story: '茶马古道上遗落的静谧时光，没有过度商业化。'),
    PlaceStory(keywords: ['泸沽湖'], title: '泸沽湖 · 摩梭秘境', story: '湛蓝湖水与神秘摩梭文化交织，适合放空心灵。'),
    PlaceStory(keywords: ['婺源'], title: '婺源 · 油菜花海', story: '春天的梯田与白墙黛瓦，宛如水墨画。'),
  ];

  static PlaceStory? match(String merchant) {
    for (var story in _stories) {
      if (story.keywords.any((k) => merchant.contains(k))) return story;
    }
    return null;
  }
}
