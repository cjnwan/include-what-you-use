//===--- fwd_decl_class_as_method_argument.m - test input file for iwyu ---===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#import "fwd_decl_class_as_method_argument.h"

@implementation C
- (void)handleFoo:(ImportedClass *)foo {
  // nothing to do
}
@end

/**** IWYU_SUMMARY

(tests/objc-apple/fwd_decl_class_as_method_argument.m has correct #includes/fwd-decls)

***** IWYU_SUMMARY */
