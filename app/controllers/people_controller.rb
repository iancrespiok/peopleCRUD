class PeopleController < ApplicationController
    before_action :find_person, except: [:new,:create,:index]


    def show
    end
  
    def new
      @person = Person.new      
    end

    def create
      @person = Person.create(name: params[:person][:name], 
      surname: params[:person][:surname], 
      birthday: params[:person][:birthday], 
      document: params[:person][:document])
      redirect_to @person
    end

    def edit
    end

    def update
      @person.update(name: params[:person][:name],
      surname: params[:person][:surname],
      birthday: params[:person][:birthday],
      document: params[:person][:document])
      redirect_to @person
    end

    def destroy
      @person.destroy
      redirect_to people_url
    end

    def index
      @people = Person.all.sort_by{|person| person.birthday.month}
      @edades = @people.map{|person| person.edad}
      @edadPromedio = @edades.sum() / @edades.size
    end

    def find_person
      @person = Person.find(params[:id])
    end
end
