@protocol Foo;
@protocol Bar;

/**** IWYU_SUMMARY

tests/objc-apple/objc_category_protocol.h should add these lines:

tests/objc-apple/objc_category_protocol.h should remove these lines:
- @protocol Bar;  // lines XX-XX
- @protocol Foo;  // lines XX-XX

The full include-list for tests/objc-apple/objc_category_protocol.h:

***** IWYU_SUMMARY */
