// Request-owned executor for all AOT parallel nests in a RAISR band sequence.
#ifndef PHOTON_MGC_RAISR_EXECUTOR_H
#define PHOTON_MGC_RAISR_EXECUTOR_H

#include "mgc_raisr_timing.h"

#include <pthread.h>
#include <unistd.h>

#include <algorithm>
#include <atomic>
#include <condition_variable>
#include <cstdint>
#include <mutex>

namespace photon_raisr {

class RequestExecutor;
inline thread_local RequestExecutor* active_executor = nullptr;
inline thread_local bool executing_parallel_task = false;

class RequestExecutor {
public:
    using Task = int (*)(void*, int, uint8_t*);

    RequestExecutor() : previous_(active_executor) {
        active_executor = this;
    }

    ~RequestExecutor() {
        {
            std::lock_guard<std::mutex> lock(mutex_);
            stopping_ = true;
        }
        ready_.notify_all();
        ScopedTiming timer(&Timing::thread_join);
        for (int index = 0; index < worker_count_; ++index) {
            pthread_join(workers_[index], nullptr);
        }
        active_executor = previous_;
    }

    RequestExecutor(const RequestExecutor&) = delete;
    RequestExecutor& operator=(const RequestExecutor&) = delete;

    int Run(void* context, Task task, int minimum, int size, uint8_t* closure) {
        if (size <= 0) return 0;
        Job job{context, task, minimum, size, closure};
        // A nested nest must not publish over its parent's stack-owned job or
        // block waiting for workers that are themselves executing the parent.
        if (executing_parallel_task || size == 1) {
            Execute(job);
            return job.error.load(std::memory_order_relaxed);
        }
        Grow(std::min(size, capacity_) - 1);
        {
            std::lock_guard<std::mutex> lock(mutex_);
            job_ = &job;
            pending_ = worker_count_;
            ++generation_;
        }
        ready_.notify_all();
        Execute(job);
        {
            ScopedTiming timer(&Timing::thread_join);
            std::unique_lock<std::mutex> lock(mutex_);
            finished_.wait(lock, [&] { return pending_ == 0; });
            job_ = nullptr;
        }
        return job.error.load(std::memory_order_relaxed);
    }

private:
    struct Job {
        void* context;
        Task task;
        int minimum;
        int size;
        uint8_t* closure;
        std::atomic<int> next{0};
        std::atomic<int> error{0};
    };

    static int Capacity() {
#if defined(MGC_DENOISE_FORCE_SERIAL)
        return 1;
#else
        return int(std::clamp<long>(sysconf(_SC_NPROCESSORS_ONLN), 1, 16));
#endif
    }

    static void Execute(Job& job) {
        const bool previous = executing_parallel_task;
        executing_parallel_task = true;
        for (;;) {
            const int offset = job.next.fetch_add(1, std::memory_order_relaxed);
            if (offset >= job.size) break;
            const int status = job.task(job.context, job.minimum + offset, job.closure);
            if (status != 0) {
                int expected = 0;
                job.error.compare_exchange_strong(expected, status, std::memory_order_relaxed);
            }
        }
        executing_parallel_task = previous;
    }

    void Grow(int desired) {
        if (worker_count_ >= desired) return;
        ScopedTiming timer(&Timing::thread_create);
        // Publish the current generation before each thread starts; a new
        // worker joins only the next dispatch, never the preceding generation.
        std::lock_guard<std::mutex> lock(mutex_);
        while (worker_count_ < desired) {
            Worker& worker = worker_contexts_[worker_count_];
            worker.executor = this;
            worker.generation = generation_;
            if (pthread_create(&workers_[worker_count_], nullptr, WorkerMain, &worker) != 0) {
                break;
            }
            ++worker_count_;
            if (active_timing) ++active_timing->workers_created;
        }
    }

    struct Worker {
        RequestExecutor* executor = nullptr;
        uint64_t generation = 0;
    };

    static void* WorkerMain(void* opaque) {
        auto& worker = *static_cast<Worker*>(opaque);
        RequestExecutor& executor = *worker.executor;
        active_executor = &executor;
        std::unique_lock<std::mutex> lock(executor.mutex_);
        for (;;) {
            executor.ready_.wait(lock, [&] {
                return executor.stopping_ || worker.generation != executor.generation_;
            });
            if (executor.stopping_) break;
            worker.generation = executor.generation_;
            Job* job = executor.job_;
            lock.unlock();
            Execute(*job);
            lock.lock();
            if (--executor.pending_ == 0) executor.finished_.notify_one();
        }
        active_executor = nullptr;
        return nullptr;
    }

    RequestExecutor* previous_;
    const int capacity_ = Capacity();
    pthread_t workers_[15]{};
    Worker worker_contexts_[15]{};
    int worker_count_ = 0;
    std::mutex mutex_;
    std::condition_variable ready_;
    std::condition_variable finished_;
    Job* job_ = nullptr;
    uint64_t generation_ = 0;
    int pending_ = 0;
    bool stopping_ = false;
};

// callback(begin, end) processes disjoint rows. Eight-row tasks amortize queue
// traffic while retaining enough tasks for narrow image bands.
inline constexpr int kParallelRowBlockSize = 8;
template <typename Function>
void ParallelForRows(int rows, const Function& callback) {
    if (rows <= 0) return;
    if (!active_executor || executing_parallel_task) {
        callback(0, rows);
        return;
    }
    struct Closure {
        int rows;
        const Function* callback;
    } closure{rows, &callback};
    if (active_timing) ++active_timing->cpp_parallel_calls;
    active_executor->Run(nullptr, [](void*, int block, uint8_t* opaque) -> int {
        auto& work = *reinterpret_cast<Closure*>(opaque);
        const int begin = block * kParallelRowBlockSize;
        (*work.callback)(begin, std::min(begin + kParallelRowBlockSize, work.rows));
        return 0;
    }, 0, 1 + (rows - 1) / kParallelRowBlockSize, reinterpret_cast<uint8_t*>(&closure));
}

}  // namespace photon_raisr
#endif
