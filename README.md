# HashMap

This is a project to practice making a Hash Table/Map and its various components such as hash codes and buckets. This is part of [The Odin Project's][1] Computer Science section to learn and practice another data structure and related algorithms. The actual lesson for this can be [found here][2].

## LinkedList

Linked lists are used in this project when a collision happens. When a bucket is empty, new data is added with just a Node object. If there is already a node in a bucket during a collision, however, it will instead convert into a linked list: it will implement the already-existing node as the head and have it point to a new node that was making the collision. If there is already a linked list in place, it will simply #append the new data.

This implementation of linked list is derived from a previous project I worked on with [The Odin Project][3], but slightly modified to handle key/value pairs instead of a single piece of data. The original code of this linked list can be found on [GitHub][4].

[1]: https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby#a-bit-of-computer-science
[2]: https://www.theodinproject.com/lessons/ruby-hashmap
[3]: https://www.theodinproject.com/lessons/ruby-linked-lists
[4]: https://github.com/ExcentricEevee/linked_list
