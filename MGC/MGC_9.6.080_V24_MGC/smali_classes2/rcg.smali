.class public final Lrcg;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lufp;

.field public static final b:Luif;


# instance fields
.field public final c:Ljava/util/List;

.field private final d:Landroid/graphics/Matrix;

.field private final e:Landroid/graphics/RectF;

.field private final f:Landroid/graphics/Rect;

.field private final g:Ltxs;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    goto/32 :goto_19

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
    new-instance v1, Luie;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v0, v8

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v7, Lrcd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    const-wide/16 v3, 0x2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

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

    :goto_7
    sput-object v1, Lrcg;->b:Luif;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

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

    :goto_9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lugr;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

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

    :goto_d
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v7}, Lrcd;-><init>()V

    goto/32 :goto_12

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    :goto_10
    invoke-virtual {v0, v1}, Lufp;->g(I)Lufp;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    const v2, 0x7fffffff

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x0

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

    :goto_13
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sput-object v0, Lrcg;->a:Lufp;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v1, v0, v2}, Luie;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    sget v1, Luig;->a:I

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

    :goto_17
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x2

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

    nop

    :goto_1a
    new-instance v0, Landroid/os/Handler;

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

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0, v8}, Lugr;-><init>(Ljava/util/concurrent/Executor;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x1b

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1f
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

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

    :goto_20
    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_21
    const/4 v2, 0x0

    nop

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

    :goto_22
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_1

    nop

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

    nop

    :goto_1
    sget-object v0, Ltyw;->a:Ltyw;

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

    :goto_2
    invoke-direct {p0, v0}, Lrcg;-><init>(Ljava/util/List;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lrcg;->f:Landroid/graphics/Rect;

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

    :goto_1
    iput-object p1, p0, Lrcg;->g:Ltxs;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lrcg;->e:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    new-instance p1, Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    new-instance p1, Landroid/graphics/Rect;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    sget-object v0, Lrny;->b:Lrny;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    const/4 p1, 0x3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    new-instance p1, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    iput-object p1, p0, Lrcg;->d:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Lrcg;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_b

    nop

    nop

    :goto_e
    invoke-static {p1, v0}, Lrgw;->al(ILuaz;)Ltxs;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/view/View;IILjava/util/Map;)Lrcj;
    .locals 6

    goto/32 :goto_9b

    nop

    nop

    :goto_0
    const-string v1, "hierarchy_height"

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

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    nop

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

    :goto_2
    goto/16 :goto_7b

    nop

    :goto_3
    goto/32 :goto_90

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_5
    if-nez v4, :cond_1

    nop

    nop

    goto/32 :goto_81

    nop

    :cond_1
    goto/32 :goto_97

    nop

    nop

    :goto_6
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lrci;

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_9
    invoke-static {v2}, Luda;->q(F)I

    move-result v2

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

    :goto_a
    invoke-interface {v1}, Lueb;->a()Ljava/util/Iterator;

    move-result-object p3

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_b
    iget-object p3, p0, Lrcg;->d:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p3, p0, Lrcg;->d:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_e
    const-string p3, "go link"

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v1, "HSV has support for Compose, but an extension needs to be installed to use it. See go/hsv-compose for more info."

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_10
    invoke-interface {p3}, Ltxs;->a()Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_12
    add-int/2addr p2, p3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_13
    const/4 p3, -0x1

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Lrci;->g(Lrcj;)V

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_15
    iget-object v3, p0, Lrcg;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1, p3}, Lrci;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/32 :goto_5e

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_18
    iget-object v3, p0, Lrcg;->e:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget p3, p3, Luoj;->a:I

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p3, p1}, Lubk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int/lit8 v3, v1, 0x1

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_1c
    const v1, 0x18

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v1, Ldwf;

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v3, v1, v4}, Lrci;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v3, p0, Lrcg;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast p1, Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_22
    iget-object v4, v4, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_23
    invoke-virtual {v0, v1, p3}, Lrci;->e(Ljava/lang/CharSequence;I)V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_24
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {}, Lrkm;->ai()V

    :goto_27
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

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

    :goto_29
    invoke-virtual {v0, p0}, Lrci;->g(Lrcj;)V

    :goto_2a
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, p3}, Lrci;->g(Lrcj;)V

    :goto_2c
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_2d
    if-nez v4, :cond_2

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v1, "hierarchy_depth"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2f
    invoke-virtual {p3, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v3}, Lrci;-><init>()V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0, v1, p2}, Lrci;->e(Ljava/lang/CharSequence;I)V

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v3, p3, v1}, Lrci;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const-string v2, "hashcode"

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

    :goto_35
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0, v2, p2, v1, p4}, Lrcg;->a(Landroid/view/View;IILjava/util/Map;)Lrcj;

    move-result-object v1

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

    :goto_39
    if-nez p3, :cond_3

    nop

    goto/32 :goto_2a

    nop

    :cond_3
    goto/32 :goto_5f

    nop

    nop

    :goto_3a
    const-string v2, "resource_id"

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_3b
    const-string v2, "package"

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_2c

    nop

    :goto_3d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v4}, Luda;->q(F)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v4, p0, Lrcg;->e:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_41
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    instance-of p3, p1, Landroid/view/ViewGroup;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_43
    iget-object p3, p0, Lrcg;->f:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_45
    invoke-virtual {v0, v2, p3}, Lrci;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_46
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_47
    if-eqz v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_4
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_48
    invoke-static {p3, v2}, Lqqm;->g(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-nez v4, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_68

    nop

    nop

    :goto_4a
    check-cast v2, Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v3, p3, v1}, Lrci;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v3, v2, p3}, Lrci;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-interface {v4, v0, p1}, Lrbz;->a(Lrcs;Landroid/view/View;)V

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_4e
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_50
    int-to-float v2, v2

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_51
    invoke-static {v4, v5}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_53
    if-nez p3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_6
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_54
    invoke-static {v5}, Luda;->q(F)I

    move-result v5

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

    :goto_55
    iget-object v5, p0, Lrcg;->e:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_56
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p0, p1, p2, p3, p4}, Lrcg;->a(Landroid/view/View;IILjava/util/Map;)Lrcj;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_58
    iget-object p3, p0, Lrcg;->e:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_59
    check-cast v4, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v0, v2, p3}, Lrci;->e(Ljava/lang/CharSequence;I)V

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_5b
    move v1, v3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v2, p0, Lrcg;->e:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_5d
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_5f
    const/4 p3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_60
    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_61
    iget v2, v2, Landroid/graphics/RectF;->left:F

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_62
    const-string v5, "com.google.android.libraries.view.hierarchysnapshotter.compose.ComposeExtension"

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v0, v2, p3}, Lrci;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_65
    goto/32 :goto_b

    nop

    nop

    :goto_66
    invoke-virtual {v0, v1, p3}, Lrci;->e(Ljava/lang/CharSequence;I)V

    :goto_67
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget-object v2, p0, Lrcg;->e:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_6a
    check-cast v4, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_6b
    const-string v2, "bounds"

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_6c
    if-nez p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6d
    if-nez p3, :cond_8

    nop

    nop

    goto/32 :goto_67

    nop

    :cond_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

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

    :goto_6f
    return-object p0

    nop

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {p3, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    const-string v4, "\ud83d\ude80 \ud83d\ude80 \ud83d\ude80 See go/hsv-compose \ud83d\ude80 \ud83d\ude80 \ud83d\ude80"

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v0}, Lrci;->a()Lrcj;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

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

    :goto_77
    invoke-virtual {p1}, Landroid/view/View;->hashCode()I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_78
    const-string v4, "androidx.compose.ui.platform.ComposeView"

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    const-string v1, "index"

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_7a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7c
    check-cast p3, Luoj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_7d
    if-ltz v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_9
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget v3, v3, Landroid/graphics/RectF;->top:F

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_80
    goto :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-direct {v0}, Lrci;-><init>()V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_84
    if-nez p3, :cond_a

    nop

    goto/32 :goto_65

    nop

    nop

    :cond_a
    goto/32 :goto_3a

    nop

    nop

    :goto_85
    invoke-static {v3}, Luda;->q(F)I

    move-result v3

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    check-cast p3, Lubk;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_87
    if-nez v4, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :cond_b
    goto/32 :goto_95

    nop

    nop

    :goto_88
    new-instance v3, Lrci;

    nop

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

    :goto_89
    invoke-virtual {p1, p3}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object p3, p0, Lrcg;->d:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-interface {p4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    nop

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

    nop

    :goto_8e
    invoke-virtual {v3}, Lrci;->a()Lrcj;

    move-result-object p3

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_8f
    const-string v1, "go/hsv-compose"

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_90
    iget-object p3, p0, Lrcg;->g:Ltxs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_91
    invoke-virtual {p3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_92
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_93
    const-string p3, "description"

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

    :goto_94
    invoke-virtual {p3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_95
    goto :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_96
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_98
    iget-object p3, p0, Lrcg;->f:Landroid/graphics/Rect;

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_99
    const-string v1, "class"

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-static {v3, v4}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_9b
    const v0, 0x7

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

    :goto_9c
    check-cast p1, Landroid/view/ViewGroup;

    nop

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

    :goto_9d
    invoke-direct {v1, p1, p3}, Ldwf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    if-nez v2, :cond_c

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    goto/16 :goto_2c

    nop

    nop

    :goto_a0
    goto/32 :goto_88

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_a2
    invoke-virtual {v0, v2, p3}, Lrci;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_a3
    iget v4, v4, Landroid/graphics/RectF;->right:F

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

    nop
.end method

.method public final b(Landroid/view/View;Ljava/io/OutputStream;Luad;Ltzy;)Ljava/lang/Object;
    .locals 25

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e2

    nop

    nop

    :goto_1
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v5, Lucr;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v2, Lrce;

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v12, v2, Lrce;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v4, :cond_1

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_8
    check-cast v14, Ljava/io/OutputStream;

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_9
    move-object v14, v15

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v4, v2, Lrce;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v4, Lrcf;

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

    nop

    :goto_c
    move-object/from16 v18, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_d
    sub-long v4, v16, v4

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_e
    const v1, 0x3

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v3, v2, Lrce;->k:I

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_10
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-wide v1, v7, Lucr;->a:J

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-wide v5, v9

    nop

    nop

    :goto_13
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct/range {v16 .. v22}, Lrcf;-><init>(Ljava/io/OutputStream;Lrct;Lrcg;Lucs;Ltzy;I)V

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v0, Lucs;

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_16
    move-wide/from16 v23, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_17
    iput-object v14, v2, Lrce;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v11, Lrct;

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-wide v9, v2, Lrce;->g:J

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    instance-of v2, v1, Lrce;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1b
    move-object v11, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_1c
    const/16 v22, 0x1

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_1e
    iget-object v6, v2, Lrce;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v9, 0x3

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v15, v2, Lrce;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_21
    move-object/from16 v15, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_22
    move-object/from16 v18, v1

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

    :goto_23
    move-object/from16 v20, v0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v0, v2, Lrce;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v9, v2, Lrce;->m:Lucr;

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move-object/from16 v19, v5

    nop

    goto/32 :goto_e8

    nop

    nop

    :goto_27
    iget-wide v3, v2, Lrce;->h:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v5}, Lucr;-><init>()V

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-object v9, v2, Lrce;->l:Lucr;

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_2b
    const/high16 v4, -0x80000000

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_2c
    iput v15, v2, Lrce;->k:I

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_2d
    invoke-static {v1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_40

    nop

    nop

    :goto_2e
    check-cast v7, Lucr;

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v15, 0x2

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

    :goto_30
    check-cast v13, Luad;

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_31
    invoke-direct {v1}, Lucr;-><init>()V

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v15, v2, Lrce;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_33
    iget-object v13, v2, Lrce;->d:Ljava/lang/Object;

    nop

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

    :goto_34
    iput-object v0, v2, Lrce;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_35
    iput-object v1, v2, Lrce;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_36
    iget-wide v4, v2, Lrce;->h:J

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_37
    iput-wide v9, v4, Lucr;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_39
    iput-object v8, v2, Lrce;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_3a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_92

    nop

    nop

    :goto_3b
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_54

    nop

    nop

    :goto_3d
    iput-wide v7, v2, Lrce;->h:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_3f
    iget-object v11, v2, Lrce;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_40
    new-instance v1, Lucr;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_42
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iput-wide v9, v0, Lucr;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_44
    invoke-static {v6, v13, v2}, Lucd;->s(Luad;Lubo;Ltzy;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_45
    move-object/from16 v20, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_46
    move-object v11, v13

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_47
    sub-long/2addr v9, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v0, v2, Lrce;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/16 :goto_a0

    nop

    nop

    :goto_4a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_4c
    iput-object v4, v2, Lrce;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_4d
    move-object v2, v12

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_4e
    check-cast v0, Lucr;

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_4f
    iget-object v5, v2, Lrce;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_50
    new-instance v4, Lucs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_51
    move-object/from16 v17, v0

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_52
    invoke-direct {v1}, Lrct;-><init>()V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_54
    return-object v3

    nop

    nop

    :goto_55
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v2, v2, Lrce;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_57
    iput-object v5, v2, Lrce;->m:Lucr;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    move-object v1, v0

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const/16 v21, 0x0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_5a
    move-object v4, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_5b
    move-object v0, v7

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

    :goto_5c
    iput-object v0, v2, Lrce;->c:Ljava/lang/Object;

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

    :goto_5d
    if-ne v8, v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const/4 v14, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-ne v4, v7, :cond_3

    nop

    goto/32 :goto_74

    nop

    :cond_3
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iput-wide v5, v2, Lrce;->h:J

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

    :goto_61
    sub-int/2addr v3, v4

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_62
    check-cast v8, Lucr;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    check-cast v13, Lucr;

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_64
    if-ne v6, v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_ce

    nop

    nop

    :goto_65
    move-object v0, v6

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_66
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

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

    :goto_67
    move-object/from16 v17, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iput v3, v2, Lrce;->k:I

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_69
    move-object/from16 v1, p4

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

    nop

    :goto_6a
    iget-object v4, v2, Lrce;->m:Lucr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_6b
    sub-long/2addr v9, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_6c
    iget-object v14, v2, Lrce;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6d
    iget-object v13, v2, Lrce;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_6f
    iput-wide v4, v1, Lucr;->a:J

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_70
    const/16 v21, 0x0

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iput-wide v11, v2, Lrce;->h:J

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_72
    check-cast v0, Lucr;

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    goto/16 :goto_13

    nop

    :goto_74
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_75
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_76
    iget-object v12, v2, Lrce;->l:Lucr;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_77
    if-eq v4, v5, :cond_5

    nop

    goto/32 :goto_84

    nop

    :cond_5
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iget-wide v9, v2, Lrce;->g:J

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_79
    iput-object v1, v2, Lrce;->l:Lucr;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_7a
    sget-object v6, Lrcg;->a:Lufp;

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    :goto_7b
    move-wide v3, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_7c
    iput v7, v2, Lrce;->k:I

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

    :goto_7d
    move-wide/from16 v4, v23

    nop

    nop

    :goto_7e
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v11, v2, Lrce;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_80
    iput-wide v9, v2, Lrce;->g:J

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-static {v1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_82
    iput-object v1, v2, Lrce;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_83
    goto/16 :goto_b2

    nop

    nop

    :goto_84
    goto/32 :goto_1d

    nop

    nop

    :goto_85
    move-object/from16 v17, v15

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_86
    move-wide v7, v5

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_87
    check-cast v15, Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_88
    check-cast v6, Lrcg;

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_89
    check-cast v15, Ljava/io/OutputStream;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object v8, v2, Lrce;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_8c
    move-object/from16 v8, p3

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_8d
    move-object/from16 v16, v8

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_8e
    if-ne v4, v6, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    :cond_6
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iget-object v0, v2, Lrce;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_90
    check-cast v2, Lrce;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    move-object v12, v14

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_92
    throw v0

    nop

    nop

    :goto_93
    goto/32 :goto_c2

    nop

    nop

    :goto_94
    sub-long/2addr v0, v5

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iput-wide v9, v2, Lrce;->g:J

    nop

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

    :goto_96
    move-object/from16 v20, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_97
    check-cast v14, Lucr;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    move-object/from16 v19, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_99
    iget-object v7, v2, Lrce;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_9a
    const/4 v5, 0x3

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_9b
    sget-object v0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_9c
    check-cast v5, Lrcg;

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    const/16 v22, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    iget-object v0, v2, Lrce;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-direct {v2, v0, v1}, Lrce;-><init>(Lrcg;Ltzy;)V

    :goto_a0
    goto/32 :goto_cb

    nop

    nop

    :goto_a1
    const/4 v9, 0x0

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_a2
    move-object/from16 v19, v14

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iget-wide v1, v2, Lucr;->a:J

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_a4
    iget v4, v2, Lrce;->k:I

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-static {v1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_58

    nop

    nop

    :goto_a6
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a7
    iget-object v12, v2, Lrce;->l:Lucr;

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    iput v9, v2, Lrce;->k:I

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_a9
    check-cast v2, Lucr;

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    new-instance v4, Lucr;

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_ab
    sget-object v3, Luag;->a:Luag;

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_ac
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_ad
    new-instance v1, Lrct;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    iget-wide v5, v2, Lrce;->g:J

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_af
    invoke-direct {v4}, Lucs;-><init>()V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    move-object/from16 v18, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_b1
    move-object v7, v0

    nop

    :goto_b2
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_b3
    move-object/from16 v16, v4

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b4
    move-object v8, v11

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    iput-object v11, v2, Lrce;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    and-int v5, v3, v4

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_b9
    move-wide v5, v9

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_ba
    iput-object v0, v2, Lrce;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    iput-object v9, v2, Lrce;->e:Ljava/lang/Object;

    nop

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

    :goto_bc
    iget-object v15, v2, Lrce;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_bd
    goto/16 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_be
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    iput-object v14, v2, Lrce;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c0
    move-object/from16 v19, v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_c1
    move-object v13, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_c2
    iget-wide v6, v2, Lrce;->h:J

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_c3
    iput-object v11, v2, Lrce;->m:Lucr;

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

    :goto_c4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_c6
    check-cast v11, Lucr;

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_c7
    move-object/from16 v14, p1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_c8
    sget-object v1, Lrcg;->a:Lufp;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_c9
    iget-object v14, v2, Lrce;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_ca
    move-object v0, v12

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    iget-object v1, v2, Lrce;->i:Ljava/lang/Object;

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_cc
    if-nez v5, :cond_7

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    :cond_7
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_cd
    if-ne v1, v3, :cond_8

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    move-object v7, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_cf
    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    invoke-static {v13, v8, v2}, Lucd;->s(Luad;Lubo;Ltzy;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_d1
    iput-object v7, v2, Lrce;->l:Lucr;

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_d2
    move-object v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    new-instance v8, Lrcf;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_d4
    new-instance v13, Legh;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_d5
    iput-wide v5, v2, Lrce;->g:J

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_d6
    invoke-direct {v4}, Lucr;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_d7
    sget-object v3, Lrck;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_d8
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_d9
    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_da
    const/4 v6, 0x2

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_db
    invoke-direct/range {v16 .. v22}, Lrcf;-><init>(Lrcg;Lrct;Landroid/view/View;Lucs;Ltzy;I)V

    goto/32 :goto_24

    nop

    nop

    :goto_dc
    iput-object v12, v2, Lrce;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    :goto_dd
    invoke-static {v1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_de
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    invoke-static {v1, v4, v2}, Lucd;->s(Luad;Lubo;Ltzy;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_e0
    move-object v12, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_e1
    iget-object v7, v2, Lrce;->m:Lucr;

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_e2
    if-lez v0, :cond_9

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_d8

    nop

    :goto_e3
    iput-object v11, v2, Lrce;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_e4
    invoke-direct {v13, v0, v8, v14}, Legh;-><init>(Lrcg;Ltzy;I)V

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    const/4 v7, 0x1

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_e6
    iget-wide v1, v8, Lucr;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_e7
    iput-object v9, v2, Lrce;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    move-wide v7, v6

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop
.end method

.method public final c(Lrcj;Lorg/xmlpull/v1/XmlSerializer;Lqat;)V
    .locals 12

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v7, p2, p3}, Lrct;->a(Lorg/xmlpull/v1/XmlSerializer;Lqat;)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v4, Lrch;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2
    if-nez v8, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2, p2, p3}, Lrct;->a(Lorg/xmlpull/v1/XmlSerializer;Lqat;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v4, p1, Lrcj;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    if-eqz v8, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    :cond_1
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    const v0, 0x1d

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_53

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    if-ltz v6, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :cond_2
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_b
    new-instance v7, Lrct;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v2, p2, p3}, Lrcg;->c(Lrcj;Lorg/xmlpull/v1/XmlSerializer;Lqat;)V

    goto/32 :goto_16

    nop

    nop

    :goto_d
    move v7, v9

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    if-ltz v7, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_f
    if-nez v4, :cond_4

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5b

    nop

    nop

    :goto_10
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_21

    nop

    :goto_12
    add-int/lit8 v9, v7, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_13
    if-nez v8, :cond_5

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_5
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v5, v6, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_15
    if-nez v2, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_16
    goto :goto_23

    nop

    nop

    :goto_17
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v8, v8, Lrch;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v3, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1a
    check-cast v8, Lrch;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_1b
    invoke-virtual {p3, v8}, Lqat;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v8, v4, Lrch;->b:Ljava/lang/String;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1d
    iget-object v8, v4, Lrch;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    :goto_1f
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_60

    nop

    nop

    :goto_24
    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/32 :goto_1e

    nop

    nop

    :goto_25
    iget-object v10, v8, Lrch;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v10, v8, Lrch;->a:Ljava/lang/String;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_3f

    nop

    nop

    :goto_29
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_7
    goto/32 :goto_20

    nop

    :goto_2a
    new-instance v3, Ljava/util/BitSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_2c
    iget-object v11, v2, Lrct;->a:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_2d
    if-eqz v6, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v2}, Lrct;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v2, v7, v8}, Lrct;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_30
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {}, Lrkm;->ai()V

    :goto_32
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_35
    const-string v1, "node"

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_36
    const-string v0, ""

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_37
    add-int v0, v0, v1

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_38
    iget-object v10, v8, Lrch;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3a
    if-eqz v10, :cond_9

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_4c

    nop

    nop

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3c
    iget-object v8, v4, Lrch;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object p1, p1, Lrcj;->a:Ljava/util/List;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v8}, Luch;->r(Ljava/lang/CharSequence;)Z

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_41
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-nez v10, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v10, v8, Lrch;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const-string v9, "value"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v7, v8, Lrch;->a:Ljava/lang/String;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_30

    nop

    nop

    :goto_47
    goto/32 :goto_25

    nop

    nop

    :goto_48
    const-string v9, "name"

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-interface {p2, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/32 :goto_b

    nop

    nop

    :goto_4b
    new-instance v2, Lrct;

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

    :goto_4c
    invoke-virtual {v3, v7}, Ljava/util/BitSet;->set(I)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v7, v9, v8}, Lrct;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_4e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const v1, 0x10

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-direct {v7}, Lrct;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v4, v4, Lrch;->c:Ljava/util/List;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_52
    move v7, v6

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_54
    const-string v6, "a"

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-interface {p2, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_56
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_57
    move v6, v5

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-interface {v11, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v7, v9, v8}, Lrct;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_5a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5c
    invoke-static {v10}, Luch;->r(Ljava/lang/CharSequence;)Z

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_5d
    if-nez v10, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    :cond_b
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-static {}, Lrkm;->ai()V

    :goto_5f
    goto/32 :goto_1

    nop

    nop

    :goto_60
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_61
    check-cast v2, Lrcj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method public final d(Landroid/view/View;Ljava/util/Map;)Luoj;
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v3, p2}, Lrcg;->d(Landroid/view/View;Ljava/util/Map;)Luoj;

    move-result-object v3

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

    nop

    :goto_2
    invoke-direct {v2, v0, v1}, Ldwf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v2}, Lueb;->a()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

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

    nop

    :goto_6
    const v0, 0x9

    nop

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

    :goto_7
    invoke-direct {p0, v1}, Luoj;-><init>(I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_5

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    move v2, v1

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_d
    move-object v0, p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x1

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

    :goto_f
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_26

    nop

    nop

    :goto_13
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v2, Ldwf;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    move v1, v2

    nop

    nop

    :goto_16
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_18
    goto/16 :goto_b

    nop

    :goto_19
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1b
    iget v3, v3, Luoj;->a:I

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

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1e
    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1f
    return-object p0

    nop

    nop

    :goto_20
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    new-instance p0, Luoj;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0x1d

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_24
    add-int/2addr v3, v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_25
    invoke-static {v2, v3}, Lucd;->h(II)I

    move-result v2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_26
    instance-of v0, p1, Landroid/view/ViewGroup;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_27
    check-cast v3, Landroid/view/View;

    nop

    goto/32 :goto_1

    nop

    nop
.end method
