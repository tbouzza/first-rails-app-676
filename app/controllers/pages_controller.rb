class PagesController < ApplicationController
  def about
  end

  def contact
    @students = ['Octavian', 'Khamza', 'Sajid', 'Lanre']

    if !params["member"].empty?
      param_student = params["member"]
      @students = @students.select { |student| student == param_student }
    end
  end

  def home
  end
end
