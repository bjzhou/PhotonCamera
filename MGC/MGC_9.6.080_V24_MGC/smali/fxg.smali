.class public Lfxg;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;

.field private final c:Lowu;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "fxg"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

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

    nop

    :goto_3
    sput-object v0, Lfxg;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Lowu;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p2, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-object p1, p0, Lfxg;->b:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lfxg;->c:Lowu;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lfxg;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v2, 0x3a

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    xor-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    const v0, 0x18

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

    :goto_7
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_3

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v1, Lfxg;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v2, p0, Lfxg;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lfxg;->c:Lowu;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p1, Lfxf;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lfxg;->b:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_2
    goto/32 :goto_4

    nop

    :goto_18
    check-cast v0, Landroid/app/Activity;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1a
    invoke-direct {p1, v0, v1}, Lfxf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1d

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v1, v2, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, p1}, Lowu;->execute(Ljava/lang/Runnable;)V

    :goto_1e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v1, Lscz;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string v2, "WARNING: Activity was artificially finished: %s"

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_22
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
