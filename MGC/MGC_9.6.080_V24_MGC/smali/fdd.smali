.class public final Lfdd;
.super Lfdc;
.source "PG"


# instance fields
.field public j:Z

.field private k:Lfay;

.field private final l:Ljava/util/List;

.field private final m:Landroid/graphics/RectF;

.field private final n:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lezm;Lfdf;Ljava/util/List;Lezb;)V
    .locals 11

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v7, v5, Lfdf;->f:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_1
    new-instance v0, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

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

    :goto_3
    new-instance v0, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_4
    iget-wide v9, v7, Lfdf;->d:J

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p1, p2}, Lfdc;-><init>(Lezm;Lfdf;)V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ne v7, v9, :cond_0

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    :cond_0
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-ne v7, v8, :cond_1

    nop

    nop

    goto/32 :goto_71

    nop

    :cond_1
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_55

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_54

    nop

    :goto_c
    if-lt v4, p0, :cond_3

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int/lit8 v7, v6, -0x1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_e
    move-object v3, v1

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    move-object v3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_11
    invoke-virtual {p2, v9, v10, v6}, Lxm;->g(JLjava/lang/Object;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_12
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-ne v7, v9, :cond_4

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_4
    packed-switch v6, :pswitch_data_0

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v6, v3, Lfdc;->e:Lfdc;

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

    :goto_15
    add-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_16
    new-instance v6, Lfde;

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

    nop

    :goto_17
    iput-object v1, p0, Lfdd;->k:Lfay;

    nop

    :goto_18
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast p0, Lfdc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1a
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v6, p1, v5, v7, p4}, Lfdd;-><init>(Lezm;Lfdf;Ljava/util/List;Lezb;)V

    :goto_1c
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz p0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :goto_1f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_1c

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p2, p0, p1}, Lxm;->d(J)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v0, p0, Lfdd;->l:Ljava/util/List;

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

    :goto_24
    if-nez p1, :cond_6

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_25
    iget v6, v5, Lfdf;->t:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v8, 0x2

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_27
    const-string v6, "TEXT"

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_92

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v6, p1, v5}, Lfdk;-><init>(Lezm;Lfdf;)V

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_2b
    if-ne v5, v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    :cond_7
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v6, "IMAGE"

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_2d
    throw v1

    nop

    :goto_2e
    goto/32 :goto_88

    nop

    nop

    nop

    :goto_2f
    iget-object p2, p0, Lfdd;->k:Lfay;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0, p2}, Lfdc;->i(Lfay;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v6, :cond_8

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_92

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const-string v6, "UNKNOWN"

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

    :goto_34
    iget v4, v5, Lfdf;->u:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_92

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_91

    nop

    nop

    :goto_36
    invoke-direct {v6, p1, v5}, Lfdi;-><init>(Lezm;Lfdf;)V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-ne v7, v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_9

    nop

    nop

    :goto_38
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_39
    const/4 v9, 0x3

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v2, p4, Lezb;->f:Ljava/util/List;

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

    :goto_3b
    const-string v6, "NULL"

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast v5, Lfdf;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3d
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_3f
    throw v1

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iput-object v0, p0, Lfdd;->m:Landroid/graphics/RectF;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_42
    if-nez v7, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_43
    new-instance v6, Lfdi;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_44
    invoke-direct {v6, p1, v5}, Lfde;-><init>(Lezm;Lfdf;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iput-object p1, p0, Lfdc;->f:Lfdc;

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const-string v6, "SOLID"

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_48
    const-string v6, "SHAPE"

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_49
    iput-object p2, p0, Lfdd;->k:Lfay;

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

    :goto_4a
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_4b
    goto :goto_46

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-nez v3, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    :cond_b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4f
    new-instance v0, Landroid/graphics/Paint;

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_50
    if-ne v7, v9, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_c
    goto/32 :goto_64

    nop

    nop

    :goto_51
    move-object v6, v1

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

    :goto_52
    goto/16 :goto_1c

    nop

    :goto_53
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_1f

    nop

    :goto_55
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_56
    add-int/lit8 v5, v4, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_57
    new-instance v6, Lfdd;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_58
    invoke-direct {p2, v2}, Lxm;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_59
    new-instance v6, Lfdg;

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_5a
    invoke-virtual {p2, p0}, Lfay;->h(Lfat;)V

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_5c
    const v0, 0x18

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5d
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

    :goto_5e
    if-nez p2, :cond_d

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_5f
    if-gez v2, :cond_e

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

    nop

    :cond_e
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_60
    iget-object p1, p0, Lfdc;->c:Lfdf;

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

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

    :goto_62
    new-instance v6, Lfdh;

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_63
    invoke-virtual {p2, p3, p4}, Lxm;->d(J)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_64
    const/4 v9, 0x4

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    const/4 v9, 0x5

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

    :goto_66
    iput-boolean v0, p0, Lfdd;->j:Z

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_67
    iget-object p2, p2, Lfdf;->q:Lfca;

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_68
    new-instance v6, Lfdk;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p2}, Lfca;->a()Lfay;

    move-result-object p2

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_6a
    invoke-static {v6}, Lffb;->a(Ljava/lang/String;)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    if-ne v5, v8, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    :cond_f
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_6c
    goto/16 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    new-instance p2, Lxm;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_6f
    goto/16 :goto_92

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_48

    nop

    nop

    :goto_70
    goto/16 :goto_1c

    nop

    nop

    :goto_71
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_40

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_74
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_75
    check-cast v7, Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_76
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_41

    nop

    nop

    :goto_77
    iput-object v0, p0, Lfdd;->n:Landroid/graphics/RectF;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    goto/16 :goto_f

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    goto/16 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-interface {v7, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/32 :goto_34

    nop

    nop

    :goto_7d
    if-nez v4, :cond_10

    nop

    nop

    goto/32 :goto_73

    nop

    :cond_10
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_7e
    iget-object v7, v6, Lfdc;->c:Lfdf;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7f
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_80
    goto/16 :goto_1c

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    const-string v7, "Unknown layer type "

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_83
    move-object v3, v6

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_85
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_86
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_87
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_88
    invoke-virtual {p2}, Lxm;->b()I

    move-result p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {p2, v4}, Lxm;->c(I)J

    move-result-wide p0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_17

    nop

    nop

    :goto_8c
    invoke-direct {v6, p1, v5, p0, p4}, Lfdh;-><init>(Lezm;Lfdf;Lfdd;Lezb;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget-wide p3, p1, Lfdf;->e:J

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    goto :goto_92

    nop

    :pswitch_4
    goto/32 :goto_3b

    nop

    nop

    :goto_8f
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iget-object v9, p4, Lezb;->a:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_91
    const-string v6, "PRE_COMP"

    nop

    nop

    :goto_92
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    goto :goto_92

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_2c

    nop

    nop

    :goto_94
    check-cast p1, Lfdc;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_95
    if-nez v6, :cond_11

    nop

    goto/32 :goto_40

    nop

    :cond_11
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    goto/16 :goto_2e

    nop

    nop

    nop

    :goto_97
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    iget-object v7, p0, Lfdd;->l:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_99
    invoke-direct {v6, p1, v5}, Lfdg;-><init>(Lezm;Lfdf;)V

    goto/32 :goto_70

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lffl;)V
    .locals 1

    goto/32 :goto_e

    nop

    nop

    :goto_0
    iput-object p1, p0, Lfay;->d:Lffl;

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

    :goto_1
    invoke-virtual {p1, p0}, Lfay;->h(Lfat;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lfdc;->i(Lfay;)V

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    :goto_8
    iget-object p0, p0, Lfdd;->k:Lfay;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Lezr;->E:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    iget-object p1, p0, Lfdd;->k:Lfay;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p1, p2}, Lfbp;-><init>(Lffl;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eq p1, v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lfdd;->k:Lfay;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-super {p0, p1, p2}, Lfdc;->a(Ljava/lang/Object;Lffl;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    new-instance p1, Lfbp;

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

    :goto_10
    return-void

    nop

    nop

    nop

    :goto_11
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop
.end method

.method public final c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    iget-object p3, p0, Lfdd;->m:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p3, Lfdc;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    :goto_9
    iget-object v0, p0, Lfdd;->m:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-super {p0, p1, p2, p3}, Lfdc;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p3, p0, Lfdd;->m:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p3, p0, Lfdd;->l:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_f
    add-int/lit8 p2, p2, -0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_11
    iget-object v1, p0, Lfdd;->a:Landroid/graphics/Matrix;

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

    nop

    :goto_12
    if-gez p2, :cond_0

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p2, p0, Lfdd;->l:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_14
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_17
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_4

    nop

    nop

    :goto_19
    invoke-virtual {p3, v0, v1, v2}, Lfdc;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

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

    :goto_1b
    const v1, 0x15

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1, p3}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p3, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public final j(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2
    if-gez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3
    const-string v2, "__container"

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    :goto_7
    iget-object v0, p0, Lfdd;->l:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    iget-object v0, p0, Lfdd;->n:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lfdd;->c:Lfdf;

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

    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    :goto_b
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_2a

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v1, :cond_2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2d

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

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, v1, Lfdf;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    :goto_13
    iget-object v2, p0, Lfdd;->n:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_14
    check-cast v1, Lfdc;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Lfdd;->l:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-boolean v1, p0, Lfdd;->j:Z

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

    :goto_19
    iget v0, v0, Lfdf;->o:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_1d

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lfdd;->n:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v1, v0, Lfdf;->n:F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_20
    const/4 v3, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_b

    nop

    nop

    :goto_22
    goto/32 :goto_16

    nop

    nop

    :goto_23
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_24
    const v1, 0x1d

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

    :goto_25
    goto/32 :goto_1e

    nop

    :goto_26
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_2a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v1, p1, p2, p3}, Lfdc;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v1, p0, Lfdd;->n:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2d
    iget-object v1, p0, Lfdd;->c:Lfdf;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-eqz v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2c

    nop

    nop

    nop

    nop
.end method

.method public final l(Lfbv;ILjava/util/List;Lfbv;)V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    :goto_0
    goto/32 :goto_2

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_f

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_9
    add-int/lit8 v0, v0, 0x1

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

    :goto_a
    if-lt v0, v1, :cond_1

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lfdd;->l:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x14

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    :goto_10
    check-cast v1, Lfdc;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x7

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Lfdd;->l:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

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

    :goto_15
    invoke-virtual {v1, p1, p2, p3, p4}, Lfdc;->e(Lfbv;ILjava/util/List;Lfbv;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public final m(F)V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lfdd;->c:Lfdf;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3c

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, v0, Lfdf;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x3c23d70a    # 0.01f

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_6
    if-gez v0, :cond_1

    nop

    goto/32 :goto_27

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

    nop

    nop

    :goto_7
    iget-object v1, v0, Lfdf;->b:Lezb;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_8
    iget-object v2, v2, Lfdf;->b:Lezb;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_9
    iget-object v0, v0, Lfdf;->b:Lezb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lfdd;->l:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    const v0, 0x1c

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

    :goto_c
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    const-string v1, "__container"

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lfdd;->k:Lfay;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_12
    iget-object p1, p1, Lezm;->a:Lezb;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Lezb;->b()F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop

    :goto_16
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

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

    :goto_18
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_19
    add-float/2addr p1, v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1a
    div-float p1, v1, p1

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sub-float/2addr p1, v0

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lfdd;->c:Lfdf;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget v1, v0, Lfdf;->l:F

    nop

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

    :goto_21
    invoke-virtual {p1}, Lezb;->b()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_22
    iget v0, v0, Lezb;->h:F

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    div-float/2addr p1, v0

    nop

    nop

    :goto_24
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_25
    iget v2, v2, Lezb;->j:F

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

    :goto_26
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_29
    iget-object v0, p0, Lfdd;->c:Lfdf;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v1, p1}, Lfdc;->m(F)V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2b
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_34

    nop

    nop

    :goto_2c
    iget v0, v0, Lfdf;->l:F

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

    :goto_2d
    div-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2e
    invoke-super {p0, p1}, Lfdc;->m(F)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v2, p0, Lfdd;->c:Lfdf;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_30
    invoke-virtual {v1}, Lfay;->e()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget v0, v0, Lfdf;->m:F

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    check-cast v1, Lfdc;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p1, p0, Lfdd;->b:Lezm;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Lfdd;->k:Lfay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_36
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

    nop

    nop

    :goto_37
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_39
    cmpl-float v1, v1, v2

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_3a
    iget-object v1, p0, Lfdd;->k:Lfay;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v1, p0, Lfdd;->l:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v0, p0, Lfdd;->c:Lfdf;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3e
    mul-float/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_15

    nop

    :goto_40
    sub-float/2addr v1, v0

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
.end method
