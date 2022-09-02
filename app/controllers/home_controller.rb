class HomeController < ApplicationController

    def trash_em
        @trash_em = List.Where(:completed => true).destroy_all
        redirect_to lists_url, notice: "All completed tasks were successfully deleted." 
    end

    def trash_em_all
        @trash_em_all = List.All.destroy_all
        redirect_to lists_url, notice: "All tasks were successfully deleted." 
    end

end