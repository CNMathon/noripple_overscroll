# noripple_overscroll

A package that helps developers cancel ripples caused by excessive Listview scrolling.

## Getting Started

The package is very easy to cancel ripples caused by excessive Listview scrolling. What you need to do is just pass your `ListView` Widget to it!

Just like this:

```dart
class _NorippleDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NoRippleOverScroll(  // Calling NoRippleOverScroll
      child: ListView(          // Pass in ListView
        ...
      ),
    );
  }
}
```

Yes, it's that simple! Now, start experiencing it!
