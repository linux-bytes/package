#bt_test

INCLUDES += -I$(CONFIG_PREFIX)/usr/include

target := bt_test

src_cpp := bt_test.cpp
objs_cpp := $(src_cpp:.cpp=.o)
objs := $(objs_cpp)

.PHONY: all clean
all: $(target) bt_connect_disconnect_test bt_play_music_test

$(objs_cpp): %.o : %.cpp
	$(CXX) $(CFLAGS) $(INCLUDES) -c -o $@ $<

$(target): $(objs)
	@echo CONFIG_PREFIX
	@echo '$(CONFIG_PREFIX)'
	@echo Linking application $@ with libbtapp.so.
	$(CXX) $(LDFLAGS) -o $@ $^ -L$(CONFIG_PREFIX)/usr/lib -lbtapp -lbsa

bt_connect_disconnect_test: bt_connect_disconnect_test.cpp
	@echo Compiling $@
	$(CXX) $(LDFLAGS) -o $@ $^ $(CFLAGS) $(INCLUDES) -L$(CONFIG_PREFIX)/usr/lib -lbtapp -lbsa

bt_play_music_test: bt_play_music_test.cpp
	@echo Compiling $@
	$(CXX) $(LDFLAGS) -o $@ $^ $(CFLAGS) $(INCLUDES) -L$(CONFIG_PREFIX)/usr/lib -lbtapp -lbsa

clean:
	@echo Cleaning up : $(objs) $(target)
	@rm -rf $(objs) $(target) bt_connect_disconnect_test bt_play_music_test
	@echo Finished cleaning up
