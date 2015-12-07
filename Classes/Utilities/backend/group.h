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

//-------------------------------------------------------------------------------------------------------------------------------------------------
void			GroupRemoveMembers		(PFUser *user1, PFUser *user2);
void			GroupRemoveMember		(PFObject *group, PFUser *user);

//-------------------------------------------------------------------------------------------------------------------------------------------------
void			GroupDelete				(PFObject *group);
