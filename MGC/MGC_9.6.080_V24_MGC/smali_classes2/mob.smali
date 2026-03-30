.class public Lmob;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Ljava/util/concurrent/atomic/AtomicLong;

.field public final e:Ljava/util/concurrent/atomic/AtomicLong;

.field public final f:Ljava/util/concurrent/atomic/AtomicLong;

.field public final g:Ljava/util/concurrent/atomic/AtomicLong;

.field public final h:Ljava/util/concurrent/atomic/AtomicLong;

.field public final i:Ljava/util/concurrent/atomic/AtomicLong;

.field public final j:Ljava/lang/Object;

.field public final k:Lmnx;

.field public final l:Lmqd;

.field public m:Lmqh;

.field public n:Lmqc;

.field public o:Lmqa;

.field public p:Lsui;

.field public q:Z

.field public r:I

.field public s:I

.field public t:Lkkb;

.field public final u:Lhoh;

.field public v:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x1

    nop

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

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    const/16 v3, 0xdc

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    aput-object v0, v1, v3

    nop

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

    nop

    :goto_7
    check-cast v0, Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8
    const/4 v3, 0x0

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

    :goto_9
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    const-string v0, "mob"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    sput-object v0, Lmob;->a:Lsdb;

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method public constructor <init>(Lhoh;Loyn;Lmqd;Lows;Lmnx;)V
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lsue;->a:Lsui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_2e

    nop

    nop

    :goto_4
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p2}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Lmob;->e:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lmob;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Lmob;->g:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-wide/16 v2, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_e
    iput-object v0, p0, Lmob;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_f
    invoke-direct {p1, p0, p3}, Lmdt;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_10
    const v0, 0x9

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_1e

    nop

    nop

    :goto_14
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_17
    iput-object p1, p0, Lmob;->u:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_18
    invoke-virtual {p1, p3}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {}, Lolx;->bh()Ljava/util/concurrent/Executor;

    move-result-object p0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_3d

    nop

    :goto_1c
    iput-object v0, p0, Lmob;->h:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v0, p0, Lmob;->d:Ljava/util/concurrent/atomic/AtomicLong;

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

    nop

    nop

    :goto_1f
    iput-object v0, p0, Lmob;->n:Lmqc;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_21
    iput-object v0, p0, Lmob;->f:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v0, p0, Lmob;->j:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p4, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_28
    const/16 p3, 0x10

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-object p5, p0, Lmob;->k:Lmnx;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_2a
    iput v1, p0, Lmob;->r:I

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

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

    :goto_2c
    iput-object v0, p0, Lmob;->p:Lsui;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2e
    iput-object v0, p0, Lmob;->i:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object p3, p0, Lmob;->l:Lmqd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iput v1, p0, Lmob;->w:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_33
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3c

    nop

    :goto_34
    check-cast v0, Lmqc;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {p2, p1, p0}, Loyn;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_36
    sget-object p3, Lhnu;->e:Lhmo;

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

    :goto_37
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_38
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_39
    iput p1, p0, Lmob;->w:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_9

    nop

    nop

    :goto_3b
    new-instance p1, Lmdt;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_1d

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m()J
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lmob;->i:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x4

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
    const v1, 0x12

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

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    return-wide v0

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop
.end method


# virtual methods
.method final a()J
    .locals 7

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-wide v1

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    cmp-long v0, v3, v5

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lmob;->c()Z

    move-result v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Lmob;->da190e616797844b591057d0190e7728m()J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    div-long/2addr v3, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_f
    const-wide/16 v5, 0x7530

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x7

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-gez v0, :cond_2

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    :goto_16
    return-wide v1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_19
    add-long/2addr v1, v1

    nop

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

    :goto_1a
    int-to-long v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1b
    iget v0, p0, Lmob;->w:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1c
    const-wide/16 v1, 0x1

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
.end method

.method public final b()V
    .locals 6

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x17

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    :goto_2
    iget-object v0, p0, Lmob;->j:Ljava/lang/Object;

    nop

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

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lmob;->m:Lmqh;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lmob;->e:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    nop

    iget-object v4, p0, Lmob;->j:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v4

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    iget-object v5, p0, Lmob;->l:Lmqd;

    nop

    nop

    monitor-exit v4

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    iget v4, v5, Lmqd;->e:I

    nop

    int-to-long v4, v4

    nop

    nop

    div-long/2addr v2, v4

    nop

    nop

    nop

    iget-object v4, v1, Lmqh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v4

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    iput-wide v2, v1, Lmqh;->o:J

    nop

    nop

    nop

    monitor-exit v4

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-direct {p0}, Lmob;->da190e616797844b591057d0190e7728m()J

    move-result-wide v2

    nop

    nop

    iget-object v4, v1, Lmqh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter v4

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    iput-wide v2, v1, Lmqh;->p:J

    nop

    monitor-exit v4

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v2, p0, Lmob;->g:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object v2, v1, Lmqh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v2

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    monitor-exit v2

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object v2, p0, Lmob;->e:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object p0, p0, Lmob;->g:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object p0, v1, Lmqh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter p0

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    monitor-exit p0

    nop

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    monitor-exit v0

    nop

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    throw p0

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    :try_start_b
    monitor-exit p0

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v1

    nop

    nop

    nop

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_1
    move-exception p0

    nop

    nop

    :try_start_d
    monitor-exit v2

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw p0

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_2
    move-exception p0

    nop

    nop

    :try_start_f
    monitor-exit v4

    nop

    nop

    nop

    nop
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    throw p0

    nop

    nop

    nop

    nop
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :catchall_3
    move-exception p0

    nop

    nop

    nop

    :try_start_11
    monitor-exit v4

    nop

    nop

    nop

    nop
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    throw p0

    nop

    nop
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :catchall_4
    move-exception p0

    nop

    nop

    :try_start_13
    monitor-exit v4

    nop

    nop

    nop
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    throw p0

    nop

    :catchall_5
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method final c()Z
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_2
    monitor-enter v0

    nop

    :try_start_0
    iget-object p0, p0, Lmob;->n:Lmqc;

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lmqc;->a:Lmqc;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1}, Lmqc;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lmob;->j:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    :goto_a
    const v0, 0x6

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xe

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
