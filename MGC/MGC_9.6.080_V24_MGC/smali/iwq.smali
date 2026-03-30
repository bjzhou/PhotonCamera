.class public Liwq;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Liwn;

.field public final c:Liwk;

.field public final d:Landroid/os/Looper;

.field public final e:Liwp;

.field public f:Z

.field public final g:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v3, 0x3c1

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

    :goto_1
    const/4 v1, 0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x7

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v0, Lsdb;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    aput-object v0, v1, v3

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v0, "iwq"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    sput-object v0, Liwq;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public constructor <init>(Liwn;Liwk;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    :goto_1
    iput-object v1, p0, Liwq;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2
    new-instance p2, Liwp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Liwq;->c:Liwk;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-boolean v0, p0, Liwq;->f:Z

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Liwq;->d:Landroid/os/Looper;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p1, Landroid/os/HandlerThread;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p2, p0, p1}, Liwp;-><init>(Liwq;Landroid/os/Looper;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string p2, "VideoRecorderThread"

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    iput-object p1, p0, Liwq;->b:Liwn;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1a
    iput-object p2, p0, Liwq;->e:Liwp;

    nop

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

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    iget-object p0, p0, Liwq;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

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
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    nop

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
