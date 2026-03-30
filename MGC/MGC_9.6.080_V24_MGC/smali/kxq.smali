.class public Lkxq;
.super Loyu;
.source "PG"


# static fields
.field private static final b:Lsdb;


# instance fields
.field public final a:Landroid/graphics/Rect;

.field private final c:Ljava/util/List;

.field private final d:F

.field private final e:D

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:Lpog;

.field private final k:Landroid/graphics/Rect;

.field private l:Z

.field private m:Lkxp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    sput-object v0, Lkxq;->b:Lsdb;

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

    :goto_1
    const-string v0, "kxq"

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
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

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

.method public constructor <init>(FLoyd;Lpnu;Lhoh;Lpnv;)V
    .locals 8

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

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
    move-object v6, p5

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    move v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    :goto_5
    move-object v2, p2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    invoke-interface {p3}, Lpnu;->i()Landroid/graphics/Rect;

    move-result-object v7

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

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct/range {v0 .. v7}, Lkxq;-><init>(FLoyd;Lpnu;Lpby;Lhoh;Lpnv;Landroid/graphics/Rect;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object v5, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    move-object v3, p3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v4, Lpby;->a:Lpby;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_12
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(FLoyd;Lpnu;Lpby;Lhoh;Lpnv;Landroid/graphics/Rect;)V
    .locals 4

    goto/32 :goto_90

    nop

    nop

    :goto_0
    move v0, v1

    nop

    nop

    :goto_1
    goto/32 :goto_48

    nop

    nop

    :goto_2
    add-int/2addr p5, p6

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_3
    invoke-virtual {p4, p5}, Lpby;->b(F)F

    move-result p4

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p7}, Landroid/graphics/Rect;->width()I

    move-result p2

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_5
    invoke-interface {p3}, Lpnu;->l()Lpog;

    move-result-object p2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3d

    nop

    :cond_0
    goto/32 :goto_3c

    nop

    :goto_7
    goto/16 :goto_96

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    move p5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_b
    if-nez p5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    :goto_c
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2f

    nop

    nop

    :goto_d
    mul-float/2addr p2, p6

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_e
    invoke-interface {v2}, Lpnu;->u()Ljava/util/List;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_f
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_10
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_12
    check-cast p7, Landroid/graphics/Rect;

    nop

    :goto_13
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_14
    new-instance p6, Lvl;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_15
    iget p6, p4, Lpby;->d:I

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

    :goto_16
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_17
    add-int/2addr p2, p4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p7}, Landroid/graphics/Rect;->width()I

    move-result p5

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_19
    invoke-direct {p7, p4, p6, p2, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_1b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p2, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_1d
    invoke-static {p5, p6, p2}, Lrrf;->q(ZLjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance p7, Landroid/graphics/Rect;

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

    nop

    :goto_1f
    if-eqz p2, :cond_2

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_20
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_21
    div-int/lit8 p4, p4, 0x2

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {p2}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p2

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
    if-nez v2, :cond_3

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_32

    nop

    nop

    :goto_24
    iput-object p2, p0, Lkxq;->j:Lpog;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_25
    iput-object p2, p0, Lkxq;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {p3}, Lpnu;->i()Landroid/graphics/Rect;

    move-result-object p1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez p2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :cond_4
    goto/32 :goto_4b

    nop

    nop

    :goto_28
    const/16 v1, 0x11

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_29
    iput-object p1, p0, Lkxq;->m:Lkxp;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2a
    new-instance p2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_2b
    div-int/lit8 p4, p2, 0x2

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_2c
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p7, p2, Lcom/CameraLensSpecification;->ea:Ljava/lang/Object;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

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

    :goto_2f
    goto/16 :goto_79

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_31
    invoke-static {v0, p5, p2}, Lrrf;->q(ZLjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_53

    nop

    nop

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_33
    goto :goto_3f

    nop

    nop

    :goto_34
    goto/32 :goto_3e

    nop

    nop

    :goto_35
    const-string v2, "Must have at least one focal length."

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iput p2, p0, Lkxq;->d:F

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_37
    const-wide/16 v2, 0x0

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {p3, p5}, Lkxq;->g(Lpnu;Lhoh;)Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_39
    if-eqz p2, :cond_5

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput-object p1, p0, Lkxq;->a:Landroid/graphics/Rect;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_3b
    sub-int/2addr p4, p2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_45

    nop

    :goto_3d
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    move p5, v0

    nop

    nop

    :goto_3f
    goto/32 :goto_68

    nop

    nop

    :goto_40
    invoke-static {p3, p4}, Lpuq;->bn(Lpnu;Lpby;)D

    move-result-wide p5

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

    :goto_41
    if-eqz p2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_6
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    cmpl-float p5, p2, p5

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_43
    iput-object p7, p0, Lkxq;->k:Landroid/graphics/Rect;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_44
    return-void

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {p6, v2}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iput p6, p0, Lkxq;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_48
    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

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

    :goto_49
    const-string p5, "Invalid sensor size: %s"

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_4a
    if-eqz p2, :cond_7

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast p2, Lcom/CameraLensSpecification;

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

    :goto_4c
    invoke-interface {p3}, Lpnu;->j()Lpnx;

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    div-float/2addr p2, p4

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_4e
    mul-int/2addr p6, v1

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_4f
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_50
    float-to-int p2, p2

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

    :goto_51
    invoke-virtual {p7}, Landroid/graphics/Rect;->height()I

    move-result p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_52
    invoke-interface {v2}, Lpnu;->u()Ljava/util/List;

    move-result-object v3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_53
    sget p2, Lcom/a;->aa:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_54
    invoke-static {p3, p5}, Lkxq;->g(Lpnu;Lhoh;)Z

    move-result p5

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_55
    div-int/lit8 p4, p5, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_56
    if-lt v0, p6, :cond_8

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_8
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    int-to-float p2, p2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-interface {p3}, Lpnu;->j()Lpnx;

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_59
    int-to-float p6, p6

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_5a
    div-int/lit8 p6, p6, 0x2

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p0, p1}, Lkxq;->e(Ljava/lang/Float;)Lkxp;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-interface {p6, v2}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_5d
    iget p6, p6, Lpby;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p6

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_69

    nop

    nop

    :goto_60
    invoke-interface {p3}, Lpnu;->u()Ljava/util/List;

    move-result-object p2

    nop

    :goto_61
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_62
    xor-int/2addr p6, v1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_63
    sget p2, Lcom/a;->ab:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_64
    if-gtz p5, :cond_9

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_9
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_36

    nop

    nop

    :goto_67
    int-to-float p4, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_68
    const-string p6, "Reference focal length cannot be zero (%s)"

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-interface {p3}, Lpnu;->C()Ljava/util/Set;

    move-result-object v1

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

    :goto_6a
    iget p4, p4, Lpby;->e:I

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

    nop

    nop

    :goto_6b
    invoke-virtual {p7}, Landroid/graphics/Rect;->height()I

    move-result p6

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    if-eqz p2, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    check-cast v2, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6e
    sget p2, Lcom/a;->af:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6f
    iget v0, p4, Lpby;->d:I

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_70
    iput-wide p5, p0, Lkxq;->e:D

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {p7}, Landroid/graphics/Rect;->width()I

    move-result p4

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_72
    sget p2, Lcom/a;->ah:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_73
    mul-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    int-to-float p5, p5

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

    :goto_75
    goto/16 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_77
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_7a
    invoke-static {p2, p6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/32 :goto_75

    nop

    nop

    :goto_7b
    invoke-virtual {p7}, Landroid/graphics/Rect;->width()I

    move-result p2

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_7e
    invoke-virtual {p7}, Landroid/graphics/Rect;->height()I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-interface {p3}, Lpnu;->S()Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_80
    check-cast v2, Lpnx;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_81
    goto/16 :goto_96

    nop

    :goto_82
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-interface {p2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_84
    iput p4, p0, Lkxq;->g:I

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_85
    if-gtz p2, :cond_b

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_0

    nop

    nop

    :goto_86
    invoke-direct {p6, v1}, Lvl;-><init>(I)V

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_87
    invoke-direct {p0, p2}, Loyu;-><init>(Loyd;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    const/4 p5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_89
    iput p4, p0, Lkxq;->h:I

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_8a
    sub-int/2addr p6, p5

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_8b
    sget p2, Lcom/a;->ac:I

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    if-nez p2, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :cond_c
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    sget-object p6, Lpby;->a:Lpby;

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

    nop

    :goto_8e
    check-cast p2, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {p7}, Landroid/graphics/Rect;->height()I

    move-result p5

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_91
    iget v1, p6, Lpby;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_92
    iput p4, p0, Lkxq;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_93
    iget v1, p4, Lpby;->e:I

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_94
    cmpl-double p2, p5, v2

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_95
    float-to-int p5, p4

    nop

    nop

    nop

    :goto_96
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_97
    goto/16 :goto_66

    nop

    nop

    :goto_98
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_99
    div-int/lit8 p5, p5, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop
.end method

.method public static g(Lpnu;Lhoh;)Z
    .locals 1

    goto/32 :goto_8

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    invoke-virtual {p1, p0}, Lhoh;->p(Lhmn;)Z

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    sget-object p0, Lhmq;->ae:Lhmn;

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

    :goto_6
    if-nez p0, :cond_1

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
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0}, Lpnu;->E()Z

    move-result p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    invoke-interface {p0}, Lpnu;->N()Z

    move-result v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

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

    nop
.end method


# virtual methods
.method public final declared-synchronized a()Lkxp;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Lkxq;->e(Ljava/lang/Float;)Lkxp;

    move-result-object v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

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

.method protected final bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lkxq;->e(Ljava/lang/Float;)Lkxp;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    check-cast p1, Ljava/lang/Float;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method protected final declared-synchronized e(Ljava/lang/Float;)Lkxp;
    .locals 13

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-object p1

    nop

    nop

    :catchall_0
    move-exception p1

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    return-object p1

    nop

    nop

    nop

    nop

    :cond_0
    :goto_2
    :try_start_1
    sget-object v0, Lkxq;->b:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    const/16 v1, 0xc4a

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    const-string v1, "Invalid zoom factor: %g"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lkxq;->m:Lkxp;

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1

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

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-double/2addr v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    double-to-float p1, v0

    nop

    nop

    nop

    :try_start_2
    iget-object v0, p0, Lkxq;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    float-to-double v1, p1

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    add-int/lit8 v3, v3, -0x1

    nop

    nop

    nop

    nop

    if-ltz v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Float;

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    float-to-double v9, v4

    nop

    nop

    nop

    cmpg-double v5, v9, v1

    nop

    nop

    nop

    if-ltz v5, :cond_3

    nop

    nop

    nop

    nop

    sub-double v9, v1, v9

    nop

    nop

    nop

    nop

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    nop

    nop

    nop

    const-wide v11, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    nop

    nop

    cmpg-double v5, v9, v11

    nop

    nop

    nop

    nop

    if-gez v5, :cond_1

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "focal length needed = "

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v0

    nop

    nop

    nop

    :try_start_3
    sget-object v1, Lkxq;->b:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-interface {v1, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    const/16 v1, 0xc49

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    iget-object v1, p0, Lkxq;->c:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v0, p1, v1}, Lscz;->O(FLjava/lang/Object;)V

    iget-object p1, p0, Lkxq;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Ljava/lang/Float;

    nop

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    :cond_3
    :goto_b
    invoke-static {v7, v8, v4}, Lpuq;->bl(DF)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    iget-wide v2, p0, Lkxq;->e:D

    nop

    div-double/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    iget p1, p0, Lkxq;->f:I

    nop

    nop

    nop

    nop

    iget v2, p0, Lkxq;->g:I

    nop

    nop

    iget v3, p0, Lkxq;->h:I

    nop

    nop

    iget v5, p0, Lkxq;->i:I

    nop

    nop

    nop

    int-to-double v6, v2

    nop

    nop

    nop

    mul-double/2addr v6, v0

    nop

    nop

    nop

    add-int/2addr v5, v2

    nop

    nop

    nop

    add-int/2addr v3, p1

    nop

    nop

    new-instance v2, Landroid/graphics/Rect;

    nop

    nop

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    nop

    add-double/2addr v6, v8

    nop

    nop

    double-to-int v6, v6

    nop

    nop

    int-to-double v10, p1

    nop

    nop

    mul-double/2addr v0, v10

    nop

    nop

    nop

    nop

    add-double/2addr v0, v8

    nop

    nop

    nop

    nop

    double-to-int p1, v0

    nop

    sub-int v0, v3, p1

    nop

    nop

    sub-int v1, v5, v6

    nop

    add-int/2addr v3, p1

    nop

    add-int/2addr v5, v6

    nop

    nop

    nop

    nop

    invoke-direct {v2, v0, v1, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p1, p0, Lkxq;->k:Landroid/graphics/Rect;

    nop

    nop

    nop

    new-instance v0, Lkxp;

    nop

    nop

    nop

    nop

    invoke-direct {v0, v2, p1, v4}, Lkxp;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    iput-object v0, p0, Lkxq;->m:Lkxp;

    nop

    nop

    :cond_4
    iget-object p1, p0, Lkxq;->m:Lkxp;

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
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

    :goto_d
    div-double/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    :goto_f
    monitor-enter p0

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    cmpg-float v0, v0, v1

    nop

    nop

    if-gtz v0, :cond_5

    nop

    nop

    goto/16 :goto_2

    nop

    nop

    :cond_5
    iget-boolean v0, p0, Lkxq;->l:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    iget-wide v0, p0, Lkxq;->e:D

    nop

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    cmpl-double v4, v0, v2

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    const/4 v6, 0x0

    nop

    nop

    if-lez v4, :cond_6

    nop

    move v4, v5

    nop

    goto :goto_10

    nop

    nop

    nop

    :cond_6
    move v4, v6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v7, "Invalid sensor size: %s"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    invoke-static {v4, v7, v0}, Lrrf;->q(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lkxq;->e:D

    nop

    nop

    nop

    float-to-double v7, p1

    nop

    nop

    nop

    nop

    iget p1, p0, Lkxq;->d:F

    nop

    nop

    cmpl-double v4, v0, v2

    nop

    if-lez v4, :cond_7

    nop

    move v4, v5

    nop

    goto :goto_11

    nop

    nop

    :cond_7
    move v4, v6

    nop

    nop

    nop

    :goto_11
    div-double v7, v0, v7

    nop

    nop

    nop

    nop

    invoke-static {p1, v7, v8}, Lpuq;->bk(FD)D

    move-result-wide v7

    nop

    const-string p1, "Diagonal size cannot be zero (%s)"

    nop

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    nop

    nop

    nop

    nop

    invoke-static {v4, p1, v9}, Lrrf;->q(ZLjava/lang/String;Ljava/lang/Object;)V

    cmpl-double p1, v7, v2

    nop

    if-lez p1, :cond_8

    nop

    nop

    nop

    nop

    nop

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    nop

    nop

    cmpg-double p1, v7, v2

    nop

    nop

    nop

    nop

    nop

    if-gez p1, :cond_8

    nop

    goto :goto_12

    nop

    nop

    :cond_8
    move v5, v6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    nop

    nop

    const-string v2, "Invalid AoV: %s"

    nop

    nop

    invoke-static {v5, v2, p1}, Lrrf;->q(ZLjava/lang/String;Ljava/lang/Object;)V

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    nop

    nop

    nop

    nop

    div-double v2, v7, v2

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    monitor-exit p0

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

    :goto_14
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_4

    nop

    :goto_15
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method public final declared-synchronized f(Lpog;)V
    .locals 1

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

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lkxq;->j:Lpog;

    nop

    if-ne p1, v0, :cond_0

    nop

    const/4 p1, 0x0

    nop

    nop

    nop

    goto :goto_2

    nop

    nop

    :cond_0
    const/4 p1, 0x1

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Lkxq;->l:Z

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

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

    goto/32 :goto_0

    nop

    nop

    :goto_4
    throw p1

    nop
.end method
