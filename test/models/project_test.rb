require "test_helper"

class ProjectTest < ActiveSupport::TestCase

  # Attributes:
  #   - name
  #   - vision
  #   - opened
  #

  fixtures :projects

  test "name must not be null" do
    project = projects(:one)
    project.name = " "
    assert_not project.valid?
  end

  test "name must be unique" do
    project = projects(:one)
    project2 = projects(:two)
    project2.name = project.name
    assert_not project2.valid?
  end

  test "vision must be less than 256 characters" do
    project = projects(:one)
    project.vision = "a"*257
    assert_not project.valid?
  end

  test "opened must not be null" do
    project = projects(:one)
    project.opened = " "
    assert_not project.valid?
  end
end
