class List
  def initialize(name)
    @name = name
    @tasks = []
  end

  def name
    return @name
  end

  def tasks
    return @tasks
  end

  def add_task(task_name)
    task = Task.new(task_name)
    @tasks << task
  end

  def remove_task(task_name)
    @tasks.delete(task_name)  
  end

  def display_tasks
    puts "TASKS:"
    puts "______"
    puts
    @tasks.each do |task|
      print "#{task.name}    Status: #{task.display_completed}"
      puts
    end
  end

  def find_task(task_name)
    tasks.each do |task|
      if task_name == task.name
        return task
      end
    end
  end

end

class Task

  def initialize(name)
    @name = name
    @completed = false
  end

  def name
    return @name
  end

  def completed
    return @completed
  end

  def complete!
    @completed = true
  end

  def display_completed
    if @completed == true
      return "COMPLETE"
    else
      return "INCOMPLETE"
    end
  end

end



