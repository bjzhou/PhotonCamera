.class public Liih;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Liym;

.field public final c:I

.field public final d:Lpck;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;

.field private final g:Liyr;

.field private final h:Landroid/util/SizeF;

.field private final i:Lpck;

.field private final j:F

.field private final k:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    sput-object v0, Liih;->a:Lsdb;

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "iih"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/util/SizeF;Lpck;Lpck;ILiym;Liyr;Ljava/util/Set;)V
    .locals 1

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 p2, p2, 0x1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    div-float/2addr p1, p2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    div-float/2addr p3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4
    iput-object p7, p0, Liih;->k:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Liih;->d:Lpck;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_6
    add-float/2addr p2, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Liih;->f:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    const/4 p2, 0x0

    nop

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    div-float/2addr p1, p3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput p2, p0, Liih;->j:F

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_d
    div-float/2addr p2, p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Liih;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p1, p0, Liih;->h:Landroid/util/SizeF;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget p1, p2, Lpck;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_13
    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    if-lt p2, p4, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    :goto_1a
    int-to-float p2, p2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-float/2addr p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1c
    iput-object v0, p0, Liih;->f:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget p2, p2, Lpck;->b:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result p3

    nop

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

    :goto_20
    iput p4, p0, Liih;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_21
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object p3, p0, Liih;->i:Lpck;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_24
    div-float p2, p1, p3

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

    :goto_25
    const/high16 p5, -0x40800000    # -1.0f

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

    :goto_26
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_27
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_28
    iput-object p6, p0, Liih;->g:Liyr;

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

    :goto_29
    iput-object p5, p0, Liih;->b:Liym;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_16

    nop

    nop

    :goto_2b
    return-void

    nop
.end method

.method public static d(JJJ)J
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 p4, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    div-long/2addr p2, p4

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-long/2addr p0, p2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    add-long/2addr p2, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return-wide p0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(FF[F)F
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p3, p0, Liih;->h:Landroid/util/SizeF;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    aget v0, p3, v0

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3
    return v1

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x6

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/high16 p0, 0x3f000000    # 0.5f

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

    nop

    nop

    :goto_7
    invoke-virtual {p3}, Landroid/util/SizeF;->getWidth()F

    move-result p0

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

    nop

    :goto_8
    add-float/2addr v0, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    div-float/2addr p2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    sub-float/2addr p1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_b
    aget p3, p3, v1

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

    :goto_c
    iget-object p0, p0, Liih;->d:Lpck;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    mul-float/2addr v1, p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    div-float p1, v1, p1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_11
    div-float/2addr v1, p0

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

    :goto_12
    const/high16 v2, 0x447a0000    # 1000.0f

    nop

    goto/32 :goto_9

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

    goto/32 :goto_18

    nop

    nop

    :goto_14
    mul-float/2addr v0, p0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_15
    div-float/2addr v1, p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    int-to-float p0, p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    iget p0, p0, Lpck;->a:I

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_19
    const v1, 0x15

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1a
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_4

    nop

    :goto_1c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    mul-float/2addr v1, v0

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

    :goto_1e
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final b(J[F)J
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    float-to-long p0, p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    mul-float/2addr p1, p2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x1

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

    nop

    :goto_3
    add-float/2addr p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    aget p0, p3, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    const/high16 p2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    long-to-float p1, p1

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
    iget p0, p0, Liih;->j:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    return-wide p0

    nop

    nop

    nop

    nop

    :goto_9
    sub-float/2addr p2, p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    div-float/2addr p1, p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(JJ[F)J
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    mul-float/2addr p5, p3

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

    :goto_2
    aget p4, p5, p4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    add-long/2addr p1, p3

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    :goto_6
    div-float p4, p5, p4

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

    nop

    :goto_7
    return-wide p1

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_b
    const/high16 p5, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    mul-float/2addr p0, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_11
    float-to-long p3, p5

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_12
    iget p0, p0, Liih;->j:F

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_13
    const/4 p4, 0x1

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

    :goto_14
    float-to-long v0, p0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-gtz v0, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    long-to-float p3, p3

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

    :goto_17
    const v1, 0x1c

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    cmp-long v0, p1, v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    sub-float/2addr p5, p4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1a
    add-long/2addr p1, v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Ljava/lang/String;JJJLpck;[FZ)[F
    .locals 12

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_0
    aget v4, p9, v7

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-float/2addr v1, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2
    return-object v2

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    mul-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    :goto_7
    cmp-long v1, p2, v8

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

    :goto_8
    iget-object v6, v0, Liih;->k:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_9
    if-gez v1, :cond_0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    aget v6, p9, v5

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static/range {p2 .. p7}, Liih;->d(JJJ)J

    move-result-wide v8

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

    :goto_e
    iget-object v0, v0, Liih;->g:Liyr;

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

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    :goto_11
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_12
    move-wide/from16 v10, p6

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_13
    move-object v1, p1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_14
    aput v0, v2, v5

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
    const/4 v5, 0x0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez p10, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    aput v1, v2, v7

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object/from16 v2, p8

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move-object v0, p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1a
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    aput v6, v4, v5

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-array v2, v3, [F

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1d
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-array v4, v3, [F

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_20
    aget v2, v4, v7

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {v0, v8, v9}, Liyr;->a(J)[F

    move-result-object v4

    nop

    :goto_22
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_23
    mul-float/2addr v1, v6

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v7, 0x1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_25
    invoke-interface {v6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {v0, v8, v9, v10, v11}, Liyr;->b(JJ)[F

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_27
    add-float/2addr v2, v6

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

    :goto_28
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2a
    int-to-float v0, v0

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, v0, Liih;->g:Liyr;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-wide/16 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2d
    mul-float/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2e
    iget v1, v2, Lpck;->b:I

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2f
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_2
    goto/32 :goto_10

    nop

    :goto_30
    mul-float/2addr v0, v1

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

    nop

    :goto_31
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/high16 v6, 0x3f000000    # 0.5f

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_34
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    :goto_36
    aget v1, v4, v5

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_37
    if-nez v1, :cond_4

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_38
    iget v0, v2, Lpck;->a:I

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

    :goto_39
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    aput v6, v4, v7

    nop

    nop

    goto/32 :goto_37

    nop

    nop
.end method

.method public final f(Landroid/graphics/Rect;)[F
    .locals 6

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v3, 0x1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v4, p1, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    aput v2, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    new-array v0, v0, [F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    int-to-float v4, v4

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

    :goto_7
    iget v2, v2, Lpck;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_8
    div-float/2addr p0, p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    int-to-float p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    iget p0, p0, Lpck;->b:I

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

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget p1, p1, Landroid/graphics/Rect;->top:I

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

    :goto_e
    const/4 v0, 0x2

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

    :goto_f
    int-to-float p0, p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_11
    sub-int/2addr v4, v5

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

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_13
    aput v2, v0, v3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_14
    aput p0, v0, v3

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1d

    nop

    nop

    :goto_16
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_19
    iget v5, p1, Landroid/graphics/Rect;->left:I

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

    :goto_1a
    div-float/2addr v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Liih;->i:Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1d
    return-object v0

    nop

    nop

    :goto_1e
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1f
    iget-object v2, p0, Liih;->i:Lpck;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_20
    sub-int/2addr v1, p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_21
    aput v2, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    int-to-float v2, v2

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

    :goto_23
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_24
    const v0, 0x19

    nop

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
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const-string v1, ", sensorSize="

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

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Liih;->c:I

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

    nop

    :goto_3
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string p0, "}"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v3, "AbsoluteGyroTransformCalculator{imageSize="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Liih;->h:Landroid/util/SizeF;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    const-string v0, ", timeoutMs=0, numOfStrips="

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x2

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

    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

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

    :goto_11
    iget-object v1, p0, Liih;->d:Lpck;

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

    :goto_12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_16

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_14

    nop

    nop

    :goto_19
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method
