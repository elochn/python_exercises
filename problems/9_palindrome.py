'''Given an integer x, return true if x is a palindrome, and false otherwise.
Example 1:

Input: x = 121
Output: true
Explanation: 121 reads as 121 from left to right and from right to left.
Example 2:

Input: x = -121
Output: false
Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
Example 3:

Input: x = 10
Output: false
Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
'''

# Initial approach: manually compared characters from both ends, moving toward the center.
class Solution:
    def isPalindrome(self, x: int) -> bool:
        list = []
        for i in range(len(str(x))):
            if str(x)[i] == str(x)[int(len(str(x)))-1-i]:  # Not the most efficient, but it solved the problem.
                list.append(True)  
            else:
                list.append(False)
        return False not in list  # Returns True only if all characters matched.

# Later, I remembered Python supports string reversal, so I simplified the code:
class Solution:
    def isPalindrome(self, x: int) -> bool:
        if str(x) == str(x)[::-1]:
            return True
        else:
            return False
        
# Then, I found an even more concise version from suggested solutions:
class Solution:
    def isPalindrome(self, x: int) -> bool:
        return str(x) == str(x)[::-1]
