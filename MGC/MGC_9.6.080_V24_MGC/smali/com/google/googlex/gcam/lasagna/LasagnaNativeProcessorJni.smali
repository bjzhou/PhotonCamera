.class public Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p0, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;->init()V

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
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

.method public native create(IIILjava/lang/String;JLcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;Lcom/google/googlex/gcam/lasagna/LasagnaCallbacks;ZIJJIJJ)J
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

.method public native setOptions(JJIZZFIZZ)V
.end method
