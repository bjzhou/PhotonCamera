.class public final Lle;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Landroid/graphics/PorterDuff$Mode;

.field private static b:Lle;

.field private static final g:Lxo;


# instance fields
.field private c:Ljava/util/WeakHashMap;

.field private final d:Ljava/util/WeakHashMap;

.field private e:Landroid/util/TypedValue;

.field private f:Z

.field private h:Lejk;


# direct methods
.method private final declared-synchronized 1478a1c7833aac5e360e0ba4b0c0c568m(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 2

    goto/32 :goto_d

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p1

    nop

    nop

    :cond_0
    :try_start_0
    invoke-virtual {v0, p2, p3}, Lxm;->h(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_8

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    return-object p0

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw p1

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    :try_start_2
    iget-object v0, p0, Lle;->d:Ljava/util/WeakHashMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Lxm;

    nop

    nop

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    goto :goto_2

    nop

    nop

    :cond_3
    invoke-virtual {v0, p2, p3}, Lxm;->d(J)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    nop

    if-eqz v1, :cond_0

    nop

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_10

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

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method private final declared-synchronized 51550bab6b6440a4fd45f825c221b363m(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1d

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
    monitor-enter p0

    nop

    nop

    :try_start_1
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    nop

    nop

    nop

    nop

    if-eqz p4, :cond_1

    nop

    iget-object v0, p0, Lle;->d:Ljava/util/WeakHashMap;

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lxm;

    nop

    nop

    if-nez v0, :cond_2

    nop

    new-instance v0, Lxm;

    nop

    nop

    nop

    invoke-direct {v0}, Lxm;-><init>()V

    iget-object v1, p0, Lle;->d:Ljava/util/WeakHashMap;

    nop

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance p1, Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, p1}, Lxm;->g(JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x3

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    throw p1

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lxo;

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
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    const/4 v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    sput-object v0, Lle;->a:Landroid/graphics/PorterDuff$Mode;

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

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_a
    invoke-direct {v0, v1}, Lxo;-><init>(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sput-object v0, Lle;->g:Lxo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    :goto_d
    const v1, 0xe

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_5
    iput-object v0, p0, Lle;->d:Ljava/util/WeakHashMap;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

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

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    :goto_a
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    goto/32 :goto_5

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    new-instance v0, Ljava/util/WeakHashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static declared-synchronized b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v1, Lle;->g:Lxo;

    nop

    invoke-static {p0, p1}, Lxo;->c(ILandroid/graphics/PorterDuff$Mode;)I

    move-result v2

    nop

    nop

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lxo;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Landroid/graphics/PorterDuffColorFilter;

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_1

    nop

    nop

    nop

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {p0, p1}, Lxo;->c(ILandroid/graphics/PorterDuff$Mode;)I

    move-result p0

    nop

    nop

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p0, v2}, Lxo;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Landroid/graphics/PorterDuffColorFilter;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object v2

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    :goto_6
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object v2

    nop

    nop

    nop

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
    monitor-exit v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    const v0, 0x4

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    monitor-exit v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    const-class v0, Lle;

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
    rem-int v0, v0, v1

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

.method public static declared-synchronized e()Lle;
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw v1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    :try_start_0
    sget-object v1, Lle;->b:Lle;

    nop

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    new-instance v1, Lle;

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Lle;-><init>()V

    sput-object v1, Lle;->b:Lle;

    nop

    :cond_0
    sget-object v1, Lle;->b:Lle;

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_5

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    return-object v1

    nop

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v0

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

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    const-class v0, Lle;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    monitor-exit v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method static g(Landroid/graphics/drawable/Drawable;Llt;[I)V
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    iget-boolean v3, p1, Llt;->c:Z

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
    move-object v0, v1

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

    :goto_2
    iget-boolean v0, p1, Llt;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3
    instance-of v1, p0, Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2b

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_29

    nop

    :goto_9
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_a
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_14
    goto/32 :goto_26

    nop

    nop

    :goto_15
    goto :goto_1d

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    :goto_18
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p1, Llt;->a:Landroid/content/res/ColorStateList;

    nop

    nop

    :goto_1b
    goto/32 :goto_0

    nop

    nop

    :goto_1c
    invoke-static {p2, p1}, Lle;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    nop

    :goto_1d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p1, p1, Llt;->b:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto/32 :goto_13

    nop

    nop

    :goto_21
    if-eq v1, p0, :cond_4

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, p2, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

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

    :goto_23
    const/4 v2, 0x0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_24
    if-nez v3, :cond_5

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-boolean v0, p1, Llt;->d:Z

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

    nop

    :goto_27
    if-eqz p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_6
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_28
    sget-object p1, Lle;->a:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    :goto_29
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v0, :cond_7

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_7
    goto/32 :goto_1

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_30

    nop

    :goto_2f
    goto/32 :goto_12

    nop

    :goto_30
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_8
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_32
    new-array v1, v2, [I

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
.end method


# virtual methods
.method final declared-synchronized a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 9

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    move-object v0, v1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lle;->c:Ljava/util/WeakHashMap;

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lyp;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    invoke-static {v0, p2}, Lyq;->a(Lyp;I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_2
    move-object v0, v1

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    iget-object v0, p0, Lle;->h:Lejk;

    nop

    const/4 v2, 0x1

    nop

    if-nez v0, :cond_3

    nop

    goto/16 :goto_8

    nop

    nop

    :cond_3
    const v3, 0x7f080107

    nop

    nop

    if-ne p2, v3, :cond_4

    nop

    nop

    nop

    const v0, 0x7f060015

    nop

    nop

    nop

    nop

    invoke-static {p1, v0}, Ldtk;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_4
    const v3, 0x7f080135

    nop

    nop

    nop

    nop

    nop

    if-ne p2, v3, :cond_5

    nop

    nop

    nop

    const v0, 0x7f060018

    nop

    nop

    invoke-static {p1, v0}, Ldtk;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_5
    const v3, 0x7f080134

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    if-ne p2, v3, :cond_7

    nop

    const/4 v0, 0x3

    nop

    nop

    new-array v1, v0, [[I

    nop

    nop

    nop

    nop

    new-array v0, v0, [I

    nop

    nop

    nop

    nop

    const v3, 0x7f0401cf

    nop

    nop

    nop

    nop

    invoke-static {p1, v3}, Llq;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    nop

    const v6, 0x7f040174

    nop

    nop

    nop

    const/4 v7, 0x2

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v8

    nop

    if-eqz v8, :cond_6

    nop

    sget-object v3, Llq;->a:[I

    nop

    nop

    nop

    aput-object v3, v1, v4

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    nop

    nop

    nop

    aput v3, v0, v4

    nop

    nop

    nop

    sget-object v3, Llq;->d:[I

    nop

    nop

    nop

    nop

    nop

    aput-object v3, v1, v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v6}, Llq;->b(Landroid/content/Context;I)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    aput v3, v0, v2

    nop

    nop

    sget-object v3, Llq;->e:[I

    nop

    nop

    nop

    nop

    aput-object v3, v1, v7

    nop

    nop

    nop

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    nop

    nop

    nop

    aput v3, v0, v7

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_6
    sget-object v5, Llq;->a:[I

    nop

    nop

    nop

    nop

    nop

    aput-object v5, v1, v4

    nop

    nop

    nop

    invoke-static {p1, v3}, Llq;->a(Landroid/content/Context;I)I

    move-result v5

    nop

    aput v5, v0, v4

    nop

    nop

    nop

    sget-object v4, Llq;->d:[I

    nop

    nop

    nop

    nop

    aput-object v4, v1, v2

    nop

    nop

    nop

    invoke-static {p1, v6}, Llq;->b(Landroid/content/Context;I)I

    move-result v4

    nop

    nop

    nop

    aput v4, v0, v2

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Llq;->e:[I

    nop

    nop

    nop

    aput-object v4, v1, v7

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v3}, Llq;->b(Landroid/content/Context;I)I

    move-result v3

    nop

    aput v3, v0, v7

    nop

    nop

    :goto_6
    new-instance v3, Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v1, v3

    nop

    nop

    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :cond_7
    const v3, 0x7f0800fb

    nop

    nop

    nop

    if-ne p2, v3, :cond_8

    nop

    nop

    nop

    nop

    nop

    const v0, 0x7f040170

    nop

    invoke-static {p1, v0}, Llq;->b(Landroid/content/Context;I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v0}, Lejk;->e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    nop

    nop

    goto/16 :goto_8

    nop

    :cond_8
    const v3, 0x7f0800f5

    nop

    nop

    nop

    if-ne p2, v3, :cond_9

    nop

    nop

    nop

    nop

    invoke-static {p1, v4}, Lejk;->e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    nop

    nop

    goto/16 :goto_8

    nop

    :cond_9
    const v3, 0x7f0800fa

    nop

    nop

    nop

    nop

    if-ne p2, v3, :cond_a

    nop

    const v0, 0x7f04016d

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v0}, Llq;->b(Landroid/content/Context;I)I

    move-result v0

    nop

    nop

    nop

    nop

    invoke-static {p1, v0}, Lejk;->e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    nop

    goto/16 :goto_8

    nop

    nop

    nop

    :cond_a
    const v3, 0x7f080130

    nop

    nop

    if-eq p2, v3, :cond_f

    nop

    const v3, 0x7f080131

    nop

    nop

    nop

    nop

    if-ne p2, v3, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_b
    iget-object v3, v0, Lejk;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v3, [I

    nop

    invoke-static {v3, p2}, Lejk;->d([II)Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_c

    nop

    nop

    nop

    nop

    const v0, 0x7f040176

    nop

    nop

    nop

    invoke-static {p1, v0}, Llq;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    nop

    nop

    goto/16 :goto_8

    nop

    nop

    nop

    :cond_c
    iget-object v3, v0, Lejk;->d:Ljava/lang/Object;

    nop

    nop

    check-cast v3, [I

    nop

    nop

    nop

    nop

    invoke-static {v3, p2}, Lejk;->d([II)Z

    move-result v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_d

    nop

    nop

    nop

    const v0, 0x7f060014

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v0}, Ldtk;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    nop

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    :cond_d
    iget-object v0, v0, Lejk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v0, [I

    nop

    nop

    invoke-static {v0, p2}, Lejk;->d([II)Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_e

    nop

    nop

    nop

    nop

    const v0, 0x7f060013

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v0}, Ldtk;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_e
    const v0, 0x7f08012d

    nop

    nop

    nop

    nop

    nop

    if-ne p2, v0, :cond_10

    nop

    const p2, 0x7f060016

    nop

    nop

    nop

    invoke-static {p1, p2}, Ldtk;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    move p2, v0

    nop

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    :cond_f
    :goto_7
    const v0, 0x7f060017

    nop

    nop

    nop

    nop

    invoke-static {p1, v0}, Ldtk;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    nop

    :cond_10
    :goto_8
    if-eqz v1, :cond_16

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lle;->c:Ljava/util/WeakHashMap;

    nop

    if-nez v0, :cond_11

    nop

    nop

    new-instance v0, Ljava/util/WeakHashMap;

    nop

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lle;->c:Ljava/util/WeakHashMap;

    nop

    nop

    nop

    nop

    nop

    :cond_11
    iget-object v0, p0, Lle;->c:Ljava/util/WeakHashMap;

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lyp;

    nop

    nop

    nop

    if-nez v0, :cond_12

    nop

    new-instance v0, Lyp;

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Lyp;-><init>()V

    iget-object v3, p0, Lle;->c:Ljava/util/WeakHashMap;

    nop

    nop

    invoke-virtual {v3, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    iget p1, v0, Lyp;->d:I

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_13

    nop

    nop

    nop

    iget-object v3, v0, Lyp;->b:[I

    nop

    nop

    nop

    add-int/lit8 v4, p1, -0x1

    nop

    nop

    nop

    nop

    aget v3, v3, v4

    nop

    if-gt p2, v3, :cond_13

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p2, v1}, Lyp;->f(ILjava/lang/Object;)V

    goto :goto_9

    nop

    :cond_13
    iget-boolean v3, v0, Lyp;->a:Z

    nop

    nop

    nop

    if-eqz v3, :cond_14

    nop

    iget-object v3, v0, Lyp;->b:[I

    nop

    nop

    nop

    nop

    nop

    array-length v3, v3

    nop

    if-lt p1, v3, :cond_14

    nop

    nop

    invoke-static {v0}, Lyq;->b(Lyp;)V

    :cond_14
    iget p1, v0, Lyp;->d:I

    nop

    nop

    nop

    nop

    iget-object v3, v0, Lyp;->b:[I

    nop

    nop

    nop

    nop

    array-length v4, v3

    nop

    nop

    if-lt p1, v4, :cond_15

    nop

    add-int/lit8 v4, p1, 0x1

    nop

    invoke-static {v4}, Lys;->d(I)I

    move-result v4

    nop

    nop

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v0, Lyp;->b:[I

    nop

    nop

    nop

    iget-object v3, v0, Lyp;->c:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v0, Lyp;->c:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    :cond_15
    iget-object v3, v0, Lyp;->b:[I

    nop

    nop

    aput p2, v3, p1

    nop

    nop

    nop

    iget-object p2, v0, Lyp;->c:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    aput-object v1, p2, p1

    nop

    nop

    nop

    add-int/2addr p1, v2

    nop

    nop

    nop

    iput p1, v0, Lyp;->d:I

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    return-object v0

    nop

    nop

    :catchall_0
    move-exception p1

    nop

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

    goto/32 :goto_1

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

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

    :goto_12
    goto/32 :goto_2

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-object v1

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
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

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    :goto_2
    monitor-enter p0

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
    monitor-exit p0

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

    :goto_4
    const/4 v0, 0x0

    nop

    :try_start_1
    invoke-virtual {p0, p1, p2, v0}, Lle;->d(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method final declared-synchronized d(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 16

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object/from16 v0, p1

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

    :goto_1
    move/from16 v2, p2

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

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v3, v1, Lle;->f:Z

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    if-eqz v3, :cond_0

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    iput-boolean v5, v1, Lle;->f:Z

    nop

    const v3, 0x7f080141

    nop

    nop

    invoke-virtual {v1, v0, v3}, Lle;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    nop

    if-eqz v3, :cond_1b

    nop

    nop

    instance-of v6, v3, Lekv;

    nop

    nop

    nop

    nop

    if-nez v6, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    const-string v6, "android.graphics.drawable.VectorDrawable"

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_1b

    nop

    :cond_1
    :goto_4
    iget-object v3, v1, Lle;->e:Landroid/util/TypedValue;

    nop

    nop

    nop

    nop

    if-nez v3, :cond_2

    nop

    nop

    new-instance v3, Landroid/util/TypedValue;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iput-object v3, v1, Lle;->e:Landroid/util/TypedValue;

    nop

    nop

    nop

    :cond_2
    iget-object v3, v1, Lle;->e:Landroid/util/TypedValue;

    nop

    nop

    nop

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    nop

    nop

    nop

    invoke-virtual {v6, v2, v3, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v6, v3, Landroid/util/TypedValue;->assetCookie:I

    nop

    int-to-long v6, v6

    nop

    nop

    nop

    nop

    nop

    iget v8, v3, Landroid/util/TypedValue;->data:I

    nop

    nop

    nop

    int-to-long v8, v8

    nop

    nop

    nop

    nop

    nop

    const/16 v10, 0x20

    nop

    nop

    shl-long/2addr v6, v10

    nop

    nop

    nop

    or-long/2addr v6, v8

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0, v6, v7}, Lle;->1478a1c7833aac5e360e0ba4b0c0c568m(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    nop

    nop

    nop

    nop

    const v9, 0x7f080125

    nop

    nop

    nop

    nop

    nop

    const v10, 0x7f080126

    nop

    nop

    nop

    nop

    nop

    const v11, 0x7f080127

    nop

    nop

    nop

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :cond_3
    iget-object v8, v1, Lle;->h:Lejk;

    nop

    if-nez v8, :cond_5

    nop

    nop

    nop

    nop

    :cond_4
    move-object v8, v12

    nop

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    :cond_5
    const v8, 0x7f080103

    nop

    nop

    nop

    nop

    if-ne v2, v8, :cond_6

    nop

    nop

    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    nop

    const v13, 0x7f080102

    nop

    nop

    invoke-virtual {v1, v0, v13}, Lle;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    nop

    nop

    const v14, 0x7f080104

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0, v14}, Lle;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    nop

    filled-new-array {v13, v14}, [Landroid/graphics/drawable/Drawable;

    move-result-object v13

    nop

    invoke-direct {v8, v13}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    nop

    :cond_6
    if-ne v2, v10, :cond_7

    nop

    nop

    nop

    const v8, 0x7f07003b

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v0, v8}, Lejk;->f(Lle;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v8

    nop

    nop

    goto :goto_5

    nop

    :cond_7
    if-ne v2, v9, :cond_8

    nop

    nop

    nop

    nop

    nop

    const v8, 0x7f07003c

    nop

    nop

    nop

    nop

    invoke-static {v1, v0, v8}, Lejk;->f(Lle;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v8

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    :cond_8
    if-ne v2, v11, :cond_4

    nop

    nop

    nop

    nop

    nop

    const v2, 0x7f07003d

    nop

    nop

    nop

    invoke-static {v1, v0, v2}, Lejk;->f(Lle;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v2

    nop

    move-object v8, v2

    nop

    move v2, v11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v8, :cond_9

    nop

    nop

    nop

    nop

    nop

    iget v3, v3, Landroid/util/TypedValue;->changingConfigurations:I

    nop

    nop

    nop

    invoke-virtual {v8, v3}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    invoke-direct {v1, v0, v6, v7, v8}, Lle;->51550bab6b6440a4fd45f825c221b363m(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V

    :cond_9
    :goto_6
    if-nez v8, :cond_a

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    nop

    nop

    nop

    :cond_a
    if-eqz v8, :cond_18

    nop

    nop

    invoke-virtual {v1, v0, v2}, Lle;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    nop

    nop

    if-eqz v3, :cond_e

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v3, v1, Lle;->h:Lejk;

    nop

    nop

    nop

    if-nez v3, :cond_b

    nop

    nop

    nop

    goto :goto_7

    nop

    :cond_b
    const v3, 0x7f080134

    nop

    nop

    nop

    nop

    if-ne v2, v3, :cond_c

    nop

    nop

    nop

    nop

    nop

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    :cond_c
    :goto_7
    if-eqz v12, :cond_d

    nop

    nop

    invoke-virtual {v0, v12}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_d
    move-object v12, v0

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_c

    nop

    :cond_e
    iget-object v3, v1, Lle;->h:Lejk;

    nop

    nop

    nop

    nop

    const v6, 0x7f040174

    nop

    const v7, 0x7f040176

    nop

    nop

    nop

    if-eqz v3, :cond_11

    nop

    nop

    nop

    nop

    nop

    const v13, 0x7f08012f

    nop

    nop

    nop

    nop

    const v14, 0x102000d

    nop

    nop

    nop

    const v15, 0x102000f

    nop

    const/high16 v5, 0x1020000

    nop

    nop

    nop

    nop

    if-ne v2, v13, :cond_f

    nop

    nop

    nop

    move-object v2, v8

    nop

    nop

    nop

    nop

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    nop

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-static {v0, v7}, Llq;->b(Landroid/content/Context;I)I

    move-result v4

    nop

    nop

    sget-object v5, Lhn;->a:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v4, v5}, Lejk;->g(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v15}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    nop

    invoke-static {v0, v7}, Llq;->b(Landroid/content/Context;I)I

    move-result v4

    nop

    nop

    nop

    sget-object v5, Lhn;->a:Landroid/graphics/PorterDuff$Mode;

    nop

    invoke-static {v3, v4, v5}, Lejk;->g(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v14}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v6}, Llq;->b(Landroid/content/Context;I)I

    move-result v0

    nop

    nop

    nop

    nop

    sget-object v3, Lhn;->a:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    invoke-static {v2, v0, v3}, Lejk;->g(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_b

    nop

    nop

    :cond_f
    if-eq v2, v10, :cond_10

    nop

    nop

    nop

    nop

    if-eq v2, v9, :cond_10

    nop

    nop

    nop

    nop

    nop

    if-ne v2, v11, :cond_11

    nop

    nop

    nop

    nop

    :cond_10
    move-object v2, v8

    nop

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    nop

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    nop

    invoke-static {v0, v7}, Llq;->a(Landroid/content/Context;I)I

    move-result v4

    nop

    nop

    nop

    nop

    sget-object v5, Lhn;->a:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v4, v5}, Lejk;->g(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v15}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    nop

    invoke-static {v0, v6}, Llq;->b(Landroid/content/Context;I)I

    move-result v4

    nop

    nop

    sget-object v5, Lhn;->a:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    invoke-static {v3, v4, v5}, Lejk;->g(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v14}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-static {v0, v6}, Llq;->b(Landroid/content/Context;I)I

    move-result v0

    nop

    nop

    sget-object v3, Lhn;->a:Landroid/graphics/PorterDuff$Mode;

    nop

    invoke-static {v2, v0, v3}, Lejk;->g(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_b

    nop

    nop

    :cond_11
    if-eqz v3, :cond_17

    nop

    nop

    nop

    nop

    iget-object v5, v3, Lejk;->c:Ljava/lang/Object;

    nop

    nop

    sget-object v9, Lhn;->a:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    check-cast v5, [I

    nop

    nop

    nop

    nop

    invoke-static {v5, v2}, Lejk;->d([II)Z

    move-result v5

    nop

    const/4 v10, -0x1

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_12

    nop

    move v5, v7

    nop

    nop

    nop

    nop

    :goto_8
    move v2, v10

    nop

    nop

    :goto_9
    const/4 v4, 0x1

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    nop

    nop

    :cond_12
    iget-object v5, v3, Lejk;->f:Ljava/lang/Object;

    nop

    check-cast v5, [I

    nop

    nop

    invoke-static {v5, v2}, Lejk;->d([II)Z

    move-result v5

    nop

    if-eqz v5, :cond_13

    nop

    nop

    nop

    nop

    move v5, v6

    nop

    nop

    nop

    goto :goto_8

    nop

    :cond_13
    iget-object v3, v3, Lejk;->e:Ljava/lang/Object;

    nop

    nop

    check-cast v3, [I

    nop

    nop

    nop

    nop

    invoke-static {v3, v2}, Lejk;->d([II)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    const v5, 0x1010031

    nop

    nop

    if-eqz v3, :cond_14

    nop

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    :cond_14
    const v3, 0x7f080118

    nop

    nop

    if-ne v2, v3, :cond_15

    nop

    nop

    const v2, 0x42233333    # 40.8f

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    nop

    const v4, 0x1010030

    nop

    move v5, v4

    nop

    nop

    nop

    nop

    goto :goto_9

    nop

    nop

    :cond_15
    const v3, 0x7f080106

    nop

    nop

    nop

    if-ne v2, v3, :cond_16

    nop

    goto :goto_8

    nop

    nop

    nop

    nop

    :cond_16
    move v5, v4

    nop

    nop

    nop

    nop

    nop

    move v2, v10

    nop

    nop

    nop

    :goto_a
    if-eqz v4, :cond_17

    nop

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    nop

    invoke-static {v0, v5}, Llq;->b(Landroid/content/Context;I)I

    move-result v0

    nop

    invoke-static {v0, v9}, Lhn;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    nop

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eq v2, v10, :cond_18

    nop

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_b

    nop

    nop

    nop

    :cond_17
    if-eqz p3, :cond_18

    nop

    nop

    goto :goto_c

    nop

    :cond_18
    :goto_b
    move-object v12, v8

    nop

    nop

    nop

    :goto_c
    if-eqz v12, :cond_19

    nop

    nop

    nop

    invoke-static {v12}, Liy;->b(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_19
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    :goto_e
    if-lez v0, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_f

    nop

    :goto_f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x10

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12
    monitor-exit p0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x18

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_17
    return-object v12

    nop

    :cond_1b
    :try_start_1
    iput-boolean v4, v1, Lle;->f:Z

    nop

    nop

    nop

    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    sget-object v2, Lcom/google/android/apps/camera/jni/microvideotonemap/EeD/yHEIcF;->RfHGxWQVMwswb:Ljava/lang/String;

    nop

    nop

    nop

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final declared-synchronized f(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lle;->d:Ljava/util/WeakHashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lxm;

    nop

    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lxm;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

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

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final declared-synchronized h(Lejk;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
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

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iput-object p1, p0, Lle;->h:Lejk;

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
