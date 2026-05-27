.class public final Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitProcessorInterface;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public a:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitProcessorInterface;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(JJZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitProcessorInterface;->a:J

    sget-object v0, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitProcessorInterface;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitProcessorInterface;->init()V

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitProcessorInterface;->create(JJZ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitProcessorInterface;->a:J

    return-void
.end method

.method private native create(JJZ)J
.end method

.method private native createWithLevels(JJIIZZ)J
.end method

.method private native delete(J)V
.end method

.method private static native init()V
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitProcessorInterface;->a:J

    invoke-direct {p0, v0, v1}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitProcessorInterface;->delete(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitProcessorInterface;->a:J

    return-void
.end method

.method public native processImpl(JJJJJJJZ)Z
.end method
