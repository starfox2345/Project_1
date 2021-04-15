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
        orders = ["Turkey & Cheese Sandwich","Bacon Egg & Cheese Sandwich", "Bologna and Cheese Sandwich", 
        "Steak & Cheese Sandwich", "Grilled Salmon Sandwich with Dill Sauce"]
        orders.each.with_index(1) do |item, index|
            puts "#{index}. #{item}"
        end
        sandwich_select
    end

    def sandwich_select
        puts "Enter name of Sandwich(or number)5 to receive more information about it."
        order = user_input
        if order == 1 || order == "Turkey & Cheese Sandwich"
            puts "2 slices leftover roast turkey
            A slice of Colby jack cheese
            1 large fried egg over easy
            2 slices of high fiber multigrain bread
            1 tablespoon mayonnaise"
        elsif order == 2 || order == "Bacon Egg & Cheese Sandwich"
            puts "2 ciabatta rolls
            4 teaspoons unsalted butter divided
            4 slices bacon
            4 large eggs
            Kosher salt and freshly ground pepper to taste
            ½ cup grated Havarti or other cheese
            Sriracha or other hot sauce to taste"
        elsif order == 3 || order == "Bologna and Cheese Sandwich"
            puts "soft white bread (Sunbeam was our kid bread of choice
            mayonnaise (we grew up with JFG. Now I’m a Duke’s girl)
            mustard, just a little. And optional for less adventurous eaters (plain yellow mustard. No fancy mustard)
            sliced bologna (we grew up with Oscar Meyer, so that’s my gold standard)
            sliced American cheese (not the individually wrapped kind)
            potato chips (regular Lays, not ridged or Pringles or anything like that. Straight up potato chips)"
        elsif order == 4 || order == "Steak & Cheese Sandwich"
            puts "2 lb beef
            2 green bell peppers
            1 large yellow onion
            1 lb mushrooms
            1 lb provolone cheese slices
            2 tbsp oil
            1 tbsp salt
            1 tsp ground pepper"
        elsif order == 5 || order == "Grilled Salmon Sandwich with Dill Sauce"
            puts "4 slices bacon
            1 (1 pound) fillet salmon, cut into 2 portions
            1 tablespoon olive oil
            ⅓ cup mayonnaise
            1 teaspoon dried dill weed
            1 teaspoon freshly grated lemon zest
            4 slices country-style bread, toasted
            4 slices tomato
            2 green leaf lettuce leaves"
        else
            puts "Which Sandwich did you want to know more about?"
            order
        end
        sandwich_detail(order)
    end

    def sandwich_detail(sandwich)
        puts "#{sandwich}"
    end
end