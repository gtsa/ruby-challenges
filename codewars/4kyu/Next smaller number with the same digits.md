Write a function that takes a positive integer and returns the next smaller positive integer containing the same digits.

For example:
```ruby
next_smaller(21) == 12
next_smaller(531) == 513
next_smaller(2071) == 2017
```
Return -1 when there is no smaller number that contains the same digits. Also return -1 when the next smaller number with the same digits would require the leading digit to be zero.
```ruby
next_smaller(9) == -1
next_smaller(135) == -1
next_smaller(1027) == -1  # 0721 is out since we don't write numbers with leading zeros
```
- some tests will include very large numbers.
- test data only employs positive integers.

---

- Strings
- Mathematics
- Algorithms
