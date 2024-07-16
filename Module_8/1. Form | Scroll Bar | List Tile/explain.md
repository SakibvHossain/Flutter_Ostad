## Topic 
1.  Column
2.  Row
3.  Scroll Bar


## 1. Column
The  `Column` widget is used to create a vertical layout, stacking its children widgets one after the other. Here’s a basic exampl:

```
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Column Example'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Item 1'),
            Text('Item 2'),
            Text('Item 3'),
            ElevatedButton(
              onPressed: () {
                // Do something
              },
              child: Text('Press me'),
            ),
          ],
        ),
      ),
    );
  }
}
```

### Explanation: 
1. `MaterialApp:` The main entry point for a Flutter application. It wraps several widgets that are commonly required for a material design app.
2. `Scaffold:` Implements the basic material design visual layout structure. It provides an app bar and a body for your screen.
3. `AppBar:` A material design app bar that can hold a title, icons, and more.
4. `Column:` A widget that displays its children in a vertical array. It has properties like mainAxisAlignment and crossAxisAlignment to control the alignment of the children.
5. `mainAxisAlignment:` Controls the vertical alignment of the children (e.g., MainAxisAlignment.center centers the children vertically).
6. `crossAxisAlignment:` Controls the horizontal alignment of the children (e.g., CrossAxisAlignment.start aligns the children to the start horizontally).
7. `Text:` Displays a string of text with a single style.
8. `ElevatedButton:` A material design elevated button that triggers an action when pressed.

### Additional Customizations:
You can further customize the Column by adding padding, spacing, or more complex widgets. For example, adding spacing between items:

```
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
    Text('Item 1'),
    SizedBox(height: 10), // Adds spacing between items
    Text('Item 2'),
    SizedBox(height: 10), // Adds spacing between items
    Text('Item 3'),
    SizedBox(height: 10), // Adds spacing between items
    ElevatedButton(
      onPressed: () {
        // Do something
      },
      child: Text('Press me'),
    ),
  ],
)
```

This example adds `SizedBox` widgets to create space between the items in the column. You can use various widgets within a Column to achieve your desired layout.

---------------------------------

## 2. Row
The `Row` widget is used to create a horizontal layout, stacking its children widgets side by side. Here’s a basic example:

```
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row Example'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Item 1'),
              SizedBox(width: 10), // Adds spacing between items
              Text('Item 2'),
              SizedBox(width: 10), // Adds spacing between items
              Text('Item 3'),
              SizedBox(width: 10), // Adds spacing between items
              ElevatedButton(
                onPressed: () {
                  // Do something
                },
                child: Text('Press me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```
### Explanation:
1. Row: A widget that displays its children in a horizontal array. It has properties like mainAxisAlignment and crossAxisAlignment to control the alignment of the children.
    *  `mainAxisAlignment:` Controls the horizontal alignment of the children (e.g., 
     MainAxisAlignment.center centers the children horizontally).
    *  `crossAxisAlignment:` Controls the vertical alignment of the children (e.g., 
     CrossAxisAlignment.center centers the children vertically).

### Additional Customizations: 
You can further customize the Row by adjusting alignment properties or adding more complex widgets. For example, aligning items to the start of the row:

```
Row(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: <Widget>[
    Text('Item 1'),
    SizedBox(width: 10), // Adds spacing between items
    Text('Item 2'),
    SizedBox(width: 10), // Adds spacing between items
    Text('Item 3'),
    SizedBox(width: 10), // Adds spacing between items
    ElevatedButton(
      onPressed: () {
        // Do something
      },
      child: Text('Press me'),
    ),
  ],
)
```

In this example, the `mainAxisAlignment` is set to `MainAxisAlignment.start` to align the children to the start of the row. You can use various widgets within a Row to achieve your desired layout.

-----------------------------------------

## 3. Scroll Bar
In Flutter, there are several types of scroll views that you can use to create scrollable content. Here are the main types and how you can use them:
1. SingleChildScrollView
2. ListView
3. GridView
4. PageView
5. CustomScrollView

### 1. SingleChildScrollView
`SingleChildScrollView` is used when you have a single widget that might exceed the size of the screen. It allows you to make a widget scrollable.

```
SingleChildScrollView(
  child: Column(
    children: <Widget>[
      Container(
        height: 200,
        color: Colors.red,
      ),
      Container(
        height: 200,
        color: Colors.green,
      ),
      Container(
        height: 200,
        color: Colors.blue,
      ),
      // Add more containers or widgets
    ],
  ),
)
```

### 2. ListView
`ListView` is used for displaying a scrollable list of widgets. It can be either vertically or horizontally scrollable.

**(I) Basic ListView**
```
ListView(
  children: <Widget>[
    ListTile(
      leading: Icon(Icons.map),
      title: Text('Map'),
    ),
    ListTile(
      leading: Icon(Icons.photo_album),
      title: Text('Album'),
    ),
    ListTile(
      leading: Icon(Icons.phone),
      title: Text('Phone'),
    ),
  ],
)
```

**(II) ListView.builder (for a large or dynamic list)**
```
ListView.builder(
  itemCount: 100,
  itemBuilder: (BuildContext context, int index) {
    return ListTile(
      title: Text('Item $index'),
    );
  },
)
```

### 3. GridView
`GridView` is used to display a scrollable grid of widgets.

**(I) Basic GridView:**
```
GridView.count(
  crossAxisCount: 2,
  children: <Widget>[
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    ),
    // Add more containers or widgets
  ],
)
```

**(II) GridView.builder (for a large or dynamic grid):**
```
GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
  ),
  itemCount: 100,
  itemBuilder: (BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.all(4.0),
      color: Colors.teal[100 * (index % 9)],
    );
  },
)
```

### 4. PageView
`PageView` is used for creating scrollable pages, like a carousel or a screen that swipes between different pages.

```
PageView(
  children: <Widget>[
    Container(
      color: Colors.red,
      child: Center(child: Text('Page 1')),
    ),
    Container(
      color: Colors.green,
      child: Center(child: Text('Page 2')),
    ),
    Container(
      color: Colors.blue,
      child: Center(child: Text('Page 3')),
    ),
  ],
)
```

### 5. CustomScrollView:
`CustomScrollView` allows you to create custom scroll effects using slivers. A sliver is a portion of a scrollable area that you can define to have different characteristics.
```
CustomScrollView(
  slivers: <Widget>[
    SliverAppBar(
      expandedHeight: 250.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Text('SliverAppBar'),
        background: Image.network(
          'https://via.placeholder.com/350x150',
          fit: BoxFit.cover,
        ),
      ),
    ),
    SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return ListTile(
            title: Text('Item $index'),
          );
        },
        childCount: 100,
      ),
    ),
  ],
)
```

### Summary:
*  `SingleChildScrollView:` For a single scrollable widget.
*  `ListView:` For a scrollable list of items, either static or dynamic.
*  `GridView:` For a scrollable grid of items, either static or dynamic.
*  `PageView:` For creating scrollable pages.
*  `CustomScrollView:` For custom scroll effects using slivers.

Each of these scroll views is suited for different use cases, and you can choose the one that best fits your needs.
