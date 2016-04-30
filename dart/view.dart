import 'dart:html';

void main(){
buildField(40,40);
}


void buildField(int cells, int rows) {
  var table = querySelector('table') as TableElement;
  var tBody2 = table.createTBody();
  var row;
  for (int i = 0; i < rows * cells; i++) {
    if (i % cells == 0) {
      row = tBody2.addRow();
    }
    else {
      row.addCell();
    }
  }
}

void updateView(var field){
  int i = 0;
  var table = querySelectorAll('td');
  table.asMap();

  for(var cell in table){
    if(field[i] != cell){
//      updateCell();
    }
    i++;
  }
}