.class public final Lms;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/graphics/PorterDuff$Mode;

.field private static b:Lms;

.field private static final h:Lxe;


# instance fields
.field private c:Ljava/util/WeakHashMap;

.field private final d:Ljava/util/WeakHashMap;

.field private e:Landroid/util/TypedValue;

.field private f:Z

.field private g:Lmr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lms;->a:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Lxe;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lxe;-><init>(I)V

    sput-object v0, Lms;->h:Lxe;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lms;->d:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static declared-synchronized b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3

    const-class v0, Lms;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lms;->h:Lxe;

    invoke-static {p0, p1}, Lxe;->c(ILandroid/graphics/PorterDuff$Mode;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lxe;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PorterDuffColorFilter;

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v2, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {p0, p1}, Lxe;->c(ILandroid/graphics/PorterDuff$Mode;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Lxe;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PorterDuffColorFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized e()Lms;
    .locals 2

    const-class v0, Lms;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lms;->b:Lms;

    if-nez v1, :cond_0

    new-instance v1, Lms;

    invoke-direct {v1}, Lms;-><init>()V

    sput-object v1, Lms;->b:Lms;

    :cond_0
    sget-object v1, Lms;->b:Lms;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static h(Landroid/graphics/drawable/Drawable;Lni;[I)V
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    sget-object v1, Lkh;->a:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v1, p0, :cond_6

    instance-of v1, p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v2, [I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    iget-boolean v0, p1, Lni;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lni;->c:Z

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void

    :cond_2
    iget-object v0, p1, Lni;->a:Landroid/content/res/ColorStateList;

    :goto_0
    iget-boolean v3, p1, Lni;->c:Z

    if-eqz v3, :cond_3

    iget-object p1, p1, Lni;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :cond_3
    sget-object p1, Lms;->a:Landroid/graphics/PorterDuff$Mode;

    :goto_1
    if-eqz v0, :cond_5

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, p2, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    invoke-static {p2, p1}, Lms;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    goto :goto_2

    :cond_5
    :goto_2
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_6
    return-void
.end method

.method private final declared-synchronized i(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lms;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3}, Lxc;->d(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez v2, :cond_1

    iget-object p1, v0, Lxc;->b:[J

    iget v2, v0, Lxc;->d:I

    invoke-static {p1, v2, p2, p3}, Lxi;->b([JIJ)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object p2, v0, Lxc;->c:[Ljava/lang/Object;

    aget-object p3, p2, p1

    sget-object v2, Lxd;->a:Ljava/lang/Object;

    if-eq p3, v2, :cond_2

    aput-object v2, p2, p1

    const/4 p1, 0x1

    iput-boolean p1, v0, Lxc;->a:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized j(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    if-eqz p4, :cond_1

    iget-object v0, p0, Lms;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxc;

    if-nez v0, :cond_0

    new-instance v0, Lxc;

    invoke-direct {v0}, Lxc;-><init>()V

    iget-object v1, p0, Lms;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, p1}, Lxc;->g(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method final declared-synchronized a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lms;->c:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxg;

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lxh;->a(Lxg;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_15

    iget-object v0, p0, Lms;->g:Lmr;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    const v3, 0x7f0800f5

    if-ne p2, v3, :cond_2

    const v0, 0x7f060015

    invoke-static {p1, v0}, Labx;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_4

    :cond_2
    const v3, 0x7f080123

    if-ne p2, v3, :cond_3

    const v0, 0x7f060018

    invoke-static {p1, v0}, Labx;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_4

    :cond_3
    const v3, 0x7f080122

    const/4 v4, 0x0

    if-ne p2, v3, :cond_5

    const/4 v0, 0x3

    new-array v1, v0, [[I

    new-array v0, v0, [I

    const v3, 0x7f0401b8

    invoke-static {p1, v3}, Lnf;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    const v6, 0x7f04015e

    const/4 v7, 0x2

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v3, Lnf;->a:[I

    aput-object v3, v1, v4

    invoke-virtual {v5, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    aput v3, v0, v4

    sget-object v3, Lnf;->d:[I

    aput-object v3, v1, v2

    invoke-static {p1, v6}, Lnf;->b(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v2

    sget-object v3, Lnf;->e:[I

    aput-object v3, v1, v7

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    aput v3, v0, v7

    goto :goto_1

    :cond_4
    sget-object v5, Lnf;->a:[I

    aput-object v5, v1, v4

    invoke-static {p1, v3}, Lnf;->a(Landroid/content/Context;I)I

    move-result v5

    aput v5, v0, v4

    sget-object v4, Lnf;->d:[I

    aput-object v4, v1, v2

    invoke-static {p1, v6}, Lnf;->b(Landroid/content/Context;I)I

    move-result v4

    aput v4, v0, v2

    sget-object v4, Lnf;->e:[I

    aput-object v4, v1, v7

    invoke-static {p1, v3}, Lnf;->b(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v7

    :goto_1
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v1, v3

    goto/16 :goto_4

    :cond_5
    const v3, 0x7f0800e9

    if-ne p2, v3, :cond_6

    const v0, 0x7f04015c

    invoke-static {p1, v0}, Lnf;->b(Landroid/content/Context;I)I

    move-result v0

    :goto_2
    invoke-static {p1, v0}, Lin;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_4

    :cond_6
    const v3, 0x7f0800e3

    if-ne p2, v3, :cond_7

    invoke-static {p1, v4}, Lin;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_4

    :cond_7
    const v3, 0x7f0800e8

    if-ne p2, v3, :cond_8

    const v0, 0x7f040159

    invoke-static {p1, v0}, Lnf;->b(Landroid/content/Context;I)I

    move-result v0

    goto :goto_2

    :cond_8
    const v3, 0x7f08011e

    if-eq p2, v3, :cond_e

    const v3, 0x7f08011f

    if-ne p2, v3, :cond_9

    goto :goto_3

    :cond_9
    move-object v3, v0

    check-cast v3, Lin;

    iget-object v3, v3, Lin;->b:[I

    invoke-static {v3, p2}, Lin;->a([II)Z

    move-result v3

    if-eqz v3, :cond_a

    const v0, 0x7f040160

    invoke-static {p1, v0}, Lnf;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_4

    :cond_a
    move-object v3, v0

    check-cast v3, Lin;

    iget-object v3, v3, Lin;->e:[I

    invoke-static {v3, p2}, Lin;->a([II)Z

    move-result v3

    if-eqz v3, :cond_b

    const v0, 0x7f060014

    invoke-static {p1, v0}, Labx;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_4

    :cond_b
    check-cast v0, Lin;

    iget-object v0, v0, Lin;->f:[I

    invoke-static {v0, p2}, Lin;->a([II)Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f060013

    invoke-static {p1, v0}, Labx;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_4

    :cond_c
    const v0, 0x7f08011b

    if-ne p2, v0, :cond_d

    const p2, 0x7f060016

    invoke-static {p1, p2}, Labx;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const p2, 0x7f08011b

    goto :goto_4

    :cond_d
    goto :goto_4

    :cond_e
    :goto_3
    const v0, 0x7f060017

    invoke-static {p1, v0}, Labx;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_4
    if-eqz v1, :cond_14

    iget-object v0, p0, Lms;->c:Ljava/util/WeakHashMap;

    if-nez v0, :cond_f

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lms;->c:Ljava/util/WeakHashMap;

    :cond_f
    iget-object v0, p0, Lms;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxg;

    if-nez v0, :cond_10

    new-instance v0, Lxg;

    invoke-direct {v0}, Lxg;-><init>()V

    iget-object v3, p0, Lms;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_10
    :goto_5
    iget p1, v0, Lxg;->d:I

    if-eqz p1, :cond_11

    iget-object v3, v0, Lxg;->b:[I

    add-int/lit8 v4, p1, -0x1

    aget v3, v3, v4

    if-gt p2, v3, :cond_11

    invoke-virtual {v0, p2, v1}, Lxg;->d(ILjava/lang/Object;)V

    goto :goto_6

    :cond_11
    iget-boolean v3, v0, Lxg;->a:Z

    if-eqz v3, :cond_12

    iget-object v3, v0, Lxg;->b:[I

    array-length v3, v3

    if-lt p1, v3, :cond_12

    invoke-static {v0}, Lxh;->b(Lxg;)V

    :cond_12
    iget p1, v0, Lxg;->d:I

    iget-object v3, v0, Lxg;->b:[I

    array-length v4, v3

    if-lt p1, v4, :cond_13

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Lxi;->d(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v0, Lxg;->b:[I

    iget-object v3, v0, Lxg;->c:[Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v0, Lxg;->c:[Ljava/lang/Object;

    :cond_13
    iget-object v3, v0, Lxg;->b:[I

    aput p2, v3, p1

    iget-object p2, v0, Lxg;->c:[Ljava/lang/Object;

    aput-object v1, p2, p1

    add-int/2addr p1, v2

    iput p1, v0, Lxg;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_6
    monitor-exit p0

    return-object v1

    :cond_14
    move-object v0, v1

    :cond_15
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public final declared-synchronized c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lms;->d(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized d(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    monitor-enter p0

    :try_start_0
    iget-boolean v3, v1, Lms;->f:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v5, v1, Lms;->f:Z

    const v3, 0x7f08012f

    invoke-virtual {v1, v0, v3}, Lms;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1b

    instance-of v6, v3, Latr;

    if-nez v6, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v6, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    :cond_1
    :goto_0
    iget-object v3, v1, Lms;->e:Landroid/util/TypedValue;

    if-nez v3, :cond_2

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iput-object v3, v1, Lms;->e:Landroid/util/TypedValue;

    :cond_2
    iget-object v3, v1, Lms;->e:Landroid/util/TypedValue;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2, v3, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v6, v3, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v6, v6

    iget v8, v3, Landroid/util/TypedValue;->data:I

    int-to-long v8, v8

    const/16 v10, 0x20

    shl-long/2addr v6, v10

    or-long/2addr v6, v8

    invoke-direct {v1, v0, v6, v7}, Lms;->i(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const v9, 0x7f080113

    const v10, 0x7f080114

    const v11, 0x7f080115

    const/4 v12, 0x0

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    iget-object v8, v1, Lms;->g:Lmr;

    if-nez v8, :cond_4

    move-object v8, v12

    goto :goto_1

    :cond_4
    const v8, 0x7f0800f1

    if-ne v2, v8, :cond_5

    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    const/4 v13, 0x2

    new-array v13, v13, [Landroid/graphics/drawable/Drawable;

    const v14, 0x7f0800f0

    invoke-virtual {v1, v0, v14}, Lms;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    aput-object v14, v13, v4

    const v14, 0x7f0800f2

    invoke-virtual {v1, v0, v14}, Lms;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    aput-object v14, v13, v5

    invoke-direct {v8, v13}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    if-ne v2, v10, :cond_6

    const v8, 0x7f07003b

    invoke-static {v1, v0, v8}, Lin;->c(Lms;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v8

    goto :goto_1

    :cond_6
    if-ne v2, v9, :cond_7

    const v8, 0x7f07003c

    invoke-static {v1, v0, v8}, Lin;->c(Lms;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v8

    goto :goto_1

    :cond_7
    if-ne v2, v11, :cond_8

    const v2, 0x7f07003d

    invoke-static {v1, v0, v2}, Lin;->c(Lms;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v2

    move-object v8, v2

    const v2, 0x7f080115

    goto :goto_1

    :cond_8
    move-object v8, v12

    :goto_1
    if-eqz v8, :cond_9

    iget v3, v3, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v8, v3}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    invoke-direct {v1, v0, v6, v7, v8}, Lms;->j(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V

    :cond_9
    :goto_2
    if-nez v8, :cond_a

    invoke-static {v0, v2}, Labt;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    :cond_a
    if-eqz v8, :cond_19

    invoke-virtual {v1, v0, v2}, Lms;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_e

    sget-object v0, Lkh;->a:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, v3}, Lacv;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object v3, v1, Lms;->g:Lmr;

    if-nez v3, :cond_b

    goto :goto_3

    :cond_b
    const v3, 0x7f080122

    if-ne v2, v3, :cond_c

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    :cond_c
    :goto_3
    if-eqz v12, :cond_d

    invoke-static {v0, v12}, Lacv;->h(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_4

    :cond_d
    :goto_4
    move-object v12, v0

    goto/16 :goto_9

    :cond_e
    iget-object v3, v1, Lms;->g:Lmr;

    const v6, 0x7f04015e

    const v7, 0x7f040160

    if-eqz v3, :cond_11

    const v13, 0x7f08011d

    const v14, 0x102000d

    const v15, 0x102000f

    const/high16 v5, 0x1020000

    if-ne v2, v13, :cond_f

    move-object v2, v8

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v0, v7}, Lnf;->b(Landroid/content/Context;I)I

    move-result v4

    sget-object v5, Lio;->a:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v4, v5}, Lin;->d(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v15}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v0, v7}, Lnf;->b(Landroid/content/Context;I)I

    move-result v4

    sget-object v5, Lio;->a:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v4, v5}, Lin;->d(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v14}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v6}, Lnf;->b(Landroid/content/Context;I)I

    move-result v0

    sget-object v3, Lio;->a:Landroid/graphics/PorterDuff$Mode;

    :goto_5
    invoke-static {v2, v0, v3}, Lin;->d(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_8

    :cond_f
    if-eq v2, v10, :cond_10

    if-eq v2, v9, :cond_10

    if-ne v2, v11, :cond_11

    :cond_10
    move-object v2, v8

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v0, v7}, Lnf;->a(Landroid/content/Context;I)I

    move-result v4

    sget-object v5, Lio;->a:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v4, v5}, Lin;->d(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v15}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v0, v6}, Lnf;->b(Landroid/content/Context;I)I

    move-result v4

    sget-object v5, Lio;->a:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v4, v5}, Lin;->d(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v14}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v6}, Lnf;->b(Landroid/content/Context;I)I

    move-result v0

    sget-object v3, Lio;->a:Landroid/graphics/PorterDuff$Mode;

    goto :goto_5

    :cond_11
    if-eqz v3, :cond_18

    sget-object v5, Lio;->a:Landroid/graphics/PorterDuff$Mode;

    move-object v9, v3

    check-cast v9, Lin;

    iget-object v9, v9, Lin;->a:[I

    invoke-static {v9, v2}, Lin;->a([II)Z

    move-result v9

    const/4 v10, -0x1

    if-eqz v9, :cond_12

    const/4 v2, -0x1

    const/4 v4, 0x1

    const v6, 0x7f040160

    goto :goto_7

    :cond_12
    move-object v7, v3

    check-cast v7, Lin;

    iget-object v7, v7, Lin;->c:[I

    invoke-static {v7, v2}, Lin;->a([II)Z

    move-result v7

    if-eqz v7, :cond_13

    :goto_6
    const/4 v2, -0x1

    const/4 v4, 0x1

    goto :goto_7

    :cond_13
    check-cast v3, Lin;

    iget-object v3, v3, Lin;->d:[I

    invoke-static {v3, v2}, Lin;->a([II)Z

    move-result v3

    const v6, 0x1010031

    if-eqz v3, :cond_14

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_6

    :cond_14
    const v3, 0x7f080106

    if-ne v2, v3, :cond_15

    const v2, 0x42233333    # 40.8f

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const v4, 0x1010030

    const/4 v4, 0x1

    const v6, 0x1010030

    goto :goto_7

    :cond_15
    const v3, 0x7f0800f4

    if-ne v2, v3, :cond_16

    const/4 v2, -0x1

    const/4 v4, 0x1

    goto :goto_7

    :cond_16
    const/4 v2, -0x1

    const/4 v6, 0x0

    :goto_7
    if-eqz v4, :cond_18

    sget-object v3, Lkh;->a:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v0, v6}, Lnf;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0, v5}, Lio;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eq v2, v10, :cond_17

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_17
    goto :goto_8

    :cond_18
    if-eqz p3, :cond_19

    goto :goto_9

    :cond_19
    :goto_8
    move-object v12, v8

    :goto_9
    if-eqz v12, :cond_1a

    invoke-static {v12}, Lkh;->c(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1a
    monitor-exit p0

    return-object v12

    :cond_1b
    :try_start_1
    iput-boolean v4, v1, Lms;->f:Z

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method

.method public final declared-synchronized f(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lms;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxc;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lxc;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g(Lmr;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lms;->g:Lmr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
