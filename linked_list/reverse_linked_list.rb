# Reverse Linked List
# Reverse a linked list. Do it in-place and in one-pass.

# For example:
# Given 1->2->3->4->5->NULL,

# return 5->4->3->2->1->NULL.

# PROBLEM APPROACH :

# Complete solution code in the hints




# Definition for singly-linked list.
# class ListNode
#     attr_accessor :next,:data
#     def initialize(data)
#         @data = data
#         @next=nil
#     end
# end

class Solution
    # @param a : head node of linked list
    # @return the head node in the linked list
    def reverseList(a)
        prev = nil
        curr = a

        while curr
            temp = curr.next
            curr.next = prev
            prev = curr
            curr = temp
        end
        prev
    end
end


# 206. Reverse Linked List

# Add to List

# Share
# Reverse a singly linked list.

# Example:

# Input: 1->2->3->4->5->NULL
# Output: 5->4->3->2->1->NULL
# Follow up:

# A linked list can be reversed either iteratively or recursively. Could you implement both?

def reverse_list(head)
    data = []
    current_node = head
    while current_node != nil
        data << current_node.val
        current_node = current_node.next
    end
    data.reverse
end
