.class final Lbff;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcoz;


# static fields
.field public static final a:Lbff;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lbff;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lbff;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    sput-object v0, Lbff;->a:Lbff;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lcpc;Ljava/util/List;J)Lcpa;
    .locals 9

    goto/32 :goto_5

    nop

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

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v7, v8}, Lcpp;->q(Lcng;)I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2
    if-ne v4, v2, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x15

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_7
    move v5, v2

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_a
    if-ne v4, v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_b
    if-ne v8, v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    invoke-static {p3, p4}, Ldoy;->b(J)I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v7, v4}, Lcpp;->q(Lcng;)I

    move-result v4

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-ne v5, v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_3
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p2, v6}, Ljava/lang/Math;->max(II)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p1, p3, p2, p4}, Lcpb;->b(Lcpc;IILubk;)Lcpa;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    return-object p0

    nop

    :goto_13
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    move v3, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_18
    const/high16 p2, 0x42880000    # 68.0f

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v7, v5}, Lcpp;->q(Lcng;)I

    move-result v5

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p1, p2}, Lcpc;->cw(F)I

    move-result p2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    :goto_1f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v4, Lcnj;->a:Lcnx;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-ne v5, v2, :cond_5

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    :goto_24
    move v6, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_25
    invoke-virtual {v7, v8}, Lcpp;->q(Lcng;)I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_26
    new-instance p0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v7, v8}, Lcpp;->q(Lcng;)I

    move-result v8

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v7, p3, p4}, Lcoy;->l(J)Lcpp;

    move-result-object v7

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

    :goto_2b
    goto :goto_36

    nop

    nop

    :goto_2c
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {p4, p0, p2}, Lbfe;-><init>(Ljava/util/ArrayList;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sget-object v5, Lcnj;->b:Lcnx;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2f
    if-gt v8, v5, :cond_6

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

    :cond_6
    :goto_30
    goto/32 :goto_2e

    nop

    nop

    :goto_31
    if-lt v3, v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v7, v8}, Lcpp;->q(Lcng;)I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_33
    sget-object v8, Lcnj;->b:Lcnx;

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

    nop

    :goto_34
    new-instance p4, Lbfe;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/high16 p2, 0x42400000    # 48.0f

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-lt v8, v4, :cond_8

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_8
    :goto_38
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-ne v8, v2, :cond_9

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move v4, v2

    nop

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

    :goto_3b
    sget-object v8, Lcnj;->a:Lcnx;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3c
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_3d
    move v2, v4

    nop

    :goto_3e
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget v7, v7, Lcpp;->b:I

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

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

    :goto_41
    sget-object v8, Lcnj;->a:Lcnx;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_42
    const/high16 v2, -0x80000000

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

    :goto_43
    sget-object v8, Lcnj;->b:Lcnx;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_44
    if-eqz v1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_1b

    nop

    nop

    :goto_45
    goto/32 :goto_20

    nop

    nop

    :goto_46
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_47
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

    nop

    :goto_48
    if-ne v2, v5, :cond_b

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    move v5, v4

    nop

    :goto_4a
    goto/32 :goto_31

    nop

    nop

    :goto_4b
    check-cast v7, Lcoy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_4c
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop
.end method
