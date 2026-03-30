.class public final Lji;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:Ljava/lang/ThreadLocal;

.field static final b:Ljava/util/Comparator;


# instance fields
.field public final c:Ljava/util/ArrayList;

.field d:J

.field public e:J

.field private final f:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xf

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    :goto_6
    sput-object v0, Lji;->b:Ljava/util/Comparator;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_9
    new-instance v0, Ljava/lang/ThreadLocal;

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

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, v1}, Ldqy;-><init>(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    :goto_f
    sput-object v0, Lji;->a:Ljava/lang/ThreadLocal;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    new-instance v0, Ldqy;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lji;->f:Ljava/util/ArrayList;

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

    :goto_1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ljava/util/ArrayList;

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

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lji;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private static final b(Landroid/support/v7/widget/RecyclerView;IJ)Llb;
    .locals 5

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Llb;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_11

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

    goto/32 :goto_20

    nop

    nop

    :goto_2
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_3
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Lip;

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

    :goto_9
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_c
    cmp-long v2, p2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_d
    throw p1

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->R(Z)V

    goto/32 :goto_24

    nop

    nop

    :goto_10
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_11
    iget v4, v3, Llb;->c:I

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_12
    if-nez v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v3}, Llb;->s()Z

    move-result v3

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Lip;->c()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_16
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->g:Lip;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v3, v2}, Lip;->f(I)Landroid/view/View;

    move-result-object v3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
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

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    if-lt v2, v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->R(Z)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-wide v2, 0x7fffffffffffffffL

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1d
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lkq;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_6

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

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_21
    if-eq v4, p1, :cond_3

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string v2, "RV Prefetch forced - needed next frame"

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_23
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    :goto_24
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_25
    if-eqz v2, :cond_5

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_5
    :try_start_0
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v2

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-object p0

    nop

    :goto_27
    goto/32 :goto_9

    nop

    nop

    :goto_28
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2a
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :catchall_1
    :goto_2b
    :try_start_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->P()V

    invoke-virtual {v0, p1, p2, p3}, Lkq;->n(IJ)Llb;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_7

    nop

    nop

    nop

    invoke-virtual {p1}, Llb;->r()Z

    move-result p2

    nop

    nop

    nop

    if-eqz p2, :cond_6

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Llb;->s()Z

    move-result p2

    nop

    nop

    nop

    if-nez p2, :cond_6

    nop

    iget-object p2, p1, Llb;->a:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p2}, Lkq;->i(Landroid/view/View;)V

    goto :goto_2c

    nop

    nop

    nop

    :cond_6
    invoke-virtual {v0, p1, v1}, Lkq;->c(Llb;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    :goto_2c
    goto/32 :goto_1b

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_14

    nop

    nop

    :goto_1
    iput-wide v0, p0, Lji;->d:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    cmp-long v0, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    iget-wide v0, p0, Lji;->d:J

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    iput p2, p0, Ljg;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p1, Landroid/support/v7/widget/RecyclerView;->M:Ljg;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x20

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-wide/16 v2, 0x0

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

    :goto_f
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :goto_10
    goto/32 :goto_7

    nop

    nop

    :goto_11
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->ar()J

    move-result-wide v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    iput p3, p0, Ljg;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_15

    nop

    nop

    :goto_15
    iget-boolean v0, p1, Landroid/support/v7/widget/RecyclerView;->r:Z

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop
.end method

.method public final run()V
    .locals 17

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_0
    move-object/from16 v1, p0

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

    :goto_1
    goto/16 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    :try_start_0
    iget-object v7, v1, Lji;->f:Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move v7, v4

    nop

    nop

    move v8, v7

    nop

    nop

    nop

    :goto_3
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    if-ge v7, v0, :cond_8

    nop

    nop

    iget-object v10, v1, Lji;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    check-cast v10, Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView;->getWindowVisibility()I

    move-result v11

    nop

    nop

    nop

    nop

    if-nez v11, :cond_7

    nop

    iget-object v11, v10, Landroid/support/v7/widget/RecyclerView;->M:Ljg;

    nop

    nop

    nop

    iget v12, v11, Ljg;->a:I

    nop

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    nop

    nop

    nop

    nop

    iget v13, v11, Ljg;->b:I

    nop

    nop

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    nop

    nop

    add-int/2addr v12, v13

    nop

    nop

    move v13, v4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v14, v11, Ljg;->d:I

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v14, v14

    nop

    if-ge v13, v14, :cond_7

    nop

    iget-object v14, v1, Lji;->f:Ljava/util/ArrayList;

    nop

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_36

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    iput-wide v2, v1, Lji;->d:J

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

    :goto_8
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_9
    if-ge v8, v14, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_1
    new-instance v14, Ljh;

    nop

    nop

    nop

    nop

    invoke-direct {v14}, Ljh;-><init>()V

    iget-object v15, v1, Lji;->f:Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_16

    nop

    nop

    :goto_a
    move v8, v7

    nop

    :goto_b
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_c
    if-nez v8, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_2
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    const-string v0, "RV Prefetch"

    nop

    nop

    nop

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Lji;->c:Ljava/util/ArrayList;

    nop

    nop

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/16 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_3
    iget-object v0, v1, Lji;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_2d

    nop

    nop

    :goto_e
    add-int/2addr v8, v9

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_f
    cmp-long v0, v6, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_5
    :try_start_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    nop

    nop

    iget-wide v7, v1, Lji;->e:J

    nop

    nop

    add-long/2addr v5, v7

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v1, Lji;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_32

    nop

    nop

    :goto_12
    iput-wide v2, v1, Lji;->d:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_18

    nop

    nop

    nop

    nop

    :goto_17
    :try_start_4
    iget-object v14, v1, Lji;->f:Ljava/util/ArrayList;

    nop

    nop

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    check-cast v14, Ljh;

    nop

    :goto_18
    iget-object v15, v11, Ljg;->c:[I

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v16, v13, 0x1

    nop

    nop

    nop

    nop

    aget v2, v15, v16

    nop

    nop

    nop

    nop

    nop

    if-gt v2, v12, :cond_6

    nop

    move v3, v9

    nop

    nop

    goto :goto_19

    nop

    :cond_6
    move v3, v4

    nop

    :goto_19
    iput-boolean v3, v14, Ljh;->a:Z

    nop

    iput v12, v14, Ljh;->b:I

    nop

    nop

    nop

    nop

    nop

    iput v2, v14, Ljh;->c:I

    nop

    nop

    nop

    iput-object v10, v14, Ljh;->d:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    nop

    nop

    aget v2, v15, v13

    nop

    iput v2, v14, Ljh;->e:I

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v8, v8, 0x1

    nop

    nop

    add-int/lit8 v13, v13, 0x2

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    goto/16 :goto_4

    nop

    nop

    nop

    :cond_7
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_3

    nop

    :cond_8
    iget-object v0, v1, Lji;->f:Ljava/util/ArrayList;

    nop

    nop

    sget-object v2, Lji;->b:Ljava/util/Comparator;

    nop

    nop

    nop

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v0, v4

    nop

    :goto_1a
    iget-object v2, v1, Lji;->f:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    nop

    nop

    nop

    if-ge v0, v2, :cond_10

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v1, Lji;->f:Ljava/util/ArrayList;

    nop

    nop

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ljh;

    nop

    iget-object v3, v2, Ljh;->d:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    if-eqz v3, :cond_10

    nop

    nop

    nop

    nop

    iget-boolean v7, v2, Ljh;->a:Z

    nop

    nop

    nop

    nop

    const-wide v10, 0x7fffffffffffffffL

    nop

    nop

    if-eq v9, v7, :cond_9

    nop

    nop

    nop

    nop

    nop

    move-wide v7, v5

    nop

    nop

    nop

    nop

    goto :goto_1b

    nop

    nop

    nop

    nop

    :cond_9
    move-wide v7, v10

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v12, v2, Ljh;->e:I

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v12, v7, v8}, Lji;->b(Landroid/support/v7/widget/RecyclerView;IJ)Llb;

    move-result-object v3

    nop

    if-eqz v3, :cond_e

    nop

    nop

    nop

    nop

    iget-object v7, v3, Llb;->b:Ljava/lang/ref/WeakReference;

    nop

    if-eqz v7, :cond_e

    nop

    nop

    nop

    invoke-virtual {v3}, Llb;->r()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_e

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Llb;->s()Z

    move-result v3

    nop

    nop

    nop

    if-nez v3, :cond_e

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    if-nez v3, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_21

    nop

    nop

    :cond_a
    iget-boolean v7, v3, Landroid/support/v7/widget/RecyclerView;->y:Z

    nop

    nop

    nop

    if-eqz v7, :cond_b

    nop

    nop

    iget-object v7, v3, Landroid/support/v7/widget/RecyclerView;->g:Lip;

    nop

    nop

    invoke-virtual {v7}, Lip;->c()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_b

    nop

    nop

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->U()V

    :cond_b
    iget-object v7, v3, Landroid/support/v7/widget/RecyclerView;->M:Ljg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v3, v9}, Ljg;->c(Landroid/support/v7/widget/RecyclerView;Z)V

    iget v8, v7, Ljg;->d:I

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v8, :cond_c

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_c
    :try_start_5
    const-string v8, "RV Nested Prefetch"

    nop

    nop

    nop

    nop

    nop

    goto :goto_1e

    nop

    nop

    nop

    :goto_1d
    const-string v8, "RV Nested Prefetch forced - needed next frame"

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v8, v3, Landroid/support/v7/widget/RecyclerView;->N:Lky;

    nop

    iget-object v10, v3, Landroid/support/v7/widget/RecyclerView;->l:Lke;

    nop

    nop

    iput v9, v8, Lky;->d:I

    nop

    nop

    invoke-virtual {v10}, Lke;->a()I

    move-result v10

    nop

    iput v10, v8, Lky;->e:I

    nop

    iput-boolean v4, v8, Lky;->g:Z

    nop

    iput-boolean v4, v8, Lky;->h:Z

    nop

    nop

    nop

    nop

    nop

    iput-boolean v4, v8, Lky;->i:Z

    nop

    move v8, v4

    nop

    :goto_1f
    iget v10, v7, Ljg;->d:I

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v10, v10

    nop

    nop

    nop

    nop

    nop

    if-ge v8, v10, :cond_d

    nop

    nop

    iget-object v10, v7, Ljg;->c:[I

    nop

    nop

    nop

    nop

    aget v10, v10, v8

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v10, v5, v6}, Lji;->b(Landroid/support/v7/widget/RecyclerView;IJ)Llb;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_1f

    nop

    nop

    nop

    :cond_d
    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_21

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    nop

    nop

    nop

    nop

    :cond_e
    :goto_21
    iput-boolean v4, v2, Ljh;->a:Z

    nop

    nop

    nop

    nop

    iput v4, v2, Ljh;->b:I

    nop

    nop

    iput v4, v2, Ljh;->c:I

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    iput-object v3, v2, Ljh;->d:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    iput v4, v2, Ljh;->e:I

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_10

    nop

    nop

    :goto_22
    add-int/lit8 v8, v8, 0x2

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

    :goto_23
    if-lt v7, v0, :cond_f

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_f
    :try_start_7
    iget-object v9, v1, Lji;->c:Ljava/util/ArrayList;

    nop

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    check-cast v9, Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getWindowVisibility()I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    if-nez v10, :cond_4

    nop

    nop

    nop

    nop

    iget-object v10, v9, Landroid/support/v7/widget/RecyclerView;->M:Ljg;

    nop

    invoke-virtual {v10, v9, v4}, Ljg;->c(Landroid/support/v7/widget/RecyclerView;Z)V

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->M:Ljg;

    nop

    nop

    nop

    nop

    iget v9, v9, Ljg;->d:I

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/32 :goto_e

    nop

    nop

    :goto_24
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_25
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_27
    move-wide v6, v2

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_f

    nop

    nop

    :goto_2a
    throw v0

    nop

    nop

    :goto_2b
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-int/lit8 v7, v7, 0x1

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

    :goto_2d
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_39

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-lt v5, v0, :cond_11

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_11
    :try_start_8
    iget-object v8, v1, Lji;->c:Ljava/util/ArrayList;

    nop

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    check-cast v8, Landroid/support/v7/widget/RecyclerView;

    nop

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getWindowVisibility()I

    move-result v9

    nop

    if-nez v9, :cond_12

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getDrawingTime()J

    move-result-wide v8

    nop

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    nop

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_12
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_30
    const v1, 0xe

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    move v7, v4

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_33
    cmp-long v8, v5, v10

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_34
    const-wide/16 v2, 0x0

    nop

    nop

    :goto_35
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_2b

    nop

    nop

    :goto_37
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_38
    move v5, v4

    nop

    nop

    :goto_39
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const-wide/16 v2, 0x0

    nop

    :goto_3b
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method
