.class public abstract Lcwl;
.super Landroid/view/ViewGroup;
.source "PG"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Landroid/os/IBinder;

.field private c:Lblw;

.field private d:Z

.field private e:Z


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em()V
    .locals 3

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_17

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    :goto_b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_d
    const-string v2, "Cannot add views to "

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    const-string p0, "; only Compose content is supported"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    :goto_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

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

    :goto_11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x15

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

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
    goto/32 :goto_a

    nop

    nop

    :goto_16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-boolean v0, p0, Lcwl;->d:Z

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_18
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method private final 7ecc92917e9c4556cc19f457ddc41af8m(Lblx;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lcwl;->g(Lblx;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    const v0, 0x14

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    :goto_7
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    if-ne v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_11
    iput-object v0, p0, Lcwl;->a:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    goto/32 :goto_1

    nop

    nop

    :goto_0
    move-object v0, p0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v3, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v1, p1

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

    :goto_4
    const v1, 0x7

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
    const/4 v4, 0x6

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_10

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_a
    invoke-direct/range {v0 .. v5}, Lcwl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILucd;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x0

    nop

    goto/32 :goto_2

    nop

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    :goto_f
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    move-object v1, p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x15

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const v0, 0x16

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v4, 0x4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_6
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    move-object v2, p2

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    goto/32 :goto_4

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
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    invoke-direct/range {v0 .. v5}, Lcwl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILucd;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Ldcu;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    const/16 v2, 0x3bd

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_3

    nop

    nop

    nop

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
    goto/32 :goto_a

    nop

    nop

    :goto_5
    check-cast p0, Ljava/util/ArrayList;

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
    invoke-virtual {p0, p1}, Lcwl;->setClipToPadding(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p1, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1}, Lcwl;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v2, v3, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    check-cast p0, Lfdn;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_d
    invoke-direct {p1, p0}, Ldct;-><init>(Lcwl;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_11
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, p1}, Lcwl;->setClipChildren(Z)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

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

    :goto_16
    invoke-direct {p1, p0}, Ldcu;-><init>(Lcwl;)V

    goto/32 :goto_9

    nop

    nop

    :goto_17
    new-array v0, v0, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_19
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1a
    aput-object p0, v0, v2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lfdn;->a:Ljava/lang/Object;

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

    :goto_1d
    new-instance p1, Ldct;

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
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILucd;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcwl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p3, 0x0

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    and-int/lit8 p5, p4, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    const/4 p2, 0x0

    nop

    nop

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
    and-int/lit8 p4, p4, 0x4

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p5, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

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
.end method

.method private static final g(Lblx;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    instance-of v0, p0, Lbpv;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lbpv;

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

    :goto_2
    const/4 p0, 0x0

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
    iget-object p0, p0, Lbpv;->o:Lulh;

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

    :goto_4
    sget-object v0, Lbpi;->b:Lbpi;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p0, Lbpi;

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

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0}, Lulf;->b()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Lbpi;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x1

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

    :goto_b
    if-gtz p0, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    :goto_e
    goto :goto_d

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public abstract a(Lblm;I)V
.end method

.method public final addView(Landroid/view/View;)V
    .locals 0

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

    nop

    :goto_1
    invoke-direct {p0}, Lcwl;->23ce148e54b083367f51e25c7971761em()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcwl;->23ce148e54b083367f51e25c7971761em()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final addView(Landroid/view/View;II)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lcwl;->23ce148e54b083367f51e25c7971761em()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcwl;->23ce148e54b083367f51e25c7971761em()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    goto/32 :goto_1

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
    invoke-direct {p0}, Lcwl;->23ce148e54b083367f51e25c7971761em()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lcwl;->23ce148e54b083367f51e25c7971761em()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lcwl;->23ce148e54b083367f51e25c7971761em()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcwl;->c:Lblw;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

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

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcwl;->requestLayout()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lcwl;->c:Lblw;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Lblw;->b()V

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 14

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lcwl;->d:Z

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2
    return-void

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcwl;->c:Lblw;

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

    :goto_4
    const/4 v0, 0x0

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

    :goto_5
    const v0, 0x11

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

    :goto_6
    const v1, 0x1d

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    const/4 v1, 0x1

    nop

    :try_start_0
    iput-boolean v1, p0, Lcwl;->d:Z

    nop

    nop

    nop

    nop

    invoke-static {p0}, Lddq;->a(Landroid/view/View;)Lblx;

    move-result-object v2

    nop

    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    nop

    nop

    :goto_8
    if-nez v2, :cond_0

    nop

    instance-of v4, v3, Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_0

    nop

    move-object v2, v3

    nop

    nop

    nop

    check-cast v2, Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lddq;->a(Landroid/view/View;)Lblx;

    move-result-object v2

    nop

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto :goto_8

    nop

    :cond_0
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v2}, Lcwl;->7ecc92917e9c4556cc19f457ddc41af8m(Lblx;)V

    goto :goto_9

    nop

    :cond_1
    move-object v2, v3

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v2, :cond_9

    nop

    nop

    nop

    iget-object v2, p0, Lcwl;->a:Ljava/lang/ref/WeakReference;

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lblx;

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    invoke-static {v2}, Lcwl;->g(Lblx;)Z

    move-result v4

    nop

    nop

    nop

    if-eq v1, v4, :cond_3

    nop

    nop

    nop

    nop

    :cond_2
    move-object v2, v3

    nop

    :cond_3
    if-nez v2, :cond_9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    const-string v2, "Cannot locate windowRecomposer; View "

    nop

    nop

    const-string v4, " is not attached to a window"

    nop

    nop

    invoke-static {p0, v2, v4}, La;->bn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lcnf;->b(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    nop

    move-object v4, p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    instance-of v5, v2, Landroid/view/View;

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_6

    nop

    nop

    check-cast v2, Landroid/view/View;

    nop

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v5

    nop

    nop

    nop

    nop

    const v6, 0x1020002

    nop

    if-ne v5, v6, :cond_5

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    nop

    move-object v13, v4

    nop

    nop

    nop

    nop

    move-object v4, v2

    nop

    nop

    move-object v2, v13

    nop

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    :cond_6
    :goto_b
    invoke-static {v4}, Lddq;->a(Landroid/view/View;)Lblx;

    move-result-object v2

    nop

    nop

    if-nez v2, :cond_7

    nop

    sget-object v2, Lddi;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    sget-object v2, Lddi;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lddf;

    nop

    nop

    nop

    nop

    invoke-interface {v2, v4}, Lddf;->a(Landroid/view/View;)Lbpv;

    move-result-object v2

    nop

    nop

    invoke-static {v4, v2}, Lddq;->b(Landroid/view/View;Lblx;)V

    sget-object v5, Lugs;->a:Lugs;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v6

    nop

    nop

    nop

    const-string v7, "windowRecomposer cleanup"

    nop

    nop

    nop

    nop

    sget v8, Luig;->a:I

    nop

    nop

    new-instance v8, Luie;

    nop

    invoke-direct {v8, v6, v7}, Luie;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    iget-object v6, v8, Luie;->b:Luie;

    nop

    new-instance v7, Lddh;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7, v2, v4, v3}, Lddh;-><init>(Lbpv;Landroid/view/View;Ltzy;)V

    const/4 v8, 0x2

    nop

    nop

    invoke-static {v5, v6, v0, v7, v8}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    move-result-object v5

    nop

    new-instance v6, Lddg;

    nop

    nop

    nop

    invoke-direct {v6, v5}, Lddg;-><init>(Lugy;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_7
    instance-of v4, v2, Lbpv;

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_8

    nop

    check-cast v2, Lbpv;

    nop

    :goto_c
    invoke-direct {p0, v2}, Lcwl;->7ecc92917e9c4556cc19f457ddc41af8m(Lblx;)V

    goto :goto_d

    nop

    nop

    nop

    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "root viewTreeParentCompositionContext is not a Recomposer"

    nop

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop

    nop

    nop

    :cond_9
    :goto_d
    new-instance v4, Lcwk;

    nop

    nop

    nop

    invoke-direct {v4, p0}, Lcwk;-><init>(Lcwl;)V

    new-instance v5, Lbvr;

    nop

    nop

    nop

    nop

    nop

    const v6, -0x271bffc0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v6, v1, v4}, Lbvr;-><init>(IZLjava/lang/Object;)V

    sget-object v4, Lddy;->a:Landroid/view/ViewGroup$LayoutParams;

    nop

    nop

    sget-object v4, Ldbq;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    sget-object v4, Ldbq;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    nop

    nop

    if-eqz v4, :cond_a

    nop

    const/4 v4, 0x6

    nop

    nop

    nop

    nop

    invoke-static {v1, v0, v3, v4}, Lufv;->o(IILubk;I)Luis;

    move-result-object v4

    nop

    sget-object v6, Lczw;->a:Ltxs;

    nop

    nop

    nop

    nop

    invoke-static {}, Lczu;->a()Luad;

    move-result-object v6

    nop

    nop

    invoke-static {v6}, Lufv;->i(Luad;)Lufs;

    move-result-object v6

    nop

    new-instance v7, Ldbo;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7, v4, v3}, Ldbo;-><init>(Luis;Ltzy;)V

    const/4 v8, 0x3

    nop

    nop

    invoke-static {v6, v3, v0, v7, v8}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    new-instance v6, Ldbp;

    nop

    nop

    invoke-direct {v6, v4}, Ldbp;-><init>(Luis;)V

    sget-object v4, Lbyg;->c:Ljava/lang/Object;

    nop

    monitor-enter v4

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v7, Lbyg;->h:Ljava/util/List;

    nop

    invoke-static {v7, v6}, Lrkm;->az(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    sput-object v6, Lbyg;->h:Ljava/util/List;

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v4

    nop

    nop

    nop

    invoke-static {}, Lbyg;->r()V

    goto :goto_e

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v1

    nop

    nop

    nop

    nop

    monitor-exit v4

    nop

    throw v1

    nop

    nop

    nop

    nop

    nop

    :cond_a
    :goto_e
    invoke-virtual {p0}, Lcwl;->getChildCount()I

    move-result v4

    nop

    nop

    nop

    nop

    if-lez v4, :cond_b

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Lcwl;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    nop

    nop

    instance-of v6, v4, Lcxv;

    nop

    if-eqz v6, :cond_c

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lcxv;

    nop

    goto :goto_f

    nop

    nop

    :cond_b
    invoke-virtual {p0}, Lcwl;->removeAllViews()V

    :cond_c
    move-object v4, v3

    nop

    :goto_f
    if-nez v4, :cond_d

    nop

    nop

    new-instance v4, Lcxv;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lcwl;->getContext()Landroid/content/Context;

    move-result-object v6

    nop

    invoke-virtual {v2}, Lblx;->d()Luad;

    move-result-object v7

    nop

    nop

    nop

    invoke-direct {v4, v6, v7}, Lcxv;-><init>(Landroid/content/Context;Luad;)V

    sget-object v6, Lddy;->a:Landroid/view/ViewGroup$LayoutParams;

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v4, v6}, Lcwl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    const v6, 0x7f0b0583

    nop

    nop

    nop

    invoke-virtual {v4, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    instance-of v8, v7, Lddw;

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_e

    nop

    nop

    check-cast v7, Lddw;

    nop

    nop

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_e
    move-object v7, v3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v7, :cond_f

    nop

    new-instance v7, Lddw;

    nop

    nop

    new-instance v8, Lcwj;

    nop

    iget-object v9, v4, Lcxv;->i:Lcth;

    nop

    nop

    nop

    nop

    invoke-direct {v8, v9}, Lcwj;-><init>(Lcth;)V

    new-instance v9, Lblz;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v9, v2, v8}, Lblz;-><init>(Lblx;Lbky;)V

    invoke-direct {v7, v4, v9}, Lddw;-><init>(Lcxv;Lblw;)V

    invoke-virtual {v4, v6, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_f
    invoke-virtual {v7, v5}, Lddw;->d(Lubo;)V

    iget-object v5, v4, Lcxv;->e:Luad;

    nop

    invoke-virtual {v2}, Lblx;->d()Luad;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v6}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    nop

    if-nez v5, :cond_1d

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lblx;->d()Luad;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    iput-object v2, v4, Lcxv;->e:Luad;

    nop

    nop

    nop

    iget-object v2, v4, Lcxv;->i:Lcth;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lcth;->t:Lcun;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lcun;->e:Lbzy;

    nop

    nop

    nop

    nop

    instance-of v4, v2, Lcmp;

    nop

    if-eqz v4, :cond_10

    nop

    nop

    nop

    nop

    move-object v4, v2

    nop

    check-cast v4, Lcmp;

    nop

    nop

    invoke-interface {v4}, Lcmp;->n()V

    :cond_10
    invoke-interface {v2}, Lcrw;->y()Lbzy;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    iget-boolean v4, v4, Lbzy;->z:Z

    nop

    nop

    if-nez v4, :cond_11

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    sget-object v4, Lcom/google/android/apps/camera/ui/hotshot/NgVy/uBXLxqUja;->EjrE:Ljava/lang/String;

    nop

    nop

    nop

    invoke-static {v4}, Lcnf;->b(Ljava/lang/String;)V

    :cond_11
    new-instance v4, Lbtg;

    nop

    nop

    const/16 v5, 0x10

    nop

    nop

    nop

    nop

    new-array v6, v5, [Lbzy;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v6}, Lbtg;-><init>([Ljava/lang/Object;)V

    invoke-interface {v2}, Lcrw;->y()Lbzy;

    move-result-object v6

    nop

    nop

    nop

    iget-object v6, v6, Lbzy;->t:Lbzy;

    nop

    nop

    nop

    nop

    if-nez v6, :cond_12

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lcrw;->y()Lbzy;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v2}, Lcrx;->h(Lbtg;Lbzy;)V

    goto :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_12
    invoke-virtual {v4, v6}, Lbtg;->n(Ljava/lang/Object;)V

    :goto_11
    iget v2, v4, Lbtg;->b:I

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1d

    nop

    nop

    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v2}, Lbtg;->c(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Lbzy;

    nop

    iget v6, v2, Lbzy;->r:I

    nop

    nop

    nop

    nop

    and-int/2addr v6, v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_1c

    nop

    nop

    nop

    nop

    nop

    move-object v6, v2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v6, :cond_1c

    nop

    nop

    iget v8, v6, Lbzy;->q:I

    nop

    nop

    nop

    nop

    and-int/2addr v8, v5

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_1b

    nop

    nop

    nop

    nop

    move-object v9, v3

    nop

    nop

    nop

    move-object v8, v6

    nop

    nop

    nop

    nop

    :cond_13
    :goto_13
    if-eqz v8, :cond_1b

    nop

    nop

    nop

    nop

    instance-of v10, v8, Lcwa;

    nop

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_14

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Lcwa;

    nop

    nop

    nop

    instance-of v10, v8, Lcmp;

    nop

    nop

    nop

    if-eqz v10, :cond_1a

    nop

    nop

    nop

    nop

    check-cast v8, Lcmp;

    nop

    nop

    invoke-interface {v8}, Lcmp;->n()V

    goto/16 :goto_16

    nop

    nop

    nop

    :cond_14
    iget v10, v8, Lbzy;->q:I

    nop

    nop

    nop

    nop

    and-int/2addr v10, v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_1a

    nop

    nop

    nop

    nop

    nop

    instance-of v10, v8, Lcrz;

    nop

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_1a

    nop

    nop

    move-object v10, v8

    nop

    nop

    nop

    nop

    nop

    check-cast v10, Lcrz;

    nop

    nop

    nop

    nop

    nop

    iget-object v10, v10, Lcrz;->B:Lbzy;

    nop

    nop

    nop

    nop

    nop

    move v11, v0

    nop

    nop

    :goto_14
    if-eqz v10, :cond_19

    nop

    nop

    nop

    nop

    iget v12, v10, Lbzy;->q:I

    nop

    nop

    nop

    nop

    nop

    and-int/2addr v12, v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v12, :cond_18

    nop

    nop

    nop

    add-int/lit8 v11, v11, 0x1

    nop

    nop

    if-ne v11, v1, :cond_15

    nop

    nop

    nop

    nop

    move-object v8, v10

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_15
    if-nez v9, :cond_16

    nop

    nop

    nop

    nop

    nop

    new-instance v9, Lbtg;

    nop

    nop

    nop

    nop

    new-array v12, v5, [Lbzy;

    nop

    nop

    nop

    invoke-direct {v9, v12}, Lbtg;-><init>([Ljava/lang/Object;)V

    :cond_16
    if-eqz v8, :cond_17

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v8}, Lbtg;->n(Ljava/lang/Object;)V

    :cond_17
    invoke-virtual {v9, v10}, Lbtg;->n(Ljava/lang/Object;)V

    move-object v8, v3

    nop

    nop

    nop

    nop

    :cond_18
    :goto_15
    iget-object v10, v10, Lbzy;->t:Lbzy;

    nop

    nop

    goto :goto_14

    nop

    :cond_19
    if-eq v11, v1, :cond_13

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    :goto_16
    invoke-static {v9}, Lcrx;->a(Lbtg;)Lbzy;

    move-result-object v8

    nop

    nop

    nop

    goto/16 :goto_13

    nop

    nop

    nop

    :cond_1b
    iget-object v6, v6, Lbzy;->t:Lbzy;

    nop

    nop

    nop

    nop

    goto/16 :goto_12

    nop

    nop

    nop

    nop

    :cond_1c
    invoke-static {v4, v2}, Lcrx;->h(Lbtg;Lbzy;)V

    goto/16 :goto_11

    nop

    :cond_1d
    iput-object v7, p0, Lcwl;->c:Lblw;

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v0, :cond_1e

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1b
    iput-boolean v0, p0, Lcwl;->d:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1d
    throw v1

    nop

    :goto_1e
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_1f
    goto/32 :goto_18

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected d()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop
.end method

.method public final isTransitionGroup()Z
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-super {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    iget-boolean v0, p0, Lcwl;->e:Z

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop
.end method

.method protected final onAttachedToWindow()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x17

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

    :goto_1
    const v0, 0x3

    nop

    goto/32 :goto_0

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

    goto/32 :goto_a

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lcwl;->a:Ljava/lang/ref/WeakReference;

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcwl;->d()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lcwl;->c()V

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    if-ne v1, v0, :cond_1

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

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    :goto_10
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lcwl;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

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

    :goto_12
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v1, p0, Lcwl;->b:Landroid/os/IBinder;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_15
    iput-object v0, p0, Lcwl;->b:Landroid/os/IBinder;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x16

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lcwl;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, v0, v1, p4, p5}, Landroid/view/View;->layout(IIII)V

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    sub-int/2addr p5, p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p1, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    :goto_b
    sub-int/2addr p5, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    sub-int/2addr p4, p2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lcwl;->getPaddingRight()I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lcwl;->getPaddingBottom()I

    move-result p0

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

    :goto_10
    if-lez v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_11
    invoke-virtual {p0}, Lcwl;->getPaddingLeft()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_13
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

    :goto_14
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sub-int/2addr p4, p2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lcwl;->getPaddingTop()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 5

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x13

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

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

    :goto_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

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
    add-int/2addr p2, v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcwl;->getPaddingTop()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lcwl;->getPaddingTop()I

    move-result v4

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_7
    add-int/2addr p1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Lcwl;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_9
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_16

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

    nop

    :goto_d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

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

    :goto_f
    invoke-virtual {p0}, Lcwl;->getPaddingRight()I

    move-result v3

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lcwl;->getPaddingBottom()I

    move-result v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/2addr p2, v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sub-int/2addr v3, v4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lcwl;->getPaddingRight()I

    move-result p2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    add-int/2addr p1, p2

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

    :goto_15
    goto/32 :goto_26

    nop

    :goto_16
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lcwl;->getPaddingBottom()I

    move-result v4

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_19
    const/4 v0, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_1c
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

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

    nop

    :goto_1d
    invoke-virtual {p0, p1, p2}, Lcwl;->setMeasuredDimension(II)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    :goto_21
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_23
    sub-int/2addr v3, v4

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

    :goto_24
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    :goto_26
    goto/32 :goto_b

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Lcwl;->getPaddingLeft()I

    move-result p2

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

    :goto_29
    sub-int/2addr v2, v3

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

    :goto_2a
    sub-int/2addr v2, v3

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

    :goto_2b
    invoke-virtual {p0}, Lcwl;->c()V

    goto/32 :goto_19

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Lcwl;->getPaddingLeft()I

    move-result v3

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lcwl;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    :goto_6
    if-eqz p0, :cond_0

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

    nop

    nop

    nop
.end method

.method public final setTransitionGroup(Z)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lcwl;->e:Z

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
    return-void

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x1

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

.method public final shouldDelayChildPressedState()Z
    .locals 0

    goto/32 :goto_1

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

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
