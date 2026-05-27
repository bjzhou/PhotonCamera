.class public Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;->init()V

    :cond_0
    return-void
.end method

.method private static native init()V
.end method


# virtual methods
.method public native abortShot(JI)V
.end method

.method public native addViewfinderFrame(JJJLjava/lang/Runnable;)Z
.end method

.method public native analyzeShot(JII)V
.end method

.method public native beginShot(JI)V
.end method

.method public native create(IIILjava/lang/String;JLcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;Lcom/google/googlex/gcam/lasagna/LasagnaCallbacks;Z[B[B[B)J
.end method

.method public native delete(J)V
.end method

.method public native endShot(JI)V
.end method

.method public native printDiagnosticsToLog(J)V
.end method

.method public native processPslFrame(JIJJJLjava/lang/Runnable;)V
.end method

.method public native processZslBurst(JIJJ)V
.end method

.method public native setOptions(JJIZZFIZZZ)V
.end method
