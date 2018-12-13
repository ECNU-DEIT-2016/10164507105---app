import 'my_server.dart';
import 'dart:math';
/// This type initializes an application.
///
/// Override methods in this class to set up routes and initialize services like
/// database connections. See http://aqueduct.io/docs/http/channel/.
class MyServerChannel extends ApplicationChannel {
  /// Initialize services in this method.
  ///
  /// Implement this method to initialize services, read values from [options]
  /// and any other initialization required before constructing [entryPoint].
  ///
  /// This method is invoked prior to [entryPoint] being accessed.
  @override
  Future prepare() async {
    logger.onRecord.listen((rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
  }

  /// Construct the request channel.
  ///
  /// Return an instance of some [Controller] that will be the initial receiver
  /// of all [Request]s.
  ///
  /// This method is invoked after [prepare].
  @override
  Controller get entryPoint {
    final router = Router();

    // Prefer to use `link` instead of `linkFunction`.
    // See: https://aqueduct.io/docs/http/request_controller/
    router
      .route("/students/[:num]").link(()=>MyController());
      ;

    return router;
  }
}
class MyController extends ResourceController {
  // final List<String> things = ['thing1', 'thing2', 'things3', 'things4', 'things5'];
  List<String> names = [];

 MyController(){
    connect(names);
  }

  @Operation.get()
  Future<Response> getThings() async {
    // getRandom(10);
    return Response.ok(names);
  }

  @Operation.get('num')
  Future<Response> getStudent(@Bind.path('num') int num) async {
    List<int> nums = getRandom(num, names.length);
    List<String> res = [];
    for(int i=0; i<nums.length; i++){
      res.add(names[nums[i]]);
    }
    return Response.ok(res);
    }

  List<int> getRandom(int num, int maxlen){
    List<int> nums=[];
     Random random = new Random();
     for(int i=0; i<num; i++){
       int rand = random.nextInt(maxlen);
       if(nums.contains(rand)){
         i--;
       }else{
         nums.add(rand);
       }
     }   
      return nums;
  }
}


Future connect(List<String> names) async{
  var s = ConnectionSettings(
    user: "deit2016",
    password: "deit2016@ecnu",
    host: "www.muedu.org",
    port: 3306,
    db: "deit2016db_10164507105",
  );
  var conn = await MySqlConnection.connect(s);
  Results result =
      await conn.execute('SELECT id,name,sex FROM student');
  result.forEach( (f) => names.add(f.toString()) );
}