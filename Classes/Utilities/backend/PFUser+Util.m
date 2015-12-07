//
// Copyright (c) Fanny Ochoa 2015
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "AppConstant.h"

#import "PFUser+Util.h"

@implementation PFUser (Util)

//-------------------------------------------------------------------------------------------------------------------------------------------------
+ (NSString *)currentId
//-------------------------------------------------------------------------------------------------------------------------------------------------
{
	return [PFUser currentUser].objectId;
}

//-------------------------------------------------------------------------------------------------------------------------------------------------
+ (NSString *)currentName
//-------------------------------------------------------------------------------------------------------------------------------------------------
{
	return [[PFUser currentUser] fullname];
}

//-------------------------------------------------------------------------------------------------------------------------------------------------
- (NSString *)fullname
//-------------------------------------------------------------------------------------------------------------------------------------------------
{
	return self[PF_USER_FULLNAME];
}

//-------------------------------------------------------------------------------------------------------------------------------------------------
- (BOOL)isEqualTo:(PFUser *)user
//-------------------------------------------------------------------------------------------------------------------------------------------------
{
	return [self.objectId isEqualToString:user.objectId];
}

@end
