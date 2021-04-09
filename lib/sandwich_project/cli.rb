class CLI

    def start
        puts "Welcome to Dubway! Name's Sammich. May I please know your name?"
        input = user_input
        greet(input)
    end

    def user_input
        gets.strip #Use strip over chomp because if user enter an input with
                   #multiple empty spaces, it will only remove the empty spaces that's after the input.
    end

    def greet(name)
        puts "Hi #{name}! What sandwich would you like to order today?"
        menu
    end

    def menu
        puts "Enter 'A' to add sandwich \nEnter 'L' to list sandwiches \nEnter 'e' to Exit"
        selection = user_input
        if selection.downcase == "a"
            

        elsif selection == "l" || selection == "L"
            list_orders
            menu
        elsif selection.downcase == "e"
            exit_order
        else
            invalid
        end
    end

    def exit_order
        puts "Thank you"
    end

    def invalid
        puts "Invalid input... please try again"
        menu
    end

    def list_orders
        orders = ["order1", "order2", "order3"]
        orders.each.with_index(1) do |item, index|
            puts "#{index}. #{item}"
        end
        sandwich_select
    end

    def sandwich_select
        puts "Enter name of Sandwich to receive more information about it."
        order = user_input
        sandwich_detail(order)
    end

    def sandwich_detail(sandwich)
        puts "#{sandwich}"
    end
end