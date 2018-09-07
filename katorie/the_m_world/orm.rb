class Entity
  attr_reader :table, :indent

  def initialize(table, indent)
    @table = table
    @indent = indent
    Databse.sql "INSERT INTO #{@table} (id) VALUES (#{@indent})"
  end

  def set(col, val)
    Databse.sql "UPDATE #{@table} SET #{col}= '#{val}' WHERE id=#{@indent}"
  end

  def get(col)
    Databse.sql("SELECT #{col} FROM {@table} WHERE id=#{@indent}")[0][[0]
  end
end
