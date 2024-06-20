
1. inject network config AppNetworkConfig

   final networkConfig = sl<Network>().network as AppNetworkConfig;

2. inject dio:

   final dioOptions = BaseOptions(
   baseUrl: networkConfig.url,
   connectTimeout: const Duration(seconds: 120),
   receiveTimeout: const Duration(seconds: 120),
   sendTimeout: const Duration(seconds: 120),
   );
   sl.registerLazySingleton<Dio>(() => Dio(dioOptions));
   sl<Dio>().interceptors.addAll([
   LoginInterceptor(),
   CurlInterceptor(),
   LogInterceptor(requestBody: true, responseBody: true),
   HandleErrorInterceptor(),
   ]);

3. inject service
   sl.registerLazySingleton(
   () => LoginService(sl.get(), baseUrl: networkConfig.url));


  