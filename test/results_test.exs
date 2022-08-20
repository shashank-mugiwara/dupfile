defmodule Dupfile.ResultsTest do
  use ExUnit.Case
  alias Dupfile.Results

  test "Test whether we can add entries to the results" do
    Results.add_hash_for("path1", 253_756_234)
    Results.add_hash_for("path2", 345_123_412)
    Results.add_hash_for("path3", 253_756_234)

    duplicates = Results.find_duplicates()
    assert length(duplicates) == 2
  end
end
