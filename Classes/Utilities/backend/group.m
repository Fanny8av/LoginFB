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

#import <Parse/Parse.h>

#import "AppConstant.h"

#import "group.h"

//-------------------------------------------------------------------------------------------------------------------------------------------------
void GroupRemoveMembers(PFUser *user1, PFUser *user2)
//-------------------------------------------------------------------------------------------------------------------------------------------------
{
	PFQuery *query = [PFQuery queryWithClassName:PF_GROUP_CLASS_NAME];
	[query whereKey:PF_GROUP_USER equalTo:user1];
	[query whereKey:PF_GROUP_MEMBERS equalTo:user2.objectId];
	[query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error)
	{
		if (error == nil)
		{
			for (PFObject *group in objects)
			{
				GroupRemoveMember(group, user2);
			}
		}
		else NSLog(@"GroupRemoveMembers query error.");
	}];
}

//-------------------------------------------------------------------------------------------------------------------------------------------------
void GroupRemoveMember(PFObject *group, PFUser *user)
//-------------------------------------------------------------------------------------------------------------------------------------------------
{
	if ([group[PF_GROUP_MEMBERS] containsObject:user.objectId])
	{
		[group[PF_GROUP_MEMBERS] removeObject:user.objectId];
		[group saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error)
		{
			if (error != nil) NSLog(@"GroupRemoveMember save error.");
		}];
	}
}

//-------------------------------------------------------------------------------------------------------------------------------------------------
void GroupDelete(PFObject *group)
//-------------------------------------------------------------------------------------------------------------------------------------------------
{
	[group deleteInBackgroundWithBlock:^(BOOL succeeded, NSError *error)
	{
		if (error != nil) NSLog(@"GroupDelete delete error.");
	}];
}
