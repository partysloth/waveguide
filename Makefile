 
CXX = g++
CXXFLAGS = -O3 -Wall -Winline -Wshadow -Werror -std=c++11 -pedantic

INCLUDES =
LDFLAGS =
LIBS =

TARGET = waveguide
OBJS = $(TARGET).o

all: $(TARGET)

$(TARGET): $(OBJS) Makefile
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJS) $(LDFLAGS) $(LIBS)

$(TARGET).o: $(TARGET).cpp Makefile
	$(CXX) -c $(CXXFLAGS) $(INCLUDES) $(TARGET).cpp

clean:
	@$(RM) -rf *.o $(TARGET)
