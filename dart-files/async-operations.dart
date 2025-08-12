void main() async {
  print("Fetching Data");
  apiCall().then((data) {
    print(data);
  });
  print("no Await so prints before data");
  await for (String framework in frameworkStream(3)) {
    print("FrameWork: $framework");
  }

  String syncApiCallResult = await waitForApiCall();
  print(syncApiCallResult);
}

Future<Map<String, String>> apiCall() {
  return Future.delayed(Duration(seconds: 2), () {
    return {"framework": "nextjs", "author": "vercel team"};
  });
}

Stream<String> frameworkStream(int max) async* {
  List<String> framework = ["nextjs", "remix", "tanstack", "lemon"];
  for (int i = 1; i <= max; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield framework[i];
  }
}

Future<String> waitForApiCall() async {
  return await Future.delayed(Duration(seconds: 2), () {
    return "nextjs";
  });
}
