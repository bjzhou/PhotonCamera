.class public final Lcpx;
.super Lctd;
.source "PG"


# static fields
.field public static final a:Lcpx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lcpx;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lcpx;->a:Lcpx;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lcpx;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lctd;-><init>()V

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

    nop
.end method


# virtual methods
.method public final a(Lcpc;Ljava/util/List;J)Lcpa;
    .locals 5

    goto/32 :goto_3d

    nop

    nop

    :goto_0
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1
    if-lt v1, p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    move v2, v0

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    move v2, v1

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_8
    check-cast p0, Lcoy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_9
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    :goto_d
    invoke-direct {p4, p0}, Lcpw;-><init>(Ljava/util/List;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p4, Lcpw;

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

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/32 :goto_a

    nop

    nop

    :goto_11
    invoke-static {p3, p4, v0}, Ldoz;->c(JI)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_12
    new-instance p0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_13
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v3, Lcpp;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_16
    iget v0, p0, Lcpp;->b:I

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_17
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p3, p4, v2}, Ldoz;->b(JI)I

    move-result p3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_19
    invoke-direct {p4, p0}, Lcpv;-><init>(Lcpp;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v0, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object p3, Lcpu;->a:Lcpu;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p1, p2, p3, p4}, Lcpb;->b(Lcpc;IILubk;)Lcpa;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v3, Lcoy;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_20
    invoke-static {p3, p4, p2}, Ldoz;->c(JI)I

    move-result p2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {p3, p4}, Ldoy;->d(J)I

    move-result p0

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

    nop

    nop

    :goto_27
    invoke-static {p3, p4}, Ldoy;->c(J)I

    move-result p2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {p1, p0, p2, p3}, Lcpb;->b(Lcpc;IILubk;)Lcpa;

    move-result-object p0

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p2

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

    :goto_2b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-eq p0, v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    :goto_2f
    iget v3, v3, Lcpp;->b:I

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

    :goto_30
    invoke-interface {v3, p3, p4}, Lcoy;->l(J)Lcpp;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_23

    nop

    nop

    :goto_32
    invoke-interface {p0, p3, p4}, Lcoy;->l(J)Lcpp;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {p1, p2, p3, p4}, Lcpb;->b(Lcpc;IILubk;)Lcpa;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_37
    return-object p0

    nop

    nop

    :goto_38
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_39
    if-lt v2, v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_4
    goto/32 :goto_3a

    nop

    nop

    :goto_3a
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget p2, p0, Lcpp;->a:I

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3c
    const v1, 0x5

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

    :goto_3d
    const v0, 0x2

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

    nop

    nop

    :goto_3e
    new-instance p4, Lcpv;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3f
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {p3, p4, v0}, Ldoz;->b(JI)I

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_41
    iget v4, v3, Lcpp;->a:I

    nop

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

    nop

    :goto_42
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_21

    nop

    nop

    nop
.end method
