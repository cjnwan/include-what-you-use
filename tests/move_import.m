//===--- move_import.m - test input file for iwyu -------------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#import "tests/move_import.h"

@implementation Foo

- (void)method:(Bar *)var {
  [var instanceMethod];
}

@end

/**** IWYU_SUMMARY

tests/move_import.m should add these lines:
#import "tests/objc_call_instance_method-i1.h"  // for Bar

tests/move_import.m should remove these lines:

The full include-list for tests/move_import.m:
#import "tests/move_import.h"
#import "tests/objc_call_instance_method-i1.h"  // for Bar

***** IWYU_SUMMARY */
