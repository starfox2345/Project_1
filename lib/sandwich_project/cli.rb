class CLI

    def start
        puts "Welcome to Dubway! Name's Sammich. May I please have your name?"
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
        puts "Enter 'A' to add sandwich\nEnter 'C' to view Cart \nEnter 'L' to list sandwiches \nEnter 'e' to Exit"
        selection = user_input
        if selection.downcase == "a"
            add_Order
        elsif selection == "l" || selection == "L"
            list_orders
        elsif selection.upcase == "C"
            cart
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
        orders = ["Turkey & Cheese Sandwich","Bacon Egg & Cheese Sandwich", "Bologna and Cheese Sandwich", "Steak & Cheese Sandwich", "Grilled Salmon Sandwich with Dill Sauce"]
        orders.each.with_index(1) do |item, index|
            puts "#{index}. #{item}"
        end
        puts "Enter 'A' to Add sandwiches \nEnter 'D' to know more about them"
        selection = gets.strip
        case selection.upcase
        when 'A'
            add_Order
        when 'D'
            sandwich_select
        end
    end

    @@cart = []

    def cart
        puts @@cart
        puts "'M' - Menu\n'E' - Exit\n'A' - Add more Sandwiches"
        input = user_input
        case input.upcase
        when 'M'
            menu
        when 'E'
            exit_order
        when 'A'
            add_Order
        end
    end

    def add_Order
        orders = ["Turkey & Cheese Sandwich","Bacon Egg & Cheese Sandwich", "Bologna and Cheese Sandwich", "Steak & Cheese Sandwich", "Grilled Salmon Sandwich with Dill Sauce"]
        orders.each.with_index(1) do |item, index|
            puts "#{index}. #{item}"
        end
        puts "Please enter the number or the name of the sandwich that you would like to order."
        order_name = gets.strip
        if order_name == "1" || order_name.downcase == "Turkey & Cheese Sandwich".downcase
            @@cart << "Turkey & Cheese Sandwich"
            puts "Would like to order more or checkout?\nEnter 'A' to order more\nEnter 'S' to Add Sauce\nEnter 'M' to go back to Menu\nEnter 'E' to exit"
            input = user_input
            if input.upcase == 'A'
                add_Order
            elsif input.upcase == 'S'
                sauce
            elsif input.upcase == 'M'
                menu
            elsif input.upcase == 'E'
                exit_order
            else
                puts "Wrong input. Please try again."
                add_Order
            end

        elsif order_name == "2" || order_name.downcase == "Bacon Egg & Cheese Sandwich".downcase
            @@cart << "Bacon Egg & Cheese Sandwich"
            puts "Would like to order more or checkout?\nEnter 'A' to order more\nEnter 'S' to Add Sauce\nEnter 'M' to go back to Menu\nEnter 'E' to exit"
            input = user_input
            if input.upcase == 'A'
                add_Order
            elsif input.upcase == 'S'
                sauce
            elsif input.upcase == 'M'
                menu
            elsif input.upcase == 'E'
                exit_order
            else
                puts "Wrong input. Please try again."
                add_Order
            end

        elsif order_name == "3" || order_name.downcase == "Bologna and Cheese Sandwich".downcase
            @@cart << "Bologna and Cheese Sandwich"
            puts "Would like to order more or checkout?\nEnter 'A' to order more\nEnter 'S' to Add Sauce\nEnter 'M' to go back to Menu\nEnter 'E' to exit"
            input = user_input
            if input.upcase == 'A'
                add_Order
            elsif input.upcase == 'S'
                sauce
            elsif input.upcase == 'M'
                menu
            elsif input.upcase == 'E'
                exit_order
            else
                puts "Wrong input. Please try again."
                add_Order
            end

        elsif order_name == "4" || order_name.downcase == "Steak & Cheese Sandwich".downcase
            @@cart << "Steak & Cheese Sandwich"
            puts "Would like to order more or checkout?\nEnter 'A' to order more\nEnter 'S' to Add Sauce\nEnter 'M' to go back to Menu\nEnter 'E' to exit"
            input = user_input
            if input.upcase == 'A'
                add_Order
            elsif input.upcase == 'S'
                sauce
            elsif input.upcase == 'M'
                menu
            elsif input.upcase == 'E'
                exit_order
            else
                puts "Wrong input. Please try again."
                add_Order
            end

        elsif order_name == "5" || order_name.downcase == "Grilled Salmon Sandwich with Dill Sauce".downcase
            @@cart << "Grilled Salmon Sandwich with Dill Sauce"
            puts "Would like to order more or checkout?\nEnter 'A' to order more\nEnter 'S' to Add Sauce\nEnter 'M' to go back to Menu\nEnter 'E' to exit"
            input = user_input
            if input.upcase == 'A'
                add_Order
            elsif input.upcase == 'S'
                sauce
            elsif input.upcase == 'M'
                menu
            elsif input.upcase == 'E'
                exit_order
            else
                puts "Wrong input. Please try again."
                add_Order
            end
        else
            puts "Unable to read command. Please try again."
            add_Order
        end
    end

    # def sauce
    #     puts "Would you like to Add Sauce to your Sandwich?"
    #     puts "Enter 'Y' to Add Sauce\nEnter 'N' to leave it as is"
    #     input = user_input
    #     if input.upcase == 'Y'
    #         add_sauce
    #     elsif input.upcase == 'N'
    #         add_Order
    #     else
    #         "I didn't catch that."
    #             sauce
    #     end
    # end

    def sauce
        ketchup_mustard = ["Ketchup", "Mustard"]
        ketchup_mustard.each_with_index(1) do |sauce_sauce, index|
            puts "#{index}. #{sauce_sauce}"
        end
        puts "Would you like to add Ketchup or Mustard?\nEnter '1' to add Ketchup or '2' to add Mustard\nEnter 'M' to go back to the Menu"
        input = user_input
        case input
        when '1'
            @@cart << "with Ketchup"
        when '2'
            @@cart << "with Mustard"
        when 'M' || 'm'
            menu
        end
        
    end

    def sandwich_select
        puts "Enter name of Sandwich(or number) to receive more information about it."
        order = user_input
        if order == "1" || order.downcase == "Turkey & Cheese Sandwich".downcase
            puts "Turkey & Cheese Sandwich: 2 slices leftover roast turkey, A slice of Colby jack cheese, 1 large fried egg over easy, 2 slices of high fiber multigrain bread, 1 tablespoon mayonnaise"
        elsif order == "2" || order.downcase == "Bacon Egg & Cheese Sandwich".downcase
            puts "Bacon Egg & Cheese Sandwich: 2 ciabatta rolls, 4 teaspoons unsalted butter divided, 4 slices bacon, 4 large eggs, Kosher salt and freshly ground pepper to taste, ½ cup grated Havarti or other cheese, Sriracha or other hot sauce to taste"
        elsif order == "3" || order.downcase == "Bologna and Cheese Sandwich".downcase
            puts "Bologna and Cheese Sandwich: soft white bread (Sunbeam was our kid bread of choice, mayonnaise (we grew up with JFG. Now I’m a Duke’s girl), mustard, just a little. And optional for less adventurous eaters (plain yellow mustard. No fancy mustard), sliced bologna (we grew up with Oscar Meyer, so that’s my gold standard), sliced American cheese (not the individually wrapped kind), potato chips (regular Lays, not ridged or Pringles or anything like that. Straight up potato chips)"
        elsif order == "4" || order.downcase == "Steak & Cheese Sandwich".downcase
            puts "Steak & Cheese Sandwich: 2 lb beef, 2 green bell peppers, 1 large yellow onion, 1 lb mushrooms, 1 lb provolone cheese slices, 2 tbsp oil, 1 tbsp salt, 1 tsp ground pepper"
        elsif order == "5" || order.downcase == "Grilled Salmon Sandwich with Dill Sauce".downcase
            puts "Grilled Salmon Sandwich with Dill Sauce: 4 slices bacon, 1 (1 pound) fillet salmon, cut into 2 portions, 1 tablespoon olive oil, ⅓ cup mayonnaise, 1 teaspoon dried dill weed, 1 teaspoon freshly grated lemon zest, 4 slices country-style bread, toasted, 4 slices tomato, 2 green leaf lettuce leaves"
        else
            puts "Which Sandwich did you want to know more about?"
            sandwich_select
        end
        puts "If you want to know more about the Sandwiches, Enter 'D'
        If you want to go back to the Menu, Enter 'M'
        or Exit, Enter 'E'"
        choice = gets.strip
        case choice.upcase
        when 'D'
            sandwich_select
        when 'M'
            menu
        when 'E'
            exit_order
        end
    end

    # def sandwich_detail(sandwich)
    #     puts "#{sandwich}"
    # end
end