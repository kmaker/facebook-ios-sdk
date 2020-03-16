// Copyright (c) 2014-present, Facebook, Inc. All rights reserved.
//
// You are hereby granted a non-exclusive, worldwide, royalty-free license to use,
// copy, modify, and distribute this software in source code or binary form for use
// in connection with the web services and APIs provided by Facebook.
//
// As with any software that integrates with the Facebook platform, your use of
// this software is subject to the Facebook Developer Principles and Policies
// [http://developers.facebook.com/policy/]. This copyright notice shall be
// included in all copies or substantial portions of the software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
// FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
// COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
// IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
// CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#import "FBSDKMonitorEntry.h"

#import "FBSDKSettings+Internal.h"

@implementation FBSDKMonitorEntry

- (instancetype)init
{
  if (self = [super init]) {
    // Base class FBSDKMonitorEntry should not be directly initialized
    if ([self isMemberOfClass:[FBSDKMonitorEntry class]]) {
      return nil;
    }
  }

  return self;
}

- (NSString *)appID
{
  return [FBSDKSettings appID];
}

- (void)encodeWithCoder:(nonnull NSCoder *)coder {
  [coder encodeObject:self.appID forKey:@"appID"];
}

- (nullable instancetype)initWithCoder:(nonnull NSCoder *)coder {
  // make this a fatal
  return nil;
}

@end
