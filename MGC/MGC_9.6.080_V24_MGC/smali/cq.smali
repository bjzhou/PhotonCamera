.class public final Lcq;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcx;

.field public static final b:Lcx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_5

    nop

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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    const-string v1, "androidx.transition.FragmentTransitionSupport"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    nop

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lcx;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
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

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lcq;->a:Lcx;

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

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    const v0, 0x1

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

    :goto_6
    const v1, 0x17

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

    :goto_7
    new-instance v0, Lcw;

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

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sput-object v0, Lcq;->b:Lcx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    move-object v0, v1

    nop

    nop

    :catch_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Lcw;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public static final a(Lbo;Lbo;ZLwu;Z)V
    .locals 0

    goto/32 :goto_10

    nop

    nop

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/util/ArrayList;

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

    :goto_3
    iget p1, p3, Lyo;->d:I

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_4
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    iget p1, p3, Lyo;->d:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_8
    new-instance p0, Ljava/util/ArrayList;

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

    :goto_9
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    :goto_c
    invoke-interface {p0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_d
    if-nez p2, :cond_1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_e
    check-cast p2, Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_f
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p2, :cond_2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_29

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lbo;->w()Ldsw;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    :goto_15
    check-cast p2, Ljava/util/Map$Entry;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_16
    throw p0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p4, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Lbo;->w()Ldsw;

    move-result-object p0

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

    :goto_1b
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez p2, :cond_4

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    :goto_1f
    check-cast p2, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_21
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_22
    invoke-interface {p0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast p2, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_25
    goto/16 :goto_14

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    :goto_29
    goto/32 :goto_27

    nop

    nop

    :goto_2a
    throw p0

    nop

    :goto_2b
    goto/32 :goto_16

    nop

    nop
.end method

.method public static final b(Ljava/util/List;I)V
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
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    check-cast v0, Landroid/view/View;

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

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

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

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
