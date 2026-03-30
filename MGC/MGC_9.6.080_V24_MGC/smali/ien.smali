.class public Lien;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Ljava/util/Map;

.field private c:I

.field private d:I

.field private e:J

.field private f:Landroid/graphics/PointF;

.field private g:I

.field private h:I

.field private final i:Lmjq;


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em(ILiec;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    iget-wide p1, p2, Liec;->d:J

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lien;->h:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iget p1, p2, Liec;->g:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-wide p1, p0, Lien;->e:J

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput p1, p0, Lien;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    iput p1, p0, Lien;->d:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput p1, p0, Lien;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    return-void

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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
    sput-object v0, Lien;->a:Lsdb;

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

    :goto_3
    const-string v0, "ien"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Lmjq;-><init>([B)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_b

    nop

    :goto_2
    const v0, 0x3

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lmjq;

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

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    const v1, 0x1d

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    goto/32 :goto_16

    nop

    nop

    :goto_a
    iput v0, p0, Lien;->h:I

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

    nop

    :goto_b
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    iput v0, p0, Lien;->c:I

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

    :goto_e
    iput v0, p0, Lien;->d:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_11
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    iput-wide v0, p0, Lien;->e:J

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    :goto_14
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Lien;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_16
    iput-object v0, p0, Lien;->f:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_19
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1a
    iput v0, p0, Lien;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1b
    iput-object v0, p0, Lien;->i:Lmjq;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1c
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lien;->f:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_1

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

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    const v1, 0xa

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    const v0, 0xb

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

    :goto_b
    iput v0, p0, Lien;->d:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    iput v0, p0, Lien;->h:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    iput v0, p0, Lien;->c:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    iput-wide v0, p0, Lien;->e:J

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

    nop

    :goto_12
    iput v0, p0, Lien;->g:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop
.end method

.method public final declared-synchronized b(Lidx;Ljava/util/concurrent/Executor;)Lpci;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    return-object p2

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xa

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

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

    :goto_c
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lien;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lien;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {p2}, Ljava/util/Map;->size()I

    new-instance p2, Lhig;

    nop

    nop

    const/16 v0, 0xb

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    invoke-direct {p2, p0, p1, v0, v1}, Lhig;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(Lidx;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lien;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lien;->b:Ljava/util/Map;

    nop

    invoke-interface {p1}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_3
    monitor-exit p0

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
.end method

.method public final d(Liec;Lrss;)V
    .locals 9

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    cmp-long p2, v3, v5

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    :goto_5
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_6
    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v4, v3, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_8
    iget-object v0, p1, Liec;->a:Landroid/graphics/RectF;

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

    :goto_9
    if-nez v6, :cond_0

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-wide v3, p2, Lmjq;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_74

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_d
    sub-long/2addr v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_84

    nop

    nop

    :goto_f
    const/4 p2, 0x2

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_10
    iput p2, p0, Lien;->h:I

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    :goto_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sub-float/2addr v4, p2

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_c3

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    iget v0, p1, Liec;->h:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_15
    cmpl-float p2, p2, v0

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_16
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p2, p0, Lien;->b:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    nop

    nop

    nop

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_11

    nop

    nop

    nop

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Ljava/util/Map$Entry;

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    new-instance v3, Libm;

    nop

    nop

    invoke-direct {v3, v0, p1, v1}, Libm;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b9

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lien;->a()V

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_80

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_1b
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1d
    goto/16 :goto_3e

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_80

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_2

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput v2, p0, Lien;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move p2, v1

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_24
    if-gtz v0, :cond_3

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p2, p0, Lien;->i:Lmjq;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_26
    iput p2, p0, Lien;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Lien;->a()V

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput v0, p0, Lien;->d:I

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v4, 0x3

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_2a
    check-cast v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v5, v0, v4}, Landroid/graphics/RectF;->setIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v6

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_2c
    cmpl-float v0, v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_2d
    iget-wide v3, p1, Liec;->d:J

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_2f
    iget v4, p2, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_30
    iget-object v0, p2, Lmjq;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_31
    iget v0, p2, Lmjq;->b:I

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    float-to-double v5, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_74

    nop

    :goto_34
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_35
    iget v0, p2, Lmjq;->b:I

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_36
    add-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_38
    goto/16 :goto_74

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_3a
    iput v0, p2, Lmjq;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v0, p2, Lmjq;->d:Ljava/lang/Object;

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

    :goto_3c
    check-cast v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_74

    nop

    nop

    :goto_3e
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iput p2, p0, Lien;->h:I

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_40
    const/4 p2, 0x4

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_41
    iget-wide v4, p2, Lmjq;->a:J

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_42
    iget p2, p0, Lien;->c:I

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_80

    nop

    :pswitch_2
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    cmp-long v0, v2, v5

    nop

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

    :goto_47
    cmpg-float v0, v0, v3

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_48
    add-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-direct {p0, p2, p1}, Lien;->23ce148e54b083367f51e25c7971761em(ILiec;)V

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_4a
    const-string v3, "I"

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v0}, Lj$/time/Duration;->toMillis()J

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_4c
    sub-long/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_4d
    add-int/2addr p2, v2

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_4e
    iget-object v0, p1, Liec;->a:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_4f
    const/16 v0, 0xc

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

    nop

    :goto_50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_52
    const v1, 0x17

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_53
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_54
    if-lt p2, v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_55
    iget-object v0, p1, Liec;->a:Landroid/graphics/RectF;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_56
    iget p2, p0, Lien;->h:I

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_57
    check-cast v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_59
    iget-wide v5, p2, Lmjq;->a:J

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_5a
    check-cast v4, Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    :goto_5b
    iget v0, p2, Lmjq;->b:I

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_5c
    iget-wide v5, p1, Liec;->d:J

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    mul-float/2addr v5, v4

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const-string v3, "N"

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/16 :goto_80

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v0, p2, Lmjq;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const/16 p2, 0x9

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_63
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_66
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_68
    add-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    :goto_69
    add-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-direct {p0, v4, p1}, Lien;->23ce148e54b083367f51e25c7971761em(ILiec;)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iput p2, p0, Lien;->h:I

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_6c
    const-string v3, "M"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_6d
    iget v3, p0, Lien;->g:I

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget-wide v3, p1, Liec;->d:J

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iput v0, p2, Lmjq;->b:I

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iput p2, p0, Lien;->h:I

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_e8

    nop

    nop

    :goto_73
    iget p2, p0, Lien;->h:I

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto :goto_74

    nop

    :goto_76
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    if-gtz v0, :cond_6

    nop

    nop

    goto/32 :goto_b1

    nop

    :cond_6
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    check-cast v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_79
    goto :goto_80

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    goto :goto_74

    nop

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_7
    goto/32 :goto_f

    nop

    nop

    :goto_7d
    double-to-float p2, v4

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    if-gez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_7f
    iput v0, p2, Lmjq;->b:I

    nop

    nop

    :goto_80
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_81
    invoke-direct {v3, v4, v0}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_a3

    nop

    nop

    :goto_82
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_83
    if-gtz p2, :cond_9

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

    :cond_9
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iget v0, p2, Lmjq;->b:I

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    :goto_85
    if-ne v0, v3, :cond_a

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_86
    const v0, 0x8

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_87
    iget-wide v3, p1, Liec;->d:J

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_88
    check-cast v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_89
    if-gtz v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_cf

    nop

    nop

    :goto_8a
    iget-wide v2, p2, Lmjq;->c:J

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_8b
    iput v0, p2, Lmjq;->b:I

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iput v0, p0, Lien;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_8d
    iget v0, p2, Lmjq;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    :goto_8e
    invoke-virtual {p0}, Lien;->a()V

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    throw p0

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :goto_90
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_91
    invoke-static {v2, v3}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_92
    iget-object p2, p0, Lien;->f:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_93
    iget v0, p1, Liec;->g:I

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_94
    check-cast v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iput v1, p0, Lien;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_96
    const-string v5, "T"

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_97
    invoke-virtual {v0, p2}, Lieb;->b(I)V

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_98
    if-gtz v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    :cond_c
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    const-wide/16 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_1f

    nop

    nop

    :goto_9c
    sub-float/2addr v0, v4

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

    nop

    nop

    :goto_9d
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_9e
    invoke-direct {v0, p1}, Lieb;-><init>(Liec;)V

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_9f
    iget-object v0, p1, Liec;->a:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    :goto_a0
    iput-wide v5, p2, Lmjq;->c:J

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_a1
    mul-float/2addr v6, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_a2
    iget-wide v5, p2, Lmjq;->a:J

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {p2}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_a4
    iget p2, p0, Lien;->h:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    add-int/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    iget v0, p1, Liec;->g:I

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_a7
    const/4 v3, 0x0

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    if-nez v6, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_e4

    nop

    nop

    :goto_a9
    goto/16 :goto_c7

    nop

    nop

    nop

    :goto_aa
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_ac
    new-instance v0, Lieb;

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_af
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_b0
    goto/16 :goto_76

    nop

    nop

    :goto_b1
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    cmp-long v0, v5, v3

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_b3
    if-gtz v0, :cond_e

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    if-gtz v0, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_b5
    new-instance v3, Landroid/graphics/PointF;

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-virtual {v0}, Lieb;->a()Liec;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_b7
    iget-object v0, p2, Lmjq;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_b8
    if-lez v0, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_e7

    nop

    :goto_b9
    goto/16 :goto_17

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_2
    sget-object v2, Lien;->a:Lsdb;

    nop

    nop

    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    nop

    invoke-interface {v2, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    const/16 v2, 0x57d

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    const-string v2, "Cannot execute onNewHandGestureDetected"

    nop

    invoke-interface {v0, v2}, Lscz;->s(Ljava/lang/String;)V

    goto/16 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_11
    monitor-exit p0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_ba
    iget-object v0, p2, Lmjq;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    iget v0, p0, Lien;->d:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    check-cast v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    if-ne v0, v2, :cond_12

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_be
    invoke-virtual {p2}, Lmjq;->a()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    const/4 v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_c0
    goto/16 :goto_80

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_59

    nop

    nop

    :goto_c1
    if-ge v0, v4, :cond_13

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    goto/32 :goto_ab

    nop

    nop

    :goto_c4
    iput-object v3, p0, Lien;->f:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-virtual {p0}, Lien;->a()V

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_c6
    goto/16 :goto_74

    nop

    nop

    nop

    :goto_c7
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    iput v0, p2, Lmjq;->b:I

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    :goto_ca
    iget v0, p2, Lmjq;->b:I

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    const/high16 v7, 0x3f400000    # 0.75f

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    if-gtz v4, :cond_14

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    goto/16 :goto_80

    nop

    nop

    :pswitch_6
    goto/32 :goto_f3

    nop

    nop

    :goto_ce
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    iget-object v0, p1, Liec;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_d0
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_d1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_d2
    const-string v3, "?"

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_d3
    iput v0, p2, Lmjq;->b:I

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    if-lez v0, :cond_15

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    :cond_15
    goto/32 :goto_a9

    nop

    nop

    :goto_d5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    const-string v3, "C"

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

    :goto_d7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_105

    nop

    nop

    :goto_d8
    iget p2, p0, Lien;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_d9
    iget p2, p2, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_da
    mul-float/2addr v5, v7

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_db
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_dc
    invoke-virtual {v4, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_dd
    cmpg-float v0, v0, v3

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    const-wide/32 v5, 0x2faf0800

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    iget-object v0, p2, Lmjq;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_e0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e1
    iget-wide v2, p2, Lmjq;->c:J

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_e2
    cmp-long v0, v5, v3

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    const v0, 0x3fd9999a    # 1.7f

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_e4
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v6

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    iget-object v0, p1, Liec;->a:Landroid/graphics/RectF;

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    iget v0, v3, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_e8
    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    iput v0, p2, Lmjq;->b:I

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    cmp-long v0, v5, v3

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_eb
    cmpg-float v0, v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_ec
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_ed
    const/high16 v0, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    :goto_ee
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_ef
    check-cast v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    iget-wide v5, p0, Lien;->e:J

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f1
    cmpl-float v4, v6, v5

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_f2
    const/high16 v0, 0x41f00000    # 30.0f

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f3
    iget-wide v5, p2, Lmjq;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    if-nez v4, :cond_16

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_16
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    div-float/2addr v3, v0

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    const-string v3, "-"

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_f7
    invoke-virtual {p2}, Lmjq;->a()V

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_f8
    iget-object v0, p2, Lmjq;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_f9
    iget v0, p2, Lmjq;->b:I

    nop

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

    :goto_fa
    const/16 p2, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    float-to-double v7, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_fc
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_fd
    iget v0, p1, Liec;->g:I

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_fe
    if-ltz p2, :cond_17

    nop

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

    :cond_17
    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    iput-wide v3, p0, Lien;->e:J

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

    :goto_100
    iget-object v0, p2, Lmjq;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_101
    new-instance v5, Landroid/graphics/RectF;

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_102
    iput v0, p2, Lmjq;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_103
    const/4 p2, 0x5

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_104
    add-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    :goto_105
    iget v0, p2, Lmjq;->b:I

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_106
    const-string v3, "P"

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_107
    invoke-static {v0}, Lhhg;->S(I)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_108
    goto/16 :goto_80

    nop

    nop

    :pswitch_7
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_109
    add-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_10a
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_10b
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop
.end method
