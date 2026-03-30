.class public Lrrp;
.super Ljava/lang/Thread;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Lrrn;

.field public final c:Lrro;

.field public final d:Lrro;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public f:Lj$/time/Instant;

.field public g:Lj$/time/Instant;

.field public final h:Ljava/util/concurrent/atomic/AtomicReference;

.field public final i:I

.field public final j:Lrrl;

.field public final k:Lrpz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    sput-object v0, Lrrp;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "rrp"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lrrn;Lrpz;Lrrl;)V
    .locals 2

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, p1, Lrrn;->c:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lrro;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p1, Lj$/time/Instant;->EPOCH:Lj$/time/Instant;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lrrp;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Lrrp;->c:Lrro;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_b
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, p1}, Lrro;-><init>(Lj$/time/Duration;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lrro;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Lrrp;->g:Lj$/time/Instant;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_11
    iput-object p1, p0, Lrrp;->b:Lrrn;

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

    :goto_12
    iput v0, p0, Lrrp;->i:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Lrrp;->f:Lj$/time/Instant;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x6

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_15
    iput-object p3, p0, Lrrp;->j:Lrrl;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v0, Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0, v1}, Lrro;-><init>(Lj$/time/Duration;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p1, p1, Lrrn;->c:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object p1, Lj$/time/Instant;->EPOCH:Lj$/time/Instant;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object v0, p0, Lrrp;->h:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1f
    iput-object p2, p0, Lrrp;->k:Lrpz;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-object v0, p0, Lrrp;->d:Lrro;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v0, 0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 4

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    goto/32 :goto_9

    nop

    nop

    :goto_1
    iget-object v1, p0, Lrrp;->j:Lrrl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    iget-object p0, v1, Lrrl;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    iget v0, v0, Lrrn;->a:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    invoke-static {v2, v3}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p0, v1, Lrrl;->d:Lrrp;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_0

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_c
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    iput-object v0, v1, Lrrl;->a:Lj$/time/Duration;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    int-to-long v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_12
    div-long/2addr v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lrrp;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    const v1, 0x2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_15
    const-wide/32 v2, 0x3b9aca00

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_18
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lrrp;->b:Lrrn;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x9

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop
.end method
