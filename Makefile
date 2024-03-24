SRCDIR := src
OBJDIR := obj

SRCS := $(shell find $(SRCDIR) -name '*.cpp')
OBJS := $(patsubst $(SRCDIR)/%.cpp,$(OBJDIR)/%.o,$(SRCS))
OBJDIRS := $(sort $(dir $(OBJS)))

CXX := g++
CXXFLAGS := -Wall -Wextra -std=c++11

all: $(OBJS)

$(OBJDIRS):
	@mkdir -p $@

$(OBJDIR)/%.o: $(SRCDIR)/%.cpp | $(OBJDIRS)
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	@rm -rf $(OBJDIR)

.PHONY: all clean
