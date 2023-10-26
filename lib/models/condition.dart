class Condition {
  final String text;
  final String icon;
  final double code;

  Condition({
    required this.text,
    required this.icon,
    required this.code
  });

  factory Condition.fromJson(Map<String, dynamic> json) {
    return Condition(
        text: json['text'],
        icon: json['icon'],
        code: json['code']
    );
  }
}