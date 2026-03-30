.class public Ljxy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Libo;


# static fields
.field public static final a:Lsdb;


# instance fields
.field private final A:Ljava/util/concurrent/atomic/AtomicLong;

.field private B:Llsc;

.field private final C:Lmhz;

.field private final D:Lfdo;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Liid;

.field public final d:Libn;

.field public final e:Lpck;

.field public final f:Landroid/media/MediaFormat;

.field public final g:Ljava/util/concurrent/atomic/AtomicLong;

.field public final h:Ljava/util/concurrent/atomic/AtomicLong;

.field public final i:Ljava/util/concurrent/atomic/AtomicLong;

.field public final j:Ljava/util/concurrent/atomic/AtomicLong;

.field public final k:Ljava/util/concurrent/atomic/AtomicLong;

.field public final l:Ljava/util/concurrent/atomic/AtomicLong;

.field public final m:Ljava/util/concurrent/atomic/AtomicLong;

.field public volatile n:Lqep;

.field public final o:Llcm;

.field public final p:Lhdn;

.field public q:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field private final r:Llss;

.field private final s:Lrss;

.field private final t:Lrss;

.field private final u:Ljxt;

.field private final v:Ljava/util/concurrent/atomic/AtomicLong;

.field private final w:Ljava/util/concurrent/atomic/AtomicLong;

.field private final x:Ljava/util/concurrent/atomic/AtomicLong;

.field private final y:Ljava/util/concurrent/atomic/AtomicLong;

.field private final z:Ljava/util/concurrent/atomic/AtomicLong;


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
    const-string v0, "jxy"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Ljxy;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_2

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

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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
.end method

.method public constructor <init>(Liid;Lhdn;Libn;Lrss;Lrss;Ljava/util/concurrent/Executor;Lpck;Llss;Lmhz;Ljxt;Lfdo;Landroid/media/MediaFormat;)V
    .locals 3

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Ljxy;->j:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Ljxy;->p:Lhdn;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Ljxy;->i:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    :goto_b
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

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

    :goto_f
    iput-object v0, p0, Ljxy;->z:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_10
    new-instance v0, Llcm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    iput-object p7, p0, Ljxy;->e:Lpck;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_14
    iput-object v0, p0, Ljxy;->k:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_18
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_19
    iput-object p5, p0, Ljxy;->t:Lrss;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v0, p0, Ljxy;->y:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1c
    iput-object p8, p0, Ljxy;->r:Llss;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v0, p0, Ljxy;->v:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-object p6, p0, Ljxy;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_23
    iput-object v0, p0, Ljxy;->h:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_24
    iput-object v0, p0, Ljxy;->q:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_27
    iput-object v0, p0, Ljxy;->x:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_28
    iput-object p10, p0, Ljxy;->u:Ljxt;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_29
    iput-object p12, p0, Ljxy;->f:Landroid/media/MediaFormat;

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_2a
    iput-object v0, p0, Ljxy;->m:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_2b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2c
    iput-object v0, p0, Ljxy;->g:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2d
    const-wide/16 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_23

    nop

    nop

    :goto_30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_31
    const-wide/16 v1, -0x1

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

    nop

    nop

    :goto_32
    iput-object p11, p0, Ljxy;->D:Lfdo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_33
    iput-object p1, p0, Ljxy;->c:Liid;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_34
    invoke-direct {v0}, Llcm;-><init>()V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_35
    iput-object v0, p0, Ljxy;->o:Llcm;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_36
    iput-object v0, p0, Ljxy;->B:Llsc;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_37
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_1e

    nop

    nop

    :goto_38
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_39
    sget-object p0, Lhmz;->a:Lhmo;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3a
    iput-object v0, p0, Ljxy;->w:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3b
    iput-object p9, p0, Ljxy;->C:Lmhz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_3c
    iput-object v0, p0, Ljxy;->l:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3d
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3e
    iput-object v0, p0, Ljxy;->A:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iput-object p4, p0, Ljxy;->s:Lrss;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_40
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_42
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_43
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_45
    iput-object p3, p0, Ljxy;->d:Libn;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Z)V
    .locals 6

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_0
    cmp-long p1, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ljxy;->z:Ljava/util/concurrent/atomic/AtomicLong;

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

    :goto_2
    iget-object p1, p0, Ljxy;->m:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_5
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Llcm;->b()I

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p0, Ljxy;->g:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p1, p0, Ljxy;->A:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p1, p0, Ljxy;->l:Ljava/util/concurrent/atomic/AtomicLong;

    nop

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

    nop

    :goto_c
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sub-long v2, v0, v2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    iget-object p1, p0, Ljxy;->k:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    iget-object p1, p0, Ljxy;->w:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_11
    if-eqz p1, :cond_1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1a

    nop

    nop

    :goto_15
    const-wide/16 v4, 0x3e8

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

    nop

    :goto_16
    iget-object p1, p0, Ljxy;->y:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    :goto_18
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_8

    nop

    nop

    :goto_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1b
    iget-object p1, p0, Ljxy;->v:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1c
    iget-object p1, p0, Ljxy;->x:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    :goto_1f
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p1, p0, Ljxy;->o:Llcm;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto :goto_1f

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p1, p0, Ljxy;->z:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p1, p0, Ljxy;->j:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v0, 0x1c

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p1, p0, Ljxy;->h:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p1, p0, Ljxy;->i:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2c
    if-gtz p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

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

    :goto_30
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 12

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_0
    const-string v2, "Cannot serialize gyro data."

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Ljxy;->o:Llcm;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    iget-object v2, p0, Ljxy;->C:Lmhz;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4d

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lsuu;->isDone()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_37

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_36

    nop

    nop

    :goto_9
    invoke-static {v0}, Lrrf;->x(Z)V

    :try_start_0
    sget-object v0, Ltnt;->a:Ltnt;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    nop

    const/16 v2, 0x9

    nop

    nop

    nop

    nop

    mul-int/2addr v1, v2

    nop

    nop

    nop

    nop

    new-array v1, v1, [F

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    move v7, v5

    nop

    nop

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    if-eqz v8, :cond_1

    nop

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    check-cast v8, Lqhi;

    nop

    nop

    nop

    invoke-virtual {v8}, Lqhi;->f()[F

    move-result-object v8

    nop

    nop

    nop

    nop

    move v9, v5

    nop

    :goto_a
    if-ge v9, v2, :cond_0

    nop

    nop

    nop

    nop

    add-int/lit8 v10, v7, 0x1

    nop

    nop

    aget v11, v8, v9

    nop

    aput v11, v1, v7

    nop

    nop

    nop

    add-int/lit8 v9, v9, 0x1

    nop

    move v7, v10

    nop

    nop

    goto :goto_a

    nop

    :cond_1
    invoke-static {v1}, Lrrf;->Y([F)Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    nop

    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_2
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v2, Ltnt;

    nop

    nop

    nop

    nop

    iget-object v4, v2, Ltnt;->c:Ltkl;

    nop

    nop

    invoke-interface {v4}, Ltkl;->c()Z

    move-result v5

    nop

    nop

    nop

    nop

    if-nez v5, :cond_3

    nop

    nop

    invoke-static {v4}, Ltkg;->s(Ltkl;)Ltkl;

    move-result-object v4

    nop

    nop

    nop

    nop

    iput-object v4, v2, Ltnt;->c:Ltkl;

    nop

    nop

    nop

    nop

    :cond_3
    iget-object v2, v2, Ltnt;->c:Ltkl;

    nop

    invoke-static {v1, v2}, Ltir;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    iget-object v1, v3, Ljxw;->a:Lpck;

    nop

    nop

    nop

    nop

    iget v1, v1, Lpck;->a:I

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-nez v2, :cond_4

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_4
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    move-object v4, v2

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Ltnt;

    nop

    iget v5, v4, Ltnt;->b:I

    nop

    nop

    or-int/2addr v5, v6

    nop

    nop

    nop

    iput v5, v4, Ltnt;->b:I

    nop

    nop

    nop

    iput v1, v4, Ltnt;->d:I

    nop

    nop

    iget-object v1, v3, Ljxw;->a:Lpck;

    nop

    nop

    nop

    iget v1, v1, Lpck;->b:I

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_5
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ltnt;

    nop

    nop

    nop

    nop

    nop

    iget v4, v2, Ltnt;->b:I

    nop

    nop

    nop

    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    or-int/2addr v4, v5

    nop

    nop

    nop

    iput v4, v2, Ltnt;->b:I

    nop

    nop

    nop

    nop

    nop

    iput v1, v2, Ltnt;->e:I

    nop

    nop

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    iget-wide v7, v3, Ljxw;->b:J

    nop

    nop

    nop

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    invoke-virtual {v1, v7, v8, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    iget-object v4, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-nez v4, :cond_6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_6
    iget-object v4, v0, Ltkb;->b:Ltkg;

    nop

    check-cast v4, Ltnt;

    nop

    nop

    nop

    nop

    nop

    iget v7, v4, Ltnt;->b:I

    nop

    or-int/lit8 v7, v7, 0x4

    nop

    nop

    nop

    nop

    iput v7, v4, Ltnt;->b:I

    nop

    nop

    nop

    nop

    iput-wide v1, v4, Ltnt;->f:J

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v3, Ljxw;->d:Lsuu;

    nop

    invoke-static {v1}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    nop

    nop

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    nop

    and-int/2addr v1, v6

    nop

    nop

    nop

    nop

    if-eq v6, v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    move v1, v5

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    nop

    :cond_7
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-nez v2, :cond_8

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_8
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    move-object v4, v2

    nop

    nop

    nop

    check-cast v4, Ltnt;

    nop

    nop

    nop

    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    nop

    nop

    iput v1, v4, Ltnt;->g:I

    nop

    iget v1, v4, Ltnt;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v1, v1, 0x8

    nop

    iput v1, v4, Ltnt;->b:I

    nop

    nop

    nop

    nop

    nop

    iget v1, v3, Ljxw;->h:I

    nop

    add-int/lit8 v1, v1, -0x1

    nop

    nop

    if-eq v1, v6, :cond_a

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_9

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_9
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v1, Ltnt;

    nop

    nop

    nop

    nop

    nop

    iput v6, v1, Ltnt;->h:I

    nop

    nop

    iget v2, v1, Ltnt;->b:I

    nop

    or-int/lit8 v2, v2, 0x40

    nop

    iput v2, v1, Ltnt;->b:I

    nop

    nop

    nop

    goto :goto_c

    nop

    :cond_a
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_b

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_b
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v1, Ltnt;

    nop

    nop

    nop

    nop

    nop

    iput v5, v1, Ltnt;->h:I

    nop

    nop

    nop

    iget v2, v1, Ltnt;->b:I

    nop

    or-int/lit8 v2, v2, 0x40

    nop

    nop

    nop

    iput v2, v1, Ltnt;->b:I

    nop

    :goto_c
    invoke-static {}, Liof;->o()V

    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ltnt;

    nop

    invoke-virtual {v0}, Ltis;->h()[B

    move-result-object v0

    nop

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    iget-wide v4, v3, Ljxw;->b:J

    nop

    nop

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v9

    nop

    nop

    nop

    iget-object v1, v3, Ljxw;->d:Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    iget v11, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    nop

    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    nop

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    array-length v8, v0

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    move-object v6, v1

    nop

    nop

    invoke-virtual/range {v6 .. v11}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-object v1, p0, Ljxy;->n:Lqep;

    nop

    if-eqz v1, :cond_c

    nop

    nop

    nop

    iget-object v1, p0, Ljxy;->n:Lqep;

    nop

    nop

    nop

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/nio/ByteBuffer;

    nop

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2, v0}, Lqep;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object v0, p0, Ljxy;->A:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object v0, p0, Ljxy;->v:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    iget-wide v1, v3, Ljxw;->b:J

    nop

    nop

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/16 :goto_5f

    nop

    nop

    :cond_c
    iget-object v0, p0, Ljxy;->y:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object v0, p0, Ljxy;->w:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    iget-wide v1, v3, Ljxw;->b:J

    nop

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Ljxy;->t:Lrss;

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_e
    iget-object v1, v0, Llcm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_f
    invoke-static {v0}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Ljxy;->B:Llsc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

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

    :goto_12
    invoke-virtual {v2, v4, v5}, Lmhz;->k(J)V

    :goto_13
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_30

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_18

    nop

    nop

    :goto_1b
    iget-object v1, p0, Ljxy;->c:Liid;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Llcm;->b()I

    move-result v0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Ljxy;->o:Llcm;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, v3, Ljxw;->c:Lsuu;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_49

    nop

    nop

    :goto_21
    if-nez v2, :cond_d

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

    :cond_d
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v0, Llsc;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v4, Ljava/util/ArrayList;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    throw p0

    nop

    nop

    :goto_25
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_39

    nop

    :goto_27
    sget-boolean v0, Ljwc;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v4, v2}, Lnpr;->m(Lpog;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_29
    iget-wide v4, v1, Llso;->a:J

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

    :goto_2a
    if-ne v1, v4, :cond_f

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_38

    nop

    nop

    :goto_2b
    goto/16 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_2d
    move v1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v2}, Lpnu;->l()Lpog;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1, v0, v2}, Liid;->b(Llsc;Llsc;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_31
    iget-wide v4, v3, Ljxw;->b:J

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v0, v3, Ljxw;->f:Lsuu;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_33
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-eq v1, v4, :cond_10

    nop

    nop

    goto/32 :goto_62

    nop

    :cond_10
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-wide v4, v3, Ljxw;->b:J

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_36
    move v1, v6

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_23

    nop

    nop

    :goto_38
    sget-object v4, Lpcg;->d:Lpcg;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v7, :cond_11

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

    :cond_11
    goto/32 :goto_6f

    nop

    nop

    :goto_3c
    check-cast v7, Lqhi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v1, v4, v5}, Llto;->c(Lrss;J)Lrss;

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v2, v4, v5}, Lmhz;->j(J)V

    :goto_3f
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v0, v3, Ljxw;->f:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    check-cast v0, Ljava/util/List;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v2, v1, Ljxt;->b:Lpnu;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v0}, Lsuu;->isDone()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_44
    if-nez v3, :cond_12

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_50

    nop

    nop

    :goto_45
    if-nez v1, :cond_13

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_46
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v1, p0, Ljxy;->s:Lrss;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-gtz v0, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    check-cast v2, Llsc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {v0}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v1, p0, Ljxy;->u:Ljxt;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_4e
    iget-object v0, v3, Ljxw;->c:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    sget-boolean v0, Ljwc;->a:Z

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_51
    goto/16 :goto_3a

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v4, v1, Ljxt;->d:Lnpr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_53
    invoke-virtual {v1}, Lpqv;->a()Lpcg;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_55
    invoke-static {v1, v4, v5}, Llto;->d(Lrss;J)Lrss;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_56
    if-nez v1, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v0, v3, Ljxw;->d:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_58
    if-nez v0, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5a
    iput-object v0, p0, Ljxy;->B:Llsc;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_5b
    invoke-static {v2}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v1, p0, Ljxy;->r:Llss;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object v2, v3, Ljxw;->c:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-static {v2, v4, v1, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_5f
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v2, p0, Ljxy;->C:Lmhz;

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_63
    const/4 v6, 0x1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const/16 v4, 0xaf4

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    sget-object v1, Ljxy;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_66
    if-nez v0, :cond_17

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_40

    nop

    nop

    :goto_67
    iget-wide v4, v3, Ljxw;->b:J

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_69
    if-nez v1, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_18
    goto/32 :goto_6a

    nop

    nop

    :goto_6a
    sget-object v8, Lqhi;->b:Lqhi;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_6b
    const v0, 0x3

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_6c
    invoke-virtual {v7, v8}, Lqhi;->e(Lqhi;)Lqhi;

    move-result-object v7

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_6d
    iget-object v1, v1, Ljxt;->c:Lpqv;

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    goto/16 :goto_5f

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_6f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_70
    sget-object v8, Lqhi;->a:Lqhi;

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v0}, Lsuu;->isDone()Z

    move-result v0

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    monitor-enter v1

    nop

    nop

    nop

    nop

    :try_start_2
    iget-object v2, v0, Llcm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v2, Lnpr;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lnpr;->b()Lpci;

    move-result-object v2

    nop

    nop

    check-cast v2, Ljxv;

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    if-eqz v2, :cond_1c

    nop

    nop

    nop

    invoke-virtual {v2}, Ljxv;->c()Z

    move-result v2

    nop

    if-nez v2, :cond_19

    nop

    nop

    nop

    nop

    goto :goto_75

    nop

    nop

    nop

    nop

    :cond_19
    iget-object v0, v0, Llcm;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v0, Lnpr;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lnpr;->c()Lpci;

    move-result-object v0

    nop

    check-cast v0, Ljxv;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1b

    nop

    nop

    invoke-virtual {v0}, Ljxv;->c()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_1a

    nop

    nop

    nop

    nop

    goto :goto_74

    nop

    nop

    :cond_1a
    iget-object v0, v0, Ljxv;->a:Ljxw;

    nop

    nop

    nop

    nop

    move-object v3, v0

    nop

    nop

    nop

    nop

    :cond_1b
    :goto_74
    monitor-exit v1

    nop

    nop

    nop

    goto :goto_76

    nop

    nop

    :cond_1c
    :goto_75
    monitor-exit v1

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_76
    goto/32 :goto_44

    nop

    nop

    :goto_77
    invoke-virtual {v1, v4, v5}, Llss;->b(J)Llso;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_78
    iget-wide v4, v1, Llso;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    sget-boolean v0, Ljwc;->a:Z

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    sget-object v4, Lpcg;->b:Lpcg;

    nop

    goto/32 :goto_46

    nop

    nop

    nop
.end method

.method public final dz(Llsc;)V
    .locals 6

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lnpr;->d()Ljava/util/List;

    move-result-object p1

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

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

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_3
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0, v1}, Ljxk;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p1, Lnpr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    iget-object p1, p0, Ljxy;->o:Llcm;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-wide v1, p1, Llsc;->c:J

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v4, Ljxx;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v2, Ljxv;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_d
    invoke-direct {v4, p1, v3}, Ljxx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Ljxy;->x:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_f
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v2, p0, Ljxy;->o:Llcm;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v4, :cond_1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_13
    if-gtz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p1, p0, Ljxy;->B:Llsc;

    nop

    :goto_16
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_17
    cmp-long v4, v0, v4

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

    :goto_18
    iget-object v0, p0, Ljxy;->g:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_19
    invoke-virtual {v2, v0, v1, v4}, Llcm;->c(JLkat;)Z

    :goto_1a
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v0, Ljxk;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1c
    iput-boolean v3, v2, Ljxw;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1d
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_21
    const/4 v0, 0x0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v2}, Llcm;->b()I

    move-result v2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0xc

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

    :goto_24
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_25
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_34

    nop

    nop

    :goto_28
    goto :goto_27

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2b
    iget-wide v0, p1, Llsc;->c:J

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p1, p1, Llcm;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const v0, 0xf

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Ljxy;->B:Llsc;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-wide v4, v2, Ljxw;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_30
    if-eqz v4, :cond_4

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_32
    iget-boolean v4, v2, Ljxw;->g:Z

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p1, p0, Ljxy;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_35
    return-void

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v2, p0, Ljxy;->o:Llcm;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v2, v2, Ljxv;->a:Ljxw;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3a
    iget-wide v0, p1, Llsc;->c:J

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3b
    invoke-virtual {p0, v0}, Ljxy;->b(Z)V

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_3c
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1d

    nop
.end method
