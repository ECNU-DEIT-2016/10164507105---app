import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'index_service.dart';

@Component(
  selector: 'index-com',
  styleUrls: ['index_component.css'],
  templateUrl: 'index_component.html',
  directives: [
    MaterialCheckboxComponent,
    MaterialFabComponent,
    MaterialIconComponent,
    MaterialChipsComponent,MaterialChipComponent,
    MaterialTabPanelComponent,
    MaterialTabComponent,
    materialInputDirectives,
    NgFor,
    NgIf,
  ],
  providers: [const ClassProvider(IndexService)],
)
class IndexComponent implements OnInit {
  final IndexService indexService;

  List<String> items = [];
  String newTodo = '';

  IndexComponent(this.indexService);

  @override
  Future<Null> ngOnInit() async {
    items = await indexService.getTodoList();
  }

  void add() {
    items.add(newTodo);
    newTodo = '';
  }

  String remove(int index) => items.removeAt(index);
}
