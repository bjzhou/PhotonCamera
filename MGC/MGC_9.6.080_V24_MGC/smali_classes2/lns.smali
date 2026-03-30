.class public Llns;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnrm;


# static fields
.field private static final g:Lsdb;

.field private static final k:Landroid/graphics/PointF;

.field public static x:F


# instance fields
.field public a:Lpby;

.field public b:F

.field public c:F

.field public d:I

.field public volatile e:Z

.field public volatile f:F

.field private final h:Lqht;

.field private final i:Lqjw;

.field private final j:Llnw;

.field private final l:Landroid/graphics/PointF;

.field private final m:Landroid/content/res/Resources;

.field private final n:Landroid/graphics/PointF;

.field private final o:Landroid/graphics/PointF;

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:Ljava/lang/String;

.field private volatile u:Lqjv;

.field private volatile v:Lqjs;

.field private final w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const-string v0, "lns"

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

    :goto_2
    return-void

    nop

    nop

    :goto_3
    sput-object v0, Llns;->g:Lsdb;

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
.end method

.method public constructor <init>(Lhoh;Landroid/content/Context;Lqht;Llnw;Lqjw;)V
    .locals 2

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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

    nop

    :goto_1
    const p3, 0x7f070700

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Llns;->s:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p2}, Llns;->d5484163cd8d335e6b17663474ff5f2bm(I)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_4
    const p1, 0x7f070704

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Llns;->d5484163cd8d335e6b17663474ff5f2bm(I)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_43

    nop

    :goto_7
    iput-object v0, p0, Llns;->l:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_8
    iput-object p1, p0, Llns;->n:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_9
    const p1, 0x7f070727

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_a
    invoke-direct {p1, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    const p1, 0x7f070705

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p5, p0, Llns;->i:Lqjw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const p2, 0x7f0706fe

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const p3, 0x7f070701

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v0, Lpby;->a:Lpby;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

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

    :goto_14
    check-cast p2, Ljava/lang/Integer;

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

    :goto_15
    iput-object p2, p0, Llns;->t:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_16
    sget-object p2, Lhnj;->k:Lhmn;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_18
    iput p1, p0, Llns;->q:I

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

    nop

    :goto_19
    iput-object p3, p0, Llns;->h:Lqht;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1a
    new-instance p1, Landroid/graphics/PointF;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_1b
    iput-object p2, p0, Llns;->m:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1c
    iput p1, p0, Llns;->r:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1d
    const/high16 v0, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0, p3}, Llns;->d5484163cd8d335e6b17663474ff5f2bm(I)I

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_20
    iput-object v0, p0, Llns;->v:Lqjs;

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

    :goto_21
    iput-object p1, p0, Llns;->o:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_22
    iput v0, p0, Llns;->f:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object p4, p0, Llns;->j:Llnw;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_24
    iput-object v0, p0, Llns;->u:Lqjv;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {p0, p1}, Llns;->d5484163cd8d335e6b17663474ff5f2bm(I)I

    move-result p1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {p0, p2}, Llns;->d5484163cd8d335e6b17663474ff5f2bm(I)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v0, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_28
    iput p2, p0, Llns;->w:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput p1, p0, Llns;->p:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2a
    const p1, 0x7f070726

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance p1, Landroid/graphics/PointF;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v0, 0x1

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_2d
    iput v0, p0, Llns;->c:F

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p0, p3}, Llns;->d5484163cd8d335e6b17663474ff5f2bm(I)I

    move-result p3

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2f
    int-to-float p3, p3

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/high16 v0, 0x40400000    # 3.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_33
    const v0, 0x15

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {p1, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v0, Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p1, p2}, Lhoh;->e(Lhmn;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_39
    sget-object p2, Lcom/a;->camera_ark_percentage_ratio_pip:Lhmo;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_3a
    const p2, 0x7f0706fd

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

    :goto_3b
    const v1, 0xb

    nop

    nop

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

    :goto_3c
    int-to-float p3, p3

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

    :goto_3d
    const/high16 v1, -0x40800000    # -1.0f

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v0, 0x0

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_3f
    iput v0, p0, Llns;->b:F

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_41
    int-to-float p2, p2

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

    :goto_42
    goto/32 :goto_44

    nop

    :goto_43
    goto/32 :goto_e

    nop

    :goto_44
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_45
    iput-boolean v0, p0, Llns;->e:Z

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_46
    invoke-virtual {p1, p2}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_47
    sput-object v0, Llns;->k:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iput v0, p0, Llns;->d:I

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

    :goto_49
    iput-object v0, p0, Llns;->a:Lpby;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_4a
    int-to-float p2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-direct {p0, p1}, Llns;->d5484163cd8d335e6b17663474ff5f2bm(I)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-direct {p0, p1}, Llns;->d5484163cd8d335e6b17663474ff5f2bm(I)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_4d
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

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
.end method

.method private final declared-synchronized d5484163cd8d335e6b17663474ff5f2bm(I)I
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_3
    goto :goto_5

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    :try_start_0
    sget-object v1, Llns;->g:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    const/16 v1, 0xf33

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Dimension not found: %d"

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1, p1}, Lscz;->t(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    :goto_5
    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p1

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    :try_start_2
    iget-object v0, p0, Llns;->m:Landroid/content/res/Resources;

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    float-to-int p1, p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    const v1, 0x3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x0

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

    :goto_d
    throw p1

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    monitor-exit p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Lprw;Lprw;)Lnrl;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-static {p0, p1, p2}, Lnzk;->k(Lnrm;Lprw;Lprw;)Lnrl;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic b(Lpge;Lphh;Lpge;)Lnrl;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lnzk;->l(Lnrm;Lpge;Lphh;Lpge;)Lnrl;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public final c()Lnrn;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p0, Lnrn;->d:Lnrn;

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

.method public final declared-synchronized close()V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Llns;->u:Lqjv;

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    if-eqz v0, :cond_0

    nop

    iget-object v0, p0, Llns;->u:Lqjv;

    nop

    invoke-virtual {v0}, Lqia;->a()Lqfv;

    iput-object v1, p0, Llns;->u:Lqjv;

    nop

    nop

    :cond_0
    iget-object v0, p0, Llns;->v:Lqjs;

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Llns;->v:Lqjs;

    nop

    nop

    invoke-virtual {v0}, Lqia;->a()Lqfv;

    iput-object v1, p0, Llns;->v:Lqjs;

    nop

    nop

    :cond_1
    iget-object v0, p0, Llns;->i:Lqjw;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v0, Lqjw;->c:Lqjs;

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    invoke-virtual {v2}, Lqia;->a()Lqfv;

    iput-object v1, v0, Lqjw;->c:Lqjs;

    nop

    nop

    :cond_2
    iget-object v2, v0, Lqjw;->d:Lqjs;

    nop

    if-eqz v2, :cond_3

    nop

    nop

    nop

    invoke-virtual {v2}, Lqia;->a()Lqfv;

    iput-object v1, v0, Lqjw;->d:Lqjs;

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_4

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

    :cond_4
    goto/32 :goto_2

    nop

    :goto_c
    monitor-exit p0

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

    :goto_d
    monitor-exit p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0xf

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final d()Lqht;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Llns;->h:Lqht;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final synthetic e()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-static {p0}, Lnzk;->m(Lnrm;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final f(Landroid/graphics/PointF;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    sget-object p0, Llns;->k:Landroid/graphics/PointF;

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
.end method

.method public final synthetic r()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized t(Lqiu;Lqjs;)Lnrl;
    .locals 11

    goto/32 :goto_6

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xc

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    goto/32 :goto_15

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_6
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    :try_start_0
    invoke-virtual {p1}, Lqiu;->g()Lqhe;

    move-result-object v0

    nop

    iget-object v0, v0, Lqhe;->a:Lqfd;

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Llns;->t:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v1

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    return-object p1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_a
    :try_start_3
    sget-object p1, Lnrl;->b:Lnrl;

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :catch_0
    :try_start_4
    const-string v1, "#FF00FF"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    nop

    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v1

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Lqiu;->g()Lqhe;

    move-result-object v2

    nop

    nop

    nop

    iget-object v3, p0, Llns;->u:Lqjv;

    nop

    nop

    nop

    nop

    nop

    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Llns;->h:Lqht;

    nop

    nop

    invoke-static {v3, v2}, Lqjv;->g(Lqht;Lqhe;)Lqjv;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    iput-object v2, p0, Llns;->u:Lqjv;

    nop

    nop

    nop

    iget-object v2, p0, Llns;->u:Lqjv;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Lqlw;

    nop

    nop

    invoke-direct {v3, v2}, Lqlw;-><init>(Ljava/lang/Object;)V

    invoke-static {v3}, Lqjs;->l(Lqlt;)Lqjs;

    move-result-object v2

    nop

    nop

    nop

    nop

    iput-object v2, p0, Llns;->v:Lqjs;

    nop

    nop

    nop

    :cond_2
    iget-object v2, p0, Llns;->u:Lqjv;

    nop

    nop

    nop

    nop

    iget-object v3, p0, Llns;->v:Lqjs;

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    if-nez v3, :cond_3

    nop

    goto/16 :goto_a

    nop

    nop

    nop

    nop

    :cond_3
    iget-boolean v4, p0, Llns;->e:Z

    nop

    nop

    nop

    nop

    const/high16 v5, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_5

    nop

    nop

    iget-object v4, p0, Llns;->j:Llnw;

    nop

    iget v4, v4, Llnw;->c:F

    nop

    nop

    nop

    nop

    nop

    cmpl-float v7, v5, v4

    nop

    nop

    nop

    nop

    nop

    if-nez v7, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget-object v4, p0, Llns;->l:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    iget v7, v4, Landroid/graphics/PointF;->x:F

    nop

    cmpl-float v7, v7, v6

    nop

    if-gez v7, :cond_4

    nop

    nop

    nop

    new-instance v4, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    const/high16 v7, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v7, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v4}, Llns;->f(Landroid/graphics/PointF;)V

    :cond_4
    sget-object v4, Llns;->k:Landroid/graphics/PointF;

    nop

    iget v7, v4, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    nop

    cmpl-float v7, v7, v6

    nop

    if-ltz v7, :cond_6

    nop

    nop

    nop

    nop

    nop

    iget v7, v4, Landroid/graphics/PointF;->x:F

    nop

    nop

    cmpg-float v7, v7, v5

    nop

    nop

    nop

    if-gtz v7, :cond_6

    nop

    nop

    nop

    nop

    nop

    iget v7, v4, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    cmpl-float v7, v7, v6

    nop

    nop

    nop

    nop

    if-ltz v7, :cond_6

    nop

    iget v4, v4, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    cmpg-float v4, v4, v5

    nop

    nop

    if-gtz v4, :cond_6

    nop

    nop

    nop

    nop

    iget-object v4, p0, Llns;->l:Landroid/graphics/PointF;

    nop

    invoke-virtual {v0}, Lqfe;->b()I

    move-result v7

    nop

    nop

    nop

    nop

    int-to-float v7, v7

    nop

    nop

    nop

    nop

    sget-object v8, Llns;->k:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    iget v8, v8, Landroid/graphics/PointF;->x:F

    nop

    mul-float/2addr v7, v8

    nop

    invoke-virtual {v0}, Lqfe;->a()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    int-to-float v8, v8

    nop

    nop

    nop

    nop

    nop

    sget-object v9, Llns;->k:Landroid/graphics/PointF;

    nop

    nop

    iget v9, v9, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    mul-float/2addr v8, v9

    nop

    nop

    nop

    invoke-virtual {v4, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    iget-object v4, p0, Llns;->n:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    iget v4, v4, Landroid/graphics/PointF;->x:F

    nop

    nop

    const/high16 v7, 0x40000000    # 2.0f

    nop

    nop

    nop

    div-float/2addr v4, v7

    nop

    nop

    nop

    nop

    nop

    iget v8, p0, Llns;->f:F

    nop

    nop

    nop

    div-float/2addr v4, v8

    nop

    nop

    nop

    nop

    nop

    iget-object v8, p0, Llns;->n:Landroid/graphics/PointF;

    nop

    nop

    iget v8, v8, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    nop

    div-float/2addr v8, v7

    nop

    nop

    nop

    nop

    iget v7, p0, Llns;->f:F

    nop

    nop

    nop

    div-float/2addr v8, v7

    nop

    nop

    nop

    nop

    nop

    iget-object v7, p0, Llns;->l:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    iget v9, v7, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lqfe;->b()I

    move-result v10

    nop

    nop

    int-to-float v10, v10

    nop

    nop

    nop

    nop

    add-float/2addr v4, v6

    nop

    nop

    sub-float/2addr v10, v4

    nop

    invoke-static {v9, v4, v10}, Lrrf;->V(FFF)F

    move-result v4

    nop

    nop

    nop

    iput v4, v7, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    iget-object v4, p0, Llns;->l:Landroid/graphics/PointF;

    nop

    nop

    nop

    iget v7, v4, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lqfe;->a()I

    move-result v9

    nop

    nop

    nop

    nop

    int-to-float v9, v9

    nop

    nop

    nop

    nop

    add-float/2addr v8, v6

    nop

    nop

    nop

    nop

    nop

    sub-float/2addr v9, v8

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v8, v9}, Lrrf;->V(FFF)F

    move-result v7

    nop

    nop

    nop

    iput v7, v4, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_5
    iget-object v4, p0, Llns;->l:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lqfe;->b()I

    move-result v7

    nop

    nop

    nop

    nop

    int-to-float v7, v7

    nop

    nop

    invoke-virtual {v0}, Lqfe;->a()I

    move-result v8

    nop

    nop

    nop

    nop

    int-to-float v8, v8

    nop

    nop

    const/high16 v9, 0x3f000000    # 0.5f

    nop

    mul-float/2addr v7, v9

    nop

    nop

    nop

    nop

    nop

    mul-float/2addr v8, v9

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    :cond_6
    :goto_f
    iget v4, p0, Llns;->q:I

    nop

    nop

    new-instance v7, Landroid/graphics/PointF;

    nop

    nop

    nop

    iget v8, p0, Llns;->d:I

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v4, v8

    nop

    nop

    nop

    nop

    iget v8, p0, Llns;->p:I

    nop

    nop

    nop

    nop

    nop

    int-to-float v4, v4

    nop

    nop

    nop

    nop

    nop

    int-to-float v8, v8

    nop

    nop

    nop

    nop

    invoke-direct {v7, v4, v8}, Landroid/graphics/PointF;-><init>(FF)V

    sget-object v4, Lpby;->b:Lpby;

    nop

    nop

    nop

    nop

    nop

    iget-object v8, p0, Llns;->a:Lpby;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v8}, Lpby;->m(Lpby;)Z

    move-result v4

    nop

    nop

    nop

    if-eqz v4, :cond_7

    nop

    nop

    nop

    nop

    nop

    iget-object v4, p0, Llns;->o:Landroid/graphics/PointF;

    nop

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    :cond_7
    iget-object v4, p0, Llns;->n:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v8, p0, Llns;->j:Llnw;

    nop

    iget v9, p0, Llns;->b:F

    nop

    nop

    nop

    nop

    iput v9, v8, Llnw;->c:F

    nop

    nop

    nop

    nop

    nop

    iget v9, p0, Llns;->c:F

    nop

    iput v9, v8, Llnw;->d:F

    nop

    nop

    nop

    nop

    nop

    iput-object v1, v8, Llnw;->b:Landroid/graphics/Color;

    nop

    nop

    nop

    nop

    iget-boolean v1, p0, Llns;->e:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_8

    nop

    nop

    nop

    iget v1, p0, Llns;->f:F

    nop

    goto :goto_11

    nop

    nop

    nop

    :cond_8
    move v1, v5

    nop

    nop

    nop

    nop

    :goto_11
    iput v1, v8, Llnw;->h:F

    nop

    iget-object v1, p0, Llns;->j:Llnw;

    nop

    nop

    nop

    nop

    iget-object v8, p0, Llns;->l:Landroid/graphics/PointF;

    nop

    nop

    iget-object v1, v1, Llnw;->i:Landroid/graphics/PointF;

    nop

    nop

    invoke-virtual {v1, v8}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v1, p0, Llns;->j:Llnw;

    nop

    iget-boolean v8, p0, Llns;->e:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_9

    nop

    goto :goto_12

    nop

    nop

    nop

    nop

    :cond_9
    new-instance v7, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_12
    iget-object v1, v1, Llnw;->j:Landroid/graphics/PointF;

    nop

    nop

    nop

    invoke-virtual {v1, v7}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v1, p0, Llns;->j:Llnw;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v7, p0, Llns;->e:Z

    nop

    if-nez v7, :cond_a

    nop

    nop

    new-instance v4, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lqfe;->b()I

    move-result v7

    nop

    nop

    nop

    nop

    int-to-float v7, v7

    nop

    nop

    nop

    invoke-virtual {v0}, Lqfe;->a()I

    move-result v8

    nop

    nop

    nop

    int-to-float v8, v8

    nop

    nop

    nop

    invoke-direct {v4, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_13

    nop

    nop

    nop

    nop

    :cond_a
    invoke-virtual {v0}, Lqfe;->b()I

    move-result v7

    nop

    nop

    const/16 v4, 0x64

    nop

    nop

    div-int v7, v7, v4

    nop

    nop

    nop

    iget v4, p0, Llns;->w:I

    nop

    mul-int v7, v7, v4

    nop

    nop

    int-to-float v7, v7

    nop

    invoke-virtual {v0}, Lqfe;->a()I

    move-result v8

    nop

    const/16 v4, 0x64

    nop

    nop

    nop

    nop

    div-int v8, v8, v4

    nop

    nop

    nop

    iget v4, p0, Llns;->w:I

    nop

    nop

    nop

    nop

    nop

    mul-int v8, v8, v4

    nop

    nop

    nop

    nop

    nop

    int-to-float v8, v8

    nop

    nop

    nop

    nop

    new-instance v4, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_13
    iget-object v1, v1, Llnw;->k:Landroid/graphics/PointF;

    nop

    invoke-virtual {v1, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v1, p0, Llns;->j:Llnw;

    nop

    nop

    nop

    iget v4, p0, Llns;->r:I

    nop

    nop

    nop

    int-to-float v4, v4

    nop

    nop

    iput v4, v1, Llnw;->f:F

    nop

    iget v4, p0, Llns;->s:I

    nop

    nop

    nop

    int-to-float v4, v4

    nop

    nop

    nop

    iput v4, v1, Llnw;->g:F

    nop

    nop

    nop

    nop

    iget-boolean v4, p0, Llns;->e:Z

    nop

    nop

    const/4 v7, 0x1

    nop

    if-eq v7, v4, :cond_b

    nop

    nop

    move v5, v6

    nop

    nop

    nop

    nop

    :cond_b
    iput v5, v1, Llnw;->e:F

    nop

    nop

    iget-object v1, p0, Llns;->j:Llnw;

    nop

    nop

    new-instance v4, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lqfe;->b()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    int-to-float v5, v5

    nop

    invoke-virtual {v0}, Lqfe;->a()I

    move-result v6

    nop

    int-to-float v6, v6

    nop

    nop

    nop

    nop

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, v1, Llnw;->l:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v1, p0, Llns;->j:Llnw;

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lqfe;->b()I

    move-result v5

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lqfe;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {v4, v6, v6, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, v1, Llnw;->m:Landroid/graphics/Rect;

    nop

    nop

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Llns;->j:Llnw;

    nop

    nop

    iget-object v1, v0, Llnw;->a:Lqht;

    nop

    nop

    invoke-static {v1}, Lqjd;->a(Lqht;)Lqjy;

    move-result-object v1

    nop

    nop

    nop

    invoke-static {v1}, Lqio;->k(Lqjy;)Lqxk;

    move-result-object v1

    nop

    nop

    iget-object v4, v0, Llnw;->n:Lqjs;

    nop

    nop

    invoke-virtual {v1, v4}, Lqxk;->b(Lqjs;)Lqio;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v0, Llnw;->b:Landroid/graphics/Color;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Landroid/graphics/Color;->red()F

    move-result v4

    nop

    nop

    iget-object v5, v0, Llnw;->b:Landroid/graphics/Color;

    nop

    nop

    invoke-virtual {v5}, Landroid/graphics/Color;->green()F

    move-result v5

    nop

    nop

    nop

    iget-object v8, v0, Llnw;->b:Landroid/graphics/Color;

    nop

    nop

    invoke-virtual {v8}, Landroid/graphics/Color;->blue()F

    move-result v8

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    sget-object v9, Lcom/google/android/apps/camera/jni/microvideotonemap/EeD/yHEIcF;->LbqiOLgqBuOaQ:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v1, v9, v4, v5, v8}, Lqio;->h(Ljava/lang/String;FFF)V

    const-string v4, "uStrongThreshold"

    nop

    iget v5, v0, Llnw;->c:F

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v4, v5}, Lqio;->e(Ljava/lang/String;F)V

    const-string v4, "uWeakThreshold"

    nop

    nop

    nop

    nop

    nop

    iget v5, v0, Llnw;->d:F

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v4, v5}, Lqio;->e(Ljava/lang/String;F)V

    const-string v4, "uZoomFactor"

    nop

    iget v5, v0, Llnw;->h:F

    nop

    invoke-virtual {v1, v4, v5}, Lqio;->e(Ljava/lang/String;F)V

    iget-object v4, v0, Llnw;->i:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    const-string v5, "uRoiCenter"

    nop

    nop

    iget v8, v4, Landroid/graphics/PointF;->x:F

    nop

    nop

    iget v4, v4, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    invoke-virtual {v1, v5, v8, v4}, Lqio;->g(Ljava/lang/String;FF)V

    iget-object v4, v0, Llnw;->j:Landroid/graphics/PointF;

    nop

    nop

    const-string v5, "uPipOffset"

    nop

    nop

    nop

    nop

    iget v8, v4, Landroid/graphics/PointF;->x:F

    nop

    iget v4, v4, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v5, v8, v4}, Lqio;->g(Ljava/lang/String;FF)V

    iget-object v4, v0, Llnw;->k:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    const-string v5, "uPipSize"

    nop

    iget v8, v4, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    iget v4, v4, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v5, v8, v4}, Lqio;->g(Ljava/lang/String;FF)V

    iget-object v4, v0, Llnw;->l:Landroid/graphics/PointF;

    nop

    const-string v5, "uExternalTexSize"

    nop

    iget v8, v4, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    nop

    iget v4, v4, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v5, v8, v4}, Lqio;->g(Ljava/lang/String;FF)V

    const-string v4, "isPeakingOn"

    nop

    sget v5, Llns;->x:F

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v4, v5}, Lqio;->e(Ljava/lang/String;F)V

    const-string v4, "uPipRadius"

    nop

    nop

    nop

    nop

    iget v5, v0, Llnw;->f:F

    nop

    nop

    invoke-virtual {v1, v4, v5}, Lqio;->e(Ljava/lang/String;F)V

    const-string v4, "uPipStroke"

    nop

    nop

    iget v5, v0, Llnw;->g:F

    nop

    nop

    nop

    invoke-virtual {v1, v4, v5}, Lqio;->e(Ljava/lang/String;F)V

    const-string v4, "uIsPipVisible"

    nop

    nop

    iget v5, v0, Llnw;->e:F

    nop

    invoke-virtual {v1, v4, v5}, Lqio;->e(Ljava/lang/String;F)V

    const-string v4, "uExternalTex"

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v4, p1}, Lqio;->c(Ljava/lang/String;Lqiu;)V

    iget-object p1, v0, Llnw;->m:Landroid/graphics/Rect;

    nop

    nop

    nop

    iget v4, p1, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    iget v5, p1, Landroid/graphics/Rect;->top:I

    nop

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    nop

    nop

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    nop

    nop

    nop

    invoke-virtual {v1, v4, v5, v8, p1}, Lqio;->j(IIII)V

    const-string p1, "aPosition"

    nop

    invoke-virtual {v1, p1, v6}, Lqio;->b(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lqio;->a()V

    invoke-virtual {v1, v3}, Lqio;->n(Lqjs;)V

    iget-object p1, v0, Llnw;->a:Lqht;

    nop

    nop

    nop

    nop

    invoke-static {p1}, Lqoe;->B(Lqht;)V

    iget-object p1, p0, Llns;->i:Lqjw;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v2, Lqia;->b:Lqht;

    nop

    nop

    nop

    sget-object v1, Lqjw;->a:[F

    nop

    nop

    invoke-virtual {p1, v0}, Lqjw;->a(Lqht;)V

    iget-object v0, p2, Lqia;->b:Lqht;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Lqjw;->a(Lqht;)V

    iget-object v0, p2, Lqia;->b:Lqht;

    nop

    nop

    invoke-static {v0}, Lqjd;->a(Lqht;)Lqjy;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lqio;->k(Lqjy;)Lqxk;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-object v3, p1, Lqjw;->b:Lqht;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lqht;->e()Lqjx;

    move-result-object v3

    nop

    nop

    nop

    nop

    sget-object v4, Lqjx;->a:Lqjx;

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Lqjx;->b(Lqjx;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, La;->au(Z)V

    iget-object v3, p1, Lqjw;->d:Lqjs;

    nop

    nop

    nop

    nop

    if-nez v3, :cond_c

    nop

    nop

    nop

    nop

    iget-object v3, p1, Lqjw;->b:Lqht;

    nop

    nop

    const-string v4, "#version 300 es\nin vec2 aPosition;\nin vec2 aTexCoord;\nuniform mat4 uTransform;\nout vec2 texCoord;\nvoid main() {\n  texCoord = (uTransform * vec4(aTexCoord, 0.0, 1.0)).xy;\n  gl_Position = vec4(aPosition.xy, 0.0, 1.0);\n}"

    nop

    nop

    invoke-static {v3, v4}, Lqjs;->h(Lqht;Ljava/lang/String;)Lqjs;

    move-result-object v4

    nop

    nop

    nop

    const-string v5, "#version 300 es\n#extension GL_EXT_YUV_target : enable\nprecision highp float;\nuniform highp sampler2D uImgTex;\nin vec2 texCoord;\nlayout (yuv) out vec3 outColor;\nvoid main() {\n    outColor = rgb_2_yuv(texture(uImgTex, texCoord).rgb, itu_601_full_range);\n}"

    nop

    nop

    nop

    nop

    invoke-static {v3, v5}, Lqjs;->b(Lqht;Ljava/lang/String;)Lqjs;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v4, v3}, Lqjw;->b(Lqjs;Lqjs;)Lqjs;

    move-result-object v3

    nop

    iput-object v3, p1, Lqjw;->d:Lqjs;

    nop

    nop

    nop

    :cond_c
    iget-object p1, p1, Lqjw;->d:Lqjs;

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Lqxk;->b(Lqjs;)Lqio;

    move-result-object p1

    nop

    const-string v0, "uImgTex"

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v0, v2}, Lqio;->d(Ljava/lang/String;Lqjv;)V

    const-string v0, "uTransform"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v0, v1}, Lqio;->f(Ljava/lang/String;[F)V

    const-string v0, "aPosition"

    nop

    invoke-virtual {p1, v0, v6}, Lqio;->b(Ljava/lang/String;I)V

    const-string v0, "aTexCoord"

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v0, v7}, Lqio;->b(Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Lqio;->n(Lqjs;)V

    sget-object p1, Lnrl;->a:Lnrl;

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_16
    monitor-exit p0

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
.end method
