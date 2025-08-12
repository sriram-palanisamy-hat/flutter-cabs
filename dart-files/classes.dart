// AbstracT class
abstract class Framework {
  String name;
  Framework(this.name);

  void printDeveloper();

  static String category = "Web Framework";

  static void printCategory() {
    print("Category: $category");
  }
}

class NextJS extends Framework {
  static String mainAuthor = "Vercel Team";

  NextJS() : super("NextJS");

  @override
  void printDeveloper() {
    print(name);
    print("Author: $mainAuthor");
    print("Next Second Handler");
  }
}

class Remix extends Framework {
  static String mainAuthor = "Ryan Florence";

  Remix() : super("Remix");

  @override
  void printDeveloper() {
    print(name);
    print("Author: $mainAuthor");
  }
}

class TanStack extends Framework {
  static String mainAuthor = "Tanner Linsley";

  TanStack() : super("TanStack");

  @override
  void printDeveloper() {
    print(name);
    print("Author: $mainAuthor");
  }
}

class UnknownFramework extends Framework {
  UnknownFramework(String name) : super(name);

  @override
  void printDeveloper() {
    print(name);
    print("Unknown Author");
  }
}

void main() {
  Framework.printCategory();
  print("---");

  List<String> frameworkNames = ["nextjs", "remix", "tanstack", "lemon"];

  List<Framework> frameworks = frameworkNames.map((name) {
    switch (name.toLowerCase()) {
      case "nextjs":
        return NextJS();
      case "remix":
        return Remix();
      case "tanstack":
        return TanStack();
      default:
        return UnknownFramework(name);
    }
  }).toList();

  for (var framework in frameworks) {
    framework.printDeveloper();
    print("---");
  }

  print("NextJS author (static): ${NextJS.mainAuthor}");
}
