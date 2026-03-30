.class Lmpi;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Landroid/content/Context;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Lows;

.field public final f:Lowu;

.field public final g:Lnep;

.field public final h:Lmlw;

.field public final i:Lmmx;

.field public final j:Lmpw;

.field protected final k:Landroid/content/BroadcastReceiver;

.field protected final l:Ljava/lang/Object;

.field public m:Ldr;

.field n:Lryb;

.field public final o:Ljhy;

.field public final p:Lmly;

.field public q:Loiq;

.field public final r:Lfdo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lmpi;->a:Lsdb;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "mpi"

    nop

    nop

    goto/32 :goto_3

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

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljhy;Ljava/util/concurrent/Executor;Lows;Lowu;Lnep;Lmlw;Lfdo;Lmly;Lmmx;Lmpw;)V
    .locals 2

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_d

    nop

    nop

    :goto_3
    iput-object p1, p0, Lmpi;->c:Landroid/content/Context;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lmpi;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v0, Lsbh;->a:Lryb;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    iput-object v0, p0, Lmpi;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Lmpi;->o:Ljhy;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_c
    iput-object p7, p0, Lmpi;->h:Lmlw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_d
    iput-object v0, p0, Lmpi;->l:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p9, p0, Lmpi;->p:Lmly;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_11
    iput-object p1, p0, Lmpi;->k:Landroid/content/BroadcastReceiver;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Lmpi;->n:Lryb;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p8, p0, Lmpi;->r:Lfdo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_17
    const/4 v1, 0x0

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

    :goto_18
    iput-object p11, p0, Lmpi;->j:Lmpw;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1a
    iput-object p4, p0, Lmpi;->e:Lows;

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

    :goto_1b
    new-instance v0, Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object p5, p0, Lmpi;->f:Lowu;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget v0, Lryb;->d:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance p1, Lmph;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_20
    invoke-direct {p1, p0, p11}, Lmph;-><init>(Lmpi;Lmpw;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-object p10, p0, Lmpi;->i:Lmmx;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-object p6, p0, Lmpi;->g:Lnep;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method final a(Lmlx;Z)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lmlx;->b()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    const/4 p1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    new-instance v0, Lmpd;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lmpi;->q:Loiq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lmoq;->j(I)Z

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    if-nez p1, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_8
    iget-object p0, p0, Loiq;->b:Ljava/lang/Object;

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

    :goto_9
    invoke-direct {v0, p0, p2}, Lmpd;-><init>(Lmpi;Z)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p0, Lmoq;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p1, p0, Lmpi;->f:Lowu;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    invoke-virtual {p1, v0}, Lowu;->c(Ljava/lang/Runnable;)V

    goto/32 :goto_5

    nop

    nop
.end method
