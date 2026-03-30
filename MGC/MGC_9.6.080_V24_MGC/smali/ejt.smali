.class public final Lejt;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lejp;

.field public static final b:Ljava/util/ArrayList;

.field private static final c:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lejt;->a:Lejp;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lejx;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/ArrayList;

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

    :goto_4
    new-instance v0, Ljava/lang/ThreadLocal;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    invoke-direct {v0, v1}, Lejx;-><init>([B)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    sput-object v0, Lejt;->b:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    sput-object v0, Lejt;->c:Ljava/lang/ThreadLocal;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    :goto_b
    goto/32 :goto_2

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
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x6

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_13
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
.end method

.method static a()Lwu;
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    new-instance v2, Ljava/lang/ref/WeakReference;

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

    :goto_1
    invoke-direct {v1}, Lwu;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x13

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v1, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object v1

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_c
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    check-cast v1, Ljava/lang/ref/WeakReference;

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

    :goto_e
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v1, Lwu;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v0, Lejt;->c:Ljava/lang/ThreadLocal;

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

    :goto_12
    new-instance v1, Lwu;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

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

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop

    :goto_16
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

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

    nop

    :goto_17
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop
.end method

.method public static b(Landroid/view/ViewGroup;Lejp;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p1, p0}, Lejs;-><init>(Lejp;Landroid/view/ViewGroup;)V

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

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

    :goto_6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lejs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static c(Landroid/view/ViewGroup;Lejp;)V
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_16

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

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3
    const v0, 0x5

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Ldwb;

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
    const/4 v0, 0x1

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

    :goto_9
    if-eqz p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p0}, Lyo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v3, p0}, Lejp;->t(Landroid/view/View;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_d
    if-gtz v1, :cond_2

    nop

    goto/32 :goto_15

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_3

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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

    :goto_11
    invoke-static {}, Lejt;->a()Lwu;

    move-result-object v0

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

    :goto_12
    goto/32 :goto_1a

    nop

    :goto_13
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    goto :goto_22

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_18

    nop

    nop

    :goto_16
    check-cast v3, Lejp;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_17
    if-lt v2, v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_11

    nop

    nop

    :goto_1b
    invoke-virtual {p1, p0, v0}, Lejp;->p(Landroid/view/ViewGroup;Z)V

    :goto_1c
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1d
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    throw p0

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_12

    nop

    nop

    :goto_20
    const p1, 0x7f0b04cf

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

    :goto_21
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x1

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
