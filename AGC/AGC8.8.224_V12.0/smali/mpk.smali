.class public final Lmpk;
.super Ljava/lang/Thread;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lmph;

.field public final c:Lmpi;

.field public final d:Lmpi;

.field public final e:Lmpj;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public g:Lj$/time/Instant;

.field public h:Lj$/time/Instant;

.field public final i:Ljava/util/concurrent/atomic/AtomicReference;

.field public final j:I

.field public final k:Llhz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/babelfish/device/avenh/l2l/videoresampler/StoredVideoFrameProcessor"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lmpk;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lmph;Llhz;Lmpj;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p4, p0, Lmpk;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p4, p0, Lmpk;->i:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p4}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    const/4 p4, 0x1

    iput p4, p0, Lmpk;->j:I

    iput-object p1, p0, Lmpk;->b:Lmph;

    new-instance p4, Lmpi;

    iget-object p5, p1, Lmph;->c:Lj$/time/Duration;

    invoke-direct {p4, p5}, Lmpi;-><init>(Lj$/time/Duration;)V

    iput-object p4, p0, Lmpk;->c:Lmpi;

    new-instance p4, Lmpi;

    iget-object p1, p1, Lmph;->c:Lj$/time/Duration;

    invoke-direct {p4, p1}, Lmpi;-><init>(Lj$/time/Duration;)V

    iput-object p4, p0, Lmpk;->d:Lmpi;

    iput-object p2, p0, Lmpk;->k:Llhz;

    iput-object p3, p0, Lmpk;->e:Lmpj;

    sget-object p1, Lj$/time/Instant;->EPOCH:Lj$/time/Instant;

    iput-object p1, p0, Lmpk;->g:Lj$/time/Instant;

    sget-object p1, Lj$/time/Instant;->EPOCH:Lj$/time/Instant;

    iput-object p1, p0, Lmpk;->h:Lj$/time/Instant;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lmpk;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lmpk;->e:Lmpj;

    iget-object v1, p0, Lmpk;->b:Lmph;

    iget v1, v1, Lmph;->a:I

    int-to-long v1, v1

    const-wide/32 v3, 0x3b9aca00

    div-long/2addr v3, v1

    invoke-static {v3, v4}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lmpf;

    iput-object p0, v2, Lmpf;->d:Lmpk;

    iput-object v1, v2, Lmpf;->a:Lj$/time/Duration;

    iget-object v1, v2, Lmpf;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
