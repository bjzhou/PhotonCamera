.class public final Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitSegmenterInterface;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitSegmenterInterface;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitSegmenterInterface;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitSegmenterInterface;->init()V

    :cond_0
    return-void
.end method

.method private static native init()V
.end method


# virtual methods
.method public native dummyImageProducesReasonableMask()Z
.end method

.method public native getSegmenterHandle()J
.end method

.method public native initSegmenter(JJLjava/lang/String;Ljava/lang/String;ZZZZZ)Z
.end method

.method public native release()V
.end method
