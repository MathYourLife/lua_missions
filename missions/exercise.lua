--[[
  EXERCISE: Monkey-patching strings

  With all you have learnt now, you should be able to do this exercise

  Add the necessary code below so that the test at the end passes

]]

-- INSERT YOUR CODE HERE

-- not a test, but a helper local function
string.starts_with = function(self, str)
  if string.sub(self, 1, #str) == str
  then
    return true
  end
  return false
end

string.ends_with = function(self, str)
  if string.sub(self, #self - #str + 1) == str
  then
    return true
  end
  return false
end

-- END OF CODE INSERT

function test_starts_with()
  local str = "Lua is awesome"

  assert_true(str:starts_with("L"))
  assert_true(str:starts_with("Lua"))
  assert_true(str:starts_with("Lua is"))

  -- Need negative tests
  assert_equal(false, str:starts_with("u"))
  assert_equal(false, str:starts_with("ua is"))
end

function test_ends_with()
  local str = "Lua is awesome"

  assert_true(str:ends_with("e"))
  assert_true(str:ends_with("some"))
  assert_true(str:ends_with("awesome"))

  -- Need negative tests
  assert_equal(false, str:starts_with("u"))
  assert_equal(false, str:starts_with("ua is"))
end

-- hint: string == getmetatable("").__index








