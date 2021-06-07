# Given a singly linked list, determine if it is a palindrome.

# Example 1:

# Input: 1->2
# Output: false
# Example 2:

# Input: 1->2->2->1
# Output: true
# Follow up:
# Could you do it in O(n) time and O(1) space?

def is_palindrome(head)
    data = []
    current_node = head
    while current_node != nil
        data << current_node.val
        current_node = current_node.next
    end
    data.reverse == data
end
