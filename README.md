# HashMap

This is a project to practice making a Hash Map and its various components such as hash codes and buckets. This is part of [The Odin Project's][1] Computer Science section to learn and practice data structures and algorithms. The actual lesson for this can be [found here][2].

This hash map boasts O(1) time complexity for insertion, retrieval, and removal, making it a very fast way to contain a list of data. It functions by hashing a string into a value which is used as an index in an array. It's ability to maintain this speed falls to O(n) as the structure experiences more collisions however, or rather, if data starts to occupy the same index, as the data is storied as a linked list in each array index.

## LinkedList

Linked lists are used in this project to fill out the hash map data. A hash map is initialized with "buckets" that each contain empty linked lists and, ideally, will go on to contain exactly one data entry, represented by a Node object. If a collision should occur, however, the power of a linked list is leveraged here by making the colliding piece of data attached as a next node in the list.

In this way, data is not disregarded if the resulting hashed index already has an entry in it, instead sticking the new data to the end of the list. This comes at a consequence of the hash map's speed; the longer a linked list gets, the longer the data operations start to take.

This implementation of linked list is derived from a previous project I worked on with [The Odin Project][3], but slightly modified to handle key/value pairs instead of a single piece of data. The original code of this linked list can be found on [my GitHub][4].

[1]: https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby#a-bit-of-computer-science
[2]: https://www.theodinproject.com/lessons/ruby-hashmap
[3]: https://www.theodinproject.com/lessons/ruby-linked-lists
[4]: https://github.com/ExcentricEevee/linked_list
