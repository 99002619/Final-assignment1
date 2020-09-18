
PROJECT_NAME = Library management


BUILD = build

SRC = main.c\
src/management.c\


#TEST_SRC = src/management.c\
#test/unit-test.c

#TEST_OUTPUT = $(BUILD)/Test_$(PROJECT_NAME).out

# All include folders with header files
INC	= -Iinc

PROJECT_OUTPUT = $(BUILD)/$(PROJECT_NAME).out


$(PROJECT_NAME):Final-assignment1.out


.PHONY: run clean test  doc all

all: $(SRC) $(BUILD)
	gcc $(SRC) $(INC) -o $(PROJECT_OUTPUT).out


run:$(PROJECT_NAME)
	./$(PROJECT_OUTPUT).out




#test:$(BUILD)
	#gcc $(TEST_SRC) $(INC) -o $(TEST_OUTPUT) -lcunit
	#./$(TEST_OUTPUT)

`
clean:
	rm -rf $(BUILD) $(DOCUMENTATION_OUTPUT)


$(BUILD):
	mkdir build
