#include <asm/ptrace.h>
#include <dirent.h>
#include <errno.h>
#include <inttypes.h>
#include <linux/elf.h>
#include <signal.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ptrace.h>
#include <sys/uio.h>
#include <sys/wait.h>
#include <unistd.h>

#include <vector>

namespace {

constexpr uintptr_t kUnblockerRaw10Offset = 0x35dd50c;
constexpr uint32_t kArm64Breakpoint = 0xd4200000;

uintptr_t find_library_base(pid_t pid) {
    char path[64];
    snprintf(path, sizeof(path), "/proc/%d/maps", pid);
    FILE *maps = fopen(path, "r");
    if (maps == nullptr) {
        return 0;
    }
    uintptr_t base = 0;
    char line[1024];
    while (fgets(line, sizeof(line), maps) != nullptr) {
        if (strstr(line, "libgcastartup.so") == nullptr) {
            continue;
        }
        uintptr_t start = 0;
        uintptr_t file_offset = 1;
        if (sscanf(line, "%" SCNxPTR "-%*x %*4s %" SCNxPTR, &start, &file_offset) == 2 &&
            file_offset == 0) {
            base = start;
            break;
        }
    }
    fclose(maps);
    return base;
}

std::vector<pid_t> enumerate_threads(pid_t pid) {
    char path[64];
    snprintf(path, sizeof(path), "/proc/%d/task", pid);
    DIR *tasks = opendir(path);
    std::vector<pid_t> result;
    if (tasks == nullptr) {
        return result;
    }
    while (dirent *entry = readdir(tasks)) {
        char *end = nullptr;
        const long tid = strtol(entry->d_name, &end, 10);
        if (end != entry->d_name && *end == '\0' && tid > 0) {
            result.push_back(static_cast<pid_t>(tid));
        }
    }
    closedir(tasks);
    return result;
}

bool contains_tid(const std::vector<pid_t> &threads, pid_t tid) {
    for (pid_t existing : threads) {
        if (existing == tid) {
            return true;
        }
    }
    return false;
}

bool read_general_registers(pid_t tid, user_pt_regs *registers) {
    iovec view{registers, sizeof(*registers)};
    return ptrace(PTRACE_GETREGSET, tid, reinterpret_cast<void *>(NT_PRSTATUS), &view) == 0;
}

bool write_general_registers(pid_t tid, user_pt_regs *registers) {
    iovec view{registers, sizeof(*registers)};
    return ptrace(PTRACE_SETREGSET, tid, reinterpret_cast<void *>(NT_PRSTATUS), &view) == 0;
}

bool read_fp_registers(pid_t tid, user_fpsimd_state *registers) {
    iovec view{registers, sizeof(*registers)};
    return ptrace(PTRACE_GETREGSET, tid, reinterpret_cast<void *>(NT_PRFPREG), &view) == 0;
}

float scalar_float(const user_fpsimd_state &registers, int index) {
    const uint32_t bits = static_cast<uint32_t>(registers.vregs[index]);
    float value = 0.0f;
    memcpy(&value, &bits, sizeof(value));
    return value;
}

bool read_remote(pid_t tid, uintptr_t address, void *destination, size_t size) {
    uint8_t *output = static_cast<uint8_t *>(destination);
    for (size_t offset = 0; offset < size; offset += sizeof(long)) {
        errno = 0;
        const long value = ptrace(
            PTRACE_PEEKDATA,
            tid,
            reinterpret_cast<void *>(address + offset),
            nullptr);
        if (value == -1 && errno != 0) {
            return false;
        }
        const size_t copy_size =
            size - offset < sizeof(value) ? size - offset : sizeof(value);
        memcpy(output + offset, &value, copy_size);
    }
    return true;
}

struct RemoteHalideBuffer {
    uint64_t device;
    uint64_t device_interface;
    uint64_t host;
    uint64_t flags;
    uint8_t type_code;
    uint8_t type_bits;
    uint16_t type_lanes;
    int32_t dimensions;
    uint64_t dimension_pointer;
    uint64_t padding;
};

struct RemoteHalideDimension {
    int32_t min;
    int32_t extent;
    int32_t stride;
    uint32_t flags;
};

void print_remote_buffer(pid_t tid, const char *label, uintptr_t address) {
    RemoteHalideBuffer buffer{};
    if (!read_remote(tid, address, &buffer, sizeof(buffer))) {
        printf("%s=%#" PRIxPTR " unreadable errno=%d\n", label, address, errno);
        return;
    }
    printf(
        "%s=%#" PRIxPTR " host=%#" PRIx64 " type=%u/%u/%u dimensions=%d\n",
        label,
        address,
        buffer.host,
        buffer.type_code,
        buffer.type_bits,
        buffer.type_lanes,
        buffer.dimensions);
    const int dimension_count =
        buffer.dimensions > 0 && buffer.dimensions <= 4 ? buffer.dimensions : 0;
    for (int index = 0; index < dimension_count; ++index) {
        RemoteHalideDimension dimension{};
        const uintptr_t dimension_address =
            static_cast<uintptr_t>(buffer.dimension_pointer) +
            static_cast<uintptr_t>(index) * sizeof(dimension);
        if (!read_remote(tid, dimension_address, &dimension, sizeof(dimension))) {
            printf("  dim%d unreadable errno=%d\n", index, errno);
            continue;
        }
        printf(
            "  dim%d min=%d extent=%d stride=%d flags=%u\n",
            index,
            dimension.min,
            dimension.extent,
            dimension.stride,
            dimension.flags);
    }
}

bool wait_for_stop(pid_t tid) {
    int status = 0;
    while (waitpid(tid, &status, __WALL) < 0) {
        if (errno != EINTR) {
            return false;
        }
    }
    return WIFSTOPPED(status);
}

void detach_threads(const std::vector<pid_t> &threads, pid_t already_stopped) {
    for (pid_t tid : threads) {
        if (tid == already_stopped) {
            continue;
        }
        if (ptrace(PTRACE_INTERRUPT, tid, nullptr, nullptr) == 0) {
            wait_for_stop(tid);
        }
    }
    for (pid_t tid : threads) {
        ptrace(PTRACE_DETACH, tid, nullptr, nullptr);
    }
}

}  // namespace

int main(int argc, char **argv) {
    if (argc != 2 && argc != 3) {
        fprintf(stderr, "usage: %s PID [AOT_OFFSET]\n", argv[0]);
        return 2;
    }
    const pid_t pid = static_cast<pid_t>(strtol(argv[1], nullptr, 10));
    const uintptr_t aot_offset = argc == 3
        ? static_cast<uintptr_t>(strtoull(argv[2], nullptr, 0))
        : kUnblockerRaw10Offset;
    const uintptr_t base = find_library_base(pid);
    if (base == 0) {
        fprintf(stderr, "libgcastartup.so base not found for pid=%d\n", pid);
        return 3;
    }
    const uintptr_t target = base + aot_offset;
    const uintptr_t aligned_target = target & ~static_cast<uintptr_t>(7);

    std::vector<pid_t> threads = enumerate_threads(pid);
    std::vector<pid_t> attached;
    for (pid_t tid : threads) {
        if (ptrace(PTRACE_SEIZE, tid, nullptr, PTRACE_O_TRACECLONE) == 0) {
            attached.push_back(tid);
        }
    }
    if (attached.empty()) {
        fprintf(stderr, "could not seize any threads for pid=%d errno=%d\n", pid, errno);
        return 4;
    }
    for (pid_t tid : attached) {
        ptrace(PTRACE_INTERRUPT, tid, nullptr, nullptr);
    }
    for (pid_t tid : attached) {
        if (!wait_for_stop(tid)) {
            fprintf(stderr, "failed to stop tid=%d\n", tid);
            detach_threads(attached, -1);
            return 5;
        }
    }

    errno = 0;
    const long original_word = ptrace(
        PTRACE_PEEKTEXT,
        pid,
        reinterpret_cast<void *>(aligned_target),
        nullptr);
    if (original_word == -1 && errno != 0) {
        fprintf(stderr, "PTRACE_PEEKTEXT failed errno=%d\n", errno);
        detach_threads(attached, -1);
        return 6;
    }
    uint64_t patched_word = static_cast<uint64_t>(original_word);
    if ((target & 4) == 0) {
        patched_word =
            (patched_word & 0xffffffff00000000ULL) | kArm64Breakpoint;
    } else {
        patched_word =
            (patched_word & 0x00000000ffffffffULL) |
            (static_cast<uint64_t>(kArm64Breakpoint) << 32);
    }
    if (ptrace(
            PTRACE_POKETEXT,
            pid,
            reinterpret_cast<void *>(aligned_target),
            reinterpret_cast<void *>(patched_word)) != 0) {
        fprintf(stderr, "PTRACE_POKETEXT failed errno=%d\n", errno);
        detach_threads(attached, -1);
        return 7;
    }

    fprintf(
        stderr,
        "armed Unblocker AOT pid=%d base=%#" PRIxPTR
        " offset=%#" PRIxPTR " target=%#" PRIxPTR "\n",
        pid,
        base,
        aot_offset,
        target);
    fflush(stderr);
    for (pid_t tid : attached) {
        ptrace(PTRACE_CONT, tid, nullptr, nullptr);
    }

    while (true) {
        int status = 0;
        const pid_t tid = waitpid(-1, &status, __WALL);
        if (tid < 0) {
            if (errno == EINTR) {
                continue;
            }
            fprintf(stderr, "waitpid failed errno=%d\n", errno);
            break;
        }
        if (!WIFSTOPPED(status)) {
            continue;
        }
        const unsigned int event = static_cast<unsigned int>(status) >> 16;
        if (event == PTRACE_EVENT_CLONE) {
            unsigned long new_tid = 0;
            ptrace(PTRACE_GETEVENTMSG, tid, nullptr, &new_tid);
            if (new_tid > 0 && !contains_tid(attached, static_cast<pid_t>(new_tid))) {
                attached.push_back(static_cast<pid_t>(new_tid));
            }
            ptrace(PTRACE_CONT, tid, nullptr, nullptr);
            continue;
        }

        user_pt_regs general{};
        if (!read_general_registers(tid, &general) ||
            (general.pc != target && general.pc != target + 4)) {
            const int signal = WSTOPSIG(status) == SIGTRAP ? 0 : WSTOPSIG(status);
            ptrace(PTRACE_CONT, tid, nullptr, signal);
            continue;
        }

        ptrace(
            PTRACE_POKETEXT,
            tid,
            reinterpret_cast<void *>(aligned_target),
            reinterpret_cast<void *>(static_cast<uint64_t>(original_word)));
        general.pc = target;
        write_general_registers(tid, &general);

        user_fpsimd_state floating_point{};
        if (!read_fp_registers(tid, &floating_point)) {
            fprintf(stderr, "PTRACE_GETREGSET NT_PRFPREG failed errno=%d\n", errno);
        } else {
            printf("hit tid=%d pc=%#" PRIx64 " sp=%#" PRIx64 "\n",
                   tid,
                   static_cast<uint64_t>(general.pc),
                   static_cast<uint64_t>(general.sp));
            for (int index = 0; index < 8; ++index) {
                printf(
                    "x%d=%#" PRIx64 "\n",
                    index,
                    static_cast<uint64_t>(general.regs[index]));
            }
            for (int index = 0; index < 8; ++index) {
                printf("s%d=%.9g\n", index, scalar_float(floating_point, index));
            }
            for (int index = 1; index < 8; ++index) {
                char label[16];
                snprintf(label, sizeof(label), "buffer_x%d", index);
                print_remote_buffer(
                    tid,
                    label,
                    static_cast<uintptr_t>(general.regs[index]));
            }
            uint64_t stack_arguments[8] = {};
            if (read_remote(
                    tid,
                    static_cast<uintptr_t>(general.sp),
                    stack_arguments,
                    sizeof(stack_arguments))) {
                for (int index = 0; index < 8; ++index) {
                    printf(
                        "stack%d=%#" PRIx64 "\n",
                        index,
                        stack_arguments[index]);
                    char label[20];
                    snprintf(label, sizeof(label), "buffer_stack%d", index);
                    print_remote_buffer(
                        tid,
                        label,
                        static_cast<uintptr_t>(stack_arguments[index]));
                }
            }
            fflush(stdout);
        }
        detach_threads(attached, tid);
        return 0;
    }

    ptrace(
        PTRACE_POKETEXT,
        pid,
        reinterpret_cast<void *>(aligned_target),
        reinterpret_cast<void *>(static_cast<uint64_t>(original_word)));
    detach_threads(attached, -1);
    return 8;
}
