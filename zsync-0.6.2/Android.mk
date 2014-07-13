LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	base64.c \
	getaddrinfo.c \
	progress.c \
	zlib/zutil.c \
	zlib/compress.c \
	zlib/deflate.c \
	zlib/trees.c \
	zlib/crc32.c \
	zlib/inflate.c \
	zlib/inftrees.c \
	zlib/adler32.c \
	client.c \
	url.c \
	libzsync/zsync.c \
	libzsync/zmap.c \
	libzsync/sha1.c \
	http.c \
	makegz.c \
	librcksum/rsum.c \
	librcksum/state.c \
	librcksum/range.c \
	librcksum/md4.c \
	librcksum/hash.c

LOCAL_CFLAGS := -DHAVE_CONFIG_H

LOCAL_MODULE := zsync
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)

include $(BUILD_EXECUTABLE)