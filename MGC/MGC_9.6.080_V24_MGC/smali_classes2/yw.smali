.class final Lyw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcoz;


# instance fields
.field private final a:Lzj;

.field private b:Z


# direct methods
.method public constructor <init>(Lzj;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Lyw;->a:Lzj;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lcpc;Ljava/util/List;J)Lcpa;
    .locals 9

    goto/32 :goto_7b

    nop

    nop

    :goto_0
    check-cast p2, Lcpp;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_2
    if-lt v3, v1, :cond_0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    :goto_3
    invoke-direct {v1, p3, p4}, Ldpo;-><init>(J)V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_4
    if-gtz v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object v6, v5

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_5c

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v1, :cond_2

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Lrkm;->ad(Ljava/util/List;)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v6, Lcpp;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_e
    const/16 v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v1, Lcpp;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lyw;->a:Lzj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_12
    if-nez p2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    :cond_3
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_13
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    iget v6, v6, Lcpp;->b:I

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

    :goto_15
    invoke-direct {p3, v3, v4}, Ldpo;-><init>(J)V

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_16
    move p2, v2

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_39

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_19
    invoke-interface {p2}, Ljava/util/Collection;->size()I

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

    :goto_1a
    if-nez p3, :cond_4

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_53

    nop

    nop

    :goto_1b
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lyw;->a:Lzj;

    nop

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

    :goto_1d
    or-long/2addr p3, v3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez p2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_30

    nop

    nop

    :goto_1f
    goto/16 :goto_4a

    nop

    nop

    :goto_20
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_21
    shl-long v5, v7, v1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_22
    goto :goto_2d

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_4f

    nop

    nop

    :goto_24
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_25
    shl-long v3, v5, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_26
    move-object v1, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_27
    if-lt v1, v6, :cond_6

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

    :cond_6
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move-object v1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_29
    const-wide v3, 0xffffffffL

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    and-long/2addr v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2b
    if-gtz v3, :cond_7

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_2c
    move v4, p4

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_38

    nop

    nop

    :goto_2e
    iget-object p0, p0, Lzj;->a:Lbob;

    nop

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

    :goto_2f
    invoke-static {v0}, Lrkm;->ad(Ljava/util/List;)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_30
    move-object p2, p3

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

    :goto_31
    iget v1, v1, Lcpp;->a:I

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_32
    new-instance v1, Ldpo;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_33
    goto/16 :goto_70

    nop

    :goto_34
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_35
    and-long/2addr p3, v3

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_36
    move v7, v1

    nop

    :goto_37
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_39
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3a
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    move v1, v7

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_3d
    move-object p3, v5

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_5d

    nop

    nop

    :goto_3f
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_40
    or-long/2addr v3, v5

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

    nop

    :goto_41
    move-object v6, v5

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_43
    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-ne v4, v3, :cond_8

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-lt v1, v6, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {p1}, Lcpc;->o()Z

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_47
    if-eqz p3, :cond_a

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iput-boolean p4, p0, Lyw;->b:Z

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

    :goto_49
    invoke-interface {p0, v1}, Lbob;->h(Ljava/lang/Object;)V

    :goto_4a
    goto/32 :goto_73

    nop

    nop

    :goto_4b
    invoke-direct {p0, v0}, Lyv;-><init>(Ljava/util/List;)V

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const/4 p4, 0x1

    nop

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

    :goto_4d
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_24

    nop

    nop

    :goto_4f
    check-cast p3, Lcpp;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_50
    check-cast v6, Lcpp;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_51
    iget v6, v6, Lcpp;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_52
    int-to-long p3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_53
    iget v2, p3, Lcpp;->b:I

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_56
    check-cast v1, Lcpp;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_57
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_58
    move v7, v1

    nop

    nop

    :goto_59
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_5a
    move v7, v6

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_5b
    move v4, p4

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_5d
    if-ne v4, v3, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_b
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_5e
    add-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_5f
    move v1, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_60
    goto/16 :goto_17

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iget-boolean p3, p0, Lyw;->b:Z

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_63
    int-to-long v5, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_64
    iget v1, v1, Lcpp;->b:I

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

    :goto_65
    int-to-long v5, p2

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_66
    goto/16 :goto_37

    nop

    :goto_67
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_68
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_69
    invoke-static {p1, p2, v2, p0}, Lcpb;->b(Lcpc;IILubk;)Lcpa;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_6a
    check-cast v4, Lcoy;

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    new-instance p3, Ldpo;

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

    nop

    :goto_6c
    if-lt v1, v6, :cond_c

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_80

    nop

    nop

    :goto_6d
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    move v3, v2

    nop

    nop

    :goto_70
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_72
    if-lt v1, v6, :cond_d

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    new-instance p0, Lyv;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_74
    int-to-long v7, p2

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

    :goto_75
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    move-object p2, v5

    nop

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_44

    nop

    nop

    :goto_78
    invoke-interface {p0, p3}, Lbob;->h(Ljava/lang/Object;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_79
    iget p2, p2, Lcpp;->a:I

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-interface {v4, p3, p4}, Lcoy;->l(J)Lcpp;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_7b
    const v0, 0x11

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    goto/16 :goto_59

    nop

    nop

    :goto_7e
    goto/32 :goto_58

    nop

    nop

    :goto_7f
    iget-object p0, p0, Lzj;->a:Lbob;

    nop

    nop

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

    :goto_80
    move v7, v6

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_81
    if-lez v0, :cond_e

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_e
    goto/32 :goto_8

    nop

    :goto_82
    if-nez p3, :cond_f

    nop

    goto/32 :goto_20

    nop

    :cond_f
    goto/32 :goto_63

    nop

    nop

    :goto_83
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop
.end method
