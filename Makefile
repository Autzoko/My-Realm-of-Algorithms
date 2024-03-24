# 定义源文件目录
SRCDIR := src
# 定义目标文件目录
OBJDIR := obj

# 获取所有的源文件
SRCS := $(wildcard $(SRCDIR)/**/*.cpp)

# 从源文件列表中生成目标文件列表
OBJS := $(patsubst $(SRCDIR)/%.cpp,$(OBJDIR)/%,$(SRCS))

# 获取源代码中的所有子目录
SRCDIRS := $(sort $(dir $(SRCS)))
# 将源代码中的子目录映射到目标目录结构中
OBJDIRS := $(patsubst $(SRCDIR)/%,$(OBJDIR)/%,$(SRCDIRS))

# 设置编译器和编译选项
CXX := g++
CXXFLAGS := -Wall -Wextra -std=c++11

# 默认目标
all: $(OBJS)

# 生成目标文件所在的目录
$(OBJDIRS):
	@mkdir -p $@

# 编译规则
$(OBJDIR)/%: $(SRCDIR)/%.cpp | $(OBJDIRS)
	$(CXX) $(CXXFLAGS) -c $< -o $@

# 清理规则
clean:
	@rm -rf $(OBJDIR)

.PHONY: all clean
