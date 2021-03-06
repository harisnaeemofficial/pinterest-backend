defmodule PinterestBackend.UsersFollowerTest do
  use PinterestBackend.ModelCase

  alias PinterestBackend.UsersFollower

  @valid_attrs %{user_id: 1, follower_id: 1}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = UsersFollower.changeset(%UsersFollower{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = UsersFollower.changeset(%UsersFollower{}, @invalid_attrs)
    refute changeset.valid?
  end
end
