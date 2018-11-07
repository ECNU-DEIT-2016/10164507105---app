import 'package:angular/angular.dart';

import 'src/index_com/index_component.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components
//zhushi
@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [IndexComponent],
)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.
}
