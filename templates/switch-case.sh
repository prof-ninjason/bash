#!/bin/bash

function test-1 {
  echo "called function test(1)"
}

function test-2 {
  echo "called function test(2)"
}

echo "Would you like to?"

select ans in "Test 1" "Test 2" "Exit"; do
  case $ans in
    Test 1 ) test-1;;
    Test 2 ) test-2;;
    Exit   ) exit;;
  esac
done

