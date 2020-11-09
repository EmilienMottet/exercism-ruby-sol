%% Generated with 'testgen v0.2.0'
%% Revision 1 of the exercises generator was used
%% https://github.com/exercism/problem-specifications/raw/42dd0cea20498fd544b152c4e2c0a419bb7e266a/exercises/sublist/canonical-data.json
%% This file is automatically generated from the exercises canonical data.

-module(sublist_tests).

-include_lib("erl_exercism/include/exercism.hrl").
-include_lib("eunit/include/eunit.hrl").




'1_empty_lists_test_'() ->
    [{"empty lists",
      ?_assertEqual(equal, sublist:relation([], []))},
     {"empty lists (is_equal)",
      ?_assert(sublist:is_equal([], []))},
     {"empty lists (not is_unequal)",
      ?_assertNot(sublist:is_unequal([], []))},
     {"empty lists (is_sublist)",
      ?_assert(sublist:is_sublist([], []))},
     {"empty lists (is_superlist)",
      ?_assert(sublist:is_superlist([], []))}].

'2_empty_list_within_non_empty_list_test_'() ->
    [{"empty list within non empty list",
      ?_assertEqual(sublist,
		    sublist:relation([], [1, 2, 3]))},
     {"empty list within non empty list (not "
      "is_equal)",
      ?_assertNot(sublist:is_equal([], [1, 2, 3]))},
     {"empty list within non empty list (is_unequal)",
      ?_assert(sublist:is_unequal([], [1, 2, 3]))},
     {"empty list within non empty list (is_sublist)",
      ?_assert(sublist:is_sublist([], [1, 2, 3]))},
     {"empty list within non empty list (not "
      "is_superlist)",
      ?_assertNot(sublist:is_superlist([], [1, 2, 3]))}].

'3_non_empty_list_contains_empty_list_test_'() ->
    [{"non empty list contains empty list",
      ?_assertEqual(superlist,
		    sublist:relation([1, 2, 3], []))},
     {"non empty list contains empty list (not "
      "is_equal)",
      ?_assertNot(sublist:is_equal([1, 2, 3], []))},
     {"non empty list contains empty list (is_unequal)",
      ?_assert(sublist:is_unequal([1, 2, 3], []))},
     {"non empty list contains empty list (not "
      "is_sublist)",
      ?_assertNot(sublist:is_sublist([1, 2, 3], []))},
     {"non empty list contains empty list (is_superl"
      "ist)",
      ?_assert(sublist:is_superlist([1, 2, 3], []))}].

'4_list_equals_itself_test_'() ->
    [{"list equals itself",
      ?_assertEqual(equal,
		    sublist:relation([1, 2, 3], [1, 2, 3]))},
     {"list equals itself (is_equal)",
      ?_assert(sublist:is_equal([1, 2, 3], [1, 2, 3]))},
     {"list equals itself (not is_unequal)",
      ?_assertNot(sublist:is_unequal([1, 2, 3], [1, 2, 3]))},
     {"list equals itself (is_sublist)",
      ?_assert(sublist:is_sublist([1, 2, 3], [1, 2, 3]))},
     {"list equals itself (is_superlist)",
      ?_assert(sublist:is_superlist([1, 2, 3], [1, 2, 3]))}].

'5_different_lists_test_'() ->
    [{"different lists",
      ?_assertEqual(unequal,
		    sublist:relation([1, 2, 3], [2, 3, 4]))},
     {"different lists (not is_equal)",
      ?_assertNot(sublist:is_equal([1, 2, 3], [2, 3, 4]))},
     {"different lists (is_unequal)",
      ?_assert(sublist:is_unequal([1, 2, 3], [2, 3, 4]))},
     {"different lists (not is_sublist)",
      ?_assertNot(sublist:is_sublist([1, 2, 3], [2, 3, 4]))},
     {"different lists (not is_superlist)",
      ?_assertNot(sublist:is_superlist([1, 2, 3],
				       [2, 3, 4]))}].

'6_false_start_test_'() ->
    [{"false start",
      ?_assertEqual(sublist,
		    sublist:relation([1, 2, 5], [0, 1, 2, 3, 1, 2, 5, 6]))},
     {"false start (not is_equal)",
      ?_assertNot(sublist:is_equal([1, 2, 5],
				   [0, 1, 2, 3, 1, 2, 5, 6]))},
     {"false start (is_unequal)",
      ?_assert(sublist:is_unequal([1, 2, 5],
				  [0, 1, 2, 3, 1, 2, 5, 6]))},
     {"false start (is_sublist)",
      ?_assert(sublist:is_sublist([1, 2, 5],
				  [0, 1, 2, 3, 1, 2, 5, 6]))},
     {"false start (not is_superlist)",
      ?_assertNot(sublist:is_superlist([1, 2, 5],
				       [0, 1, 2, 3, 1, 2, 5, 6]))}].

'7_consecutive_test_'() ->
    [{"consecutive",
      ?_assertEqual(sublist,
		    sublist:relation([1, 1, 2], [0, 1, 1, 1, 2, 1, 2]))},
     {"consecutive (not is_equal)",
      ?_assertNot(sublist:is_equal([1, 1, 2],
				   [0, 1, 1, 1, 2, 1, 2]))},
     {"consecutive (is_unequal)",
      ?_assert(sublist:is_unequal([1, 1, 2],
				  [0, 1, 1, 1, 2, 1, 2]))},
     {"consecutive (is_sublist)",
      ?_assert(sublist:is_sublist([1, 1, 2],
				  [0, 1, 1, 1, 2, 1, 2]))},
     {"consecutive (not is_superlist)",
      ?_assertNot(sublist:is_superlist([1, 1, 2],
				       [0, 1, 1, 1, 2, 1, 2]))}].

'8_sublist_at_start_test_'() ->
    [{"sublist at start",
      ?_assertEqual(sublist,
		    sublist:relation([0, 1, 2], [0, 1, 2, 3, 4, 5]))},
     {"sublist at start (not is_equal)",
      ?_assertNot(sublist:is_equal([0, 1, 2],
				   [0, 1, 2, 3, 4, 5]))},
     {"sublist at start (is_unequal)",
      ?_assert(sublist:is_unequal([0, 1, 2],
				  [0, 1, 2, 3, 4, 5]))},
     {"sublist at start (is_sublist)",
      ?_assert(sublist:is_sublist([0, 1, 2],
				  [0, 1, 2, 3, 4, 5]))},
     {"sublist at start (not is_superlist)",
      ?_assertNot(sublist:is_superlist([0, 1, 2],
				       [0, 1, 2, 3, 4, 5]))}].

'9_sublist_in_middle_test_'() ->
    [{"sublist in middle",
      ?_assertEqual(sublist,
		    sublist:relation([2, 3, 4], [0, 1, 2, 3, 4, 5]))},
     {"sublist in middle (not is_equal)",
      ?_assertNot(sublist:is_equal([2, 3, 4],
				   [0, 1, 2, 3, 4, 5]))},
     {"sublist in middle (is_unequal)",
      ?_assert(sublist:is_unequal([2, 3, 4],
				  [0, 1, 2, 3, 4, 5]))},
     {"sublist in middle (is_sublist)",
      ?_assert(sublist:is_sublist([2, 3, 4],
				  [0, 1, 2, 3, 4, 5]))},
     {"sublist in middle (not is_superlist)",
      ?_assertNot(sublist:is_superlist([2, 3, 4],
				       [0, 1, 2, 3, 4, 5]))}].

'10_sublist_at_end_test_'() ->
    [{"sublist at end",
      ?_assertEqual(sublist,
		    sublist:relation([3, 4, 5], [0, 1, 2, 3, 4, 5]))},
     {"sublist at end (not is_equal)",
      ?_assertNot(sublist:is_equal([3, 4, 5],
				   [0, 1, 2, 3, 4, 5]))},
     {"sublist at end (is_unequal)",
      ?_assert(sublist:is_unequal([3, 4, 5],
				  [0, 1, 2, 3, 4, 5]))},
     {"sublist at end (is_sublist)",
      ?_assert(sublist:is_sublist([3, 4, 5],
				  [0, 1, 2, 3, 4, 5]))},
     {"sublist at end (not is_superlist)",
      ?_assertNot(sublist:is_superlist([3, 4, 5],
				       [0, 1, 2, 3, 4, 5]))}].

'11_at_start_of_superlist_test_'() ->
    [{"at start of superlist",
      ?_assertEqual(superlist,
		    sublist:relation([0, 1, 2, 3, 4, 5], [0, 1, 2]))},
     {"at start of superlist (not is_equal)",
      ?_assertNot(sublist:is_equal([0, 1, 2, 3, 4, 5],
				   [0, 1, 2]))},
     {"at start of superlist (is_unequal)",
      ?_assert(sublist:is_unequal([0, 1, 2, 3, 4, 5],
				  [0, 1, 2]))},
     {"at start of superlist (not is_sublist)",
      ?_assertNot(sublist:is_sublist([0, 1, 2, 3, 4, 5],
				     [0, 1, 2]))},
     {"at start of superlist (is_superlist)",
      ?_assert(sublist:is_superlist([0, 1, 2, 3, 4, 5],
				    [0, 1, 2]))}].

'12_in_middle_of_superlist_test_'() ->
    [{"in middle of superlist",
      ?_assertEqual(superlist,
		    sublist:relation([0, 1, 2, 3, 4, 5], [2, 3]))},
     {"in middle of superlist (not is_equal)",
      ?_assertNot(sublist:is_equal([0, 1, 2, 3, 4, 5],
				   [2, 3]))},
     {"in middle of superlist (is_unequal)",
      ?_assert(sublist:is_unequal([0, 1, 2, 3, 4, 5],
				  [2, 3]))},
     {"in middle of superlist (not is_sublist)",
      ?_assertNot(sublist:is_sublist([0, 1, 2, 3, 4, 5],
				     [2, 3]))},
     {"in middle of superlist (is_superlist)",
      ?_assert(sublist:is_superlist([0, 1, 2, 3, 4, 5],
				    [2, 3]))}].

'13_at_end_of_superlist_test_'() ->
    [{"at end of superlist",
      ?_assertEqual(superlist,
		    sublist:relation([0, 1, 2, 3, 4, 5], [3, 4, 5]))},
     {"at end of superlist (not is_equal)",
      ?_assertNot(sublist:is_equal([0, 1, 2, 3, 4, 5],
				   [3, 4, 5]))},
     {"at end of superlist (is_unequal)",
      ?_assert(sublist:is_unequal([0, 1, 2, 3, 4, 5],
				  [3, 4, 5]))},
     {"at end of superlist (not is_sublist)",
      ?_assertNot(sublist:is_sublist([0, 1, 2, 3, 4, 5],
				     [3, 4, 5]))},
     {"at end of superlist (is_superlist)",
      ?_assert(sublist:is_superlist([0, 1, 2, 3, 4, 5],
				    [3, 4, 5]))}].

'14_first_list_missing_element_from_second_list_test_'() ->
    [{"first list missing element from second "
      "list",
      ?_assertEqual(unequal,
		    sublist:relation([1, 3], [1, 2, 3]))},
     {"first list missing element from second "
      "list (not is_equal)",
      ?_assertNot(sublist:is_equal([1, 3], [1, 2, 3]))},
     {"first list missing element from second "
      "list (is_unequal)",
      ?_assert(sublist:is_unequal([1, 3], [1, 2, 3]))},
     {"first list missing element from second "
      "list (not is_sublist)",
      ?_assertNot(sublist:is_sublist([1, 3], [1, 2, 3]))},
     {"first list missing element from second "
      "list (not is_superlist)",
      ?_assertNot(sublist:is_superlist([1, 3], [1, 2, 3]))}].

'15_second_list_missing_element_from_first_list_test_'() ->
    [{"second list missing element from first "
      "list",
      ?_assertEqual(unequal,
		    sublist:relation([1, 2, 3], [1, 3]))},
     {"second list missing element from first "
      "list (not is_equal)",
      ?_assertNot(sublist:is_equal([1, 2, 3], [1, 3]))},
     {"second list missing element from first "
      "list (is_unequal)",
      ?_assert(sublist:is_unequal([1, 2, 3], [1, 3]))},
     {"second list missing element from first "
      "list (not is_sublist)",
      ?_assertNot(sublist:is_sublist([1, 2, 3], [1, 3]))},
     {"second list missing element from first "
      "list (not is_superlist)",
      ?_assertNot(sublist:is_superlist([1, 2, 3], [1, 3]))}].

'16_order_matters_to_a_list_test_'() ->
    [{"order matters to a list",
      ?_assertEqual(unequal,
		    sublist:relation([1, 2, 3], [3, 2, 1]))},
     {"order matters to a list (not is_equal)",
      ?_assertNot(sublist:is_equal([1, 2, 3], [3, 2, 1]))},
     {"order matters to a list (is_unequal)",
      ?_assert(sublist:is_unequal([1, 2, 3], [3, 2, 1]))},
     {"order matters to a list (not is_sublist)",
      ?_assertNot(sublist:is_sublist([1, 2, 3], [3, 2, 1]))},
     {"order matters to a list (not is_superlist)",
      ?_assertNot(sublist:is_superlist([1, 2, 3],
				       [3, 2, 1]))}].

'17_same_digits_but_different_numbers_test_'() ->
    [{"same digits but different numbers",
      ?_assertEqual(unequal,
		    sublist:relation([1, 0, 1], [10, 1]))},
     {"same digits but different numbers (not "
      "is_equal)",
      ?_assertNot(sublist:is_equal([1, 0, 1], [10, 1]))},
     {"same digits but different numbers (is_unequal)",
      ?_assert(sublist:is_unequal([1, 0, 1], [10, 1]))},
     {"same digits but different numbers (not "
      "is_sublist)",
      ?_assertNot(sublist:is_sublist([1, 0, 1], [10, 1]))},
     {"same digits but different numbers (not "
      "is_superlist)",
      ?_assertNot(sublist:is_superlist([1, 0, 1], [10, 1]))}].
