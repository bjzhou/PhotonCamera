.class public final Lbhc;
.super Lbhw;
.source "PG"

# interfaces
.implements Lbhp;


# instance fields
.field private a:Lbho;

.field private i:Lbhs;


# direct methods
.method public constructor <init>(Lanz;ZFLceo;Luaz;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct/range {p0 .. p5}, Lbhw;-><init>(Lanz;ZFLceo;Luaz;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method private final ccb4c19b7dbd16be9d2a43125797659dm(Lbhs;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lbhc;->i:Lbhs;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Lcsh;->a(Lcsg;)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final ci()V
    .locals 3

    goto/32 :goto_11

    nop

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object v2, v0, Lbho;->d:Lbhq;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_4
    iget-object p0, v0, Lbho;->c:Ljava/util/List;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, p0}, Lbhq;->a(Lbhp;)Lbhs;

    move-result-object v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lbhc;->a:Lbho;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_8
    iget-object v1, v0, Lbho;->d:Lbhq;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    invoke-virtual {v1}, Lbhs;->a()V

    goto/32 :goto_2

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

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xe

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v1, :cond_1

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

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v2, p0}, Lbhq;->b(Lbhp;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0xc

    nop

    nop

    goto/32 :goto_c

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

    goto/32 :goto_14

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    :goto_13
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0}, Lbhp;->i()V

    goto/32 :goto_8

    nop

    nop
.end method

.method public final e(Laod;JF)V
    .locals 11

    goto/32 :goto_8a

    nop

    nop

    :goto_0
    throw p1

    nop

    :goto_1
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lbhw;->l()J

    move-result-wide v7

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_4
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-ne v1, p4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    :cond_0
    :goto_7
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    invoke-static {p3, p4}, Lcdi;->c(J)F

    move-result p1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v1, Lbhb;

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_19

    nop

    nop

    :goto_c
    goto/16 :goto_22

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v5, v0, Lbho;->d:Lbhq;

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
    iget-object v0, p0, Lbhc;->a:Lbho;

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v10}, Lbib;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v5, v4}, Lbhq;->b(Lbhp;)V

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_12
    instance-of v3, v2, Landroid/view/View;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v4, v5}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_56

    nop

    :goto_15
    if-gt v2, v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :cond_2
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_3
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v2}, Lbho;->addView(Landroid/view/View;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_19
    iget-object v0, v0, Lbhq;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v4, v2, Lbhs;->b:Lbib;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v1, v2, Lbhs;->e:Luaz;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_1d
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_1e
    new-instance v4, Lbib;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move-object v0, v2

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v4, v0, Lbho;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v2, p0}, Lbhq;->a(Lbhp;)Lbhs;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v0, :cond_4

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v10, p2, p1}, Lbib;->setHotspot(FF)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-boolean v0, p0, Lbhw;->c:Z

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-lt v4, v5, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    :cond_5
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    int-to-float p2, p2

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

    :goto_2a
    move-object v0, v2

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v10}, Lbib;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2c
    instance-of v5, v4, Lbho;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_2d
    const-string p1, ". Are you overriding LocalView and providing a View that is not attached to the view hierarchy?"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2e
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object v4, v2, Lbhs;->c:Ljava/lang/Boolean;

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v4, v0, Lbho;->d:Lbhq;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget v9, v1, Lbhf;->d:F

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

    :goto_33
    check-cast v2, Lbhs;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_34
    const-string p1, "Couldn\'t find a valid parent for "

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v4, v4, Lbhq;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_37
    if-nez v2, :cond_6

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_af

    nop

    nop

    :goto_39
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-eqz v4, :cond_7

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

    :cond_7
    :goto_3c
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget v4, v0, Lbho;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_3e
    iget v5, v0, Lbho;->a:I

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

    :goto_3f
    iput v1, v0, Lbho;->e:I

    nop

    :goto_40
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move-wide v5, p2

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_42
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_43
    iget v2, v0, Lbho;->e:I

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-nez v4, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    move-object v4, v2

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_46
    check-cast v2, Lbhs;

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

    :goto_47
    iget-object v10, v2, Lbhs;->b:Lbib;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iput-object v0, p0, Lbhc;->a:Lbho;

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    sget v2, Lbhx;->a:I

    nop

    :goto_4a
    goto/32 :goto_b3

    nop

    nop

    :goto_4b
    iget-object v5, v2, Lbhs;->c:Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-nez v5, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_9
    goto/32 :goto_6c

    nop

    nop

    :goto_4d
    if-lt v3, v2, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    :cond_a
    goto/32 :goto_93

    nop

    nop

    :goto_4e
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-nez v3, :cond_b

    nop

    nop

    goto/32 :goto_83

    nop

    :cond_b
    goto/32 :goto_2a

    nop

    nop

    :goto_50
    invoke-virtual {v0}, Lbho;->getContext()Landroid/content/Context;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_51
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    :goto_52
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-direct {p0, v2}, Lbhc;->ccb4c19b7dbd16be9d2a43125797659dm(Lbhs;)V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget-wide p2, p1, Laod;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_58
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_59
    iget-object v1, v10, Lbib;->b:Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v2, v3}, Lbhs;->c(Z)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-interface {v4}, Lbhp;->i()V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5e
    iget-object v4, v0, Lbho;->b:Ljava/util/List;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    move v3, v1

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_4d

    nop

    nop

    :goto_61
    invoke-virtual/range {v4 .. v9}, Lbhs;->b(JJF)V

    goto/32 :goto_aa

    nop

    nop

    :goto_62
    move-object v0, v4

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

    nop

    nop

    :goto_63
    check-cast v0, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_64
    iget-object v2, v0, Lbho;->d:Lbhq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

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

    nop

    :goto_66
    invoke-static {v4}, Lrkm;->ad(Ljava/util/List;)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_68
    goto/16 :goto_52

    nop

    nop

    :goto_69
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v2, v0, Lbho;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    check-cast v4, Lbho;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_6d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/16 :goto_40

    nop

    :goto_70
    goto/32 :goto_3f

    nop

    nop

    :goto_71
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_73
    invoke-virtual {v2}, Lbhs;->a()V

    :goto_74
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    int-to-float p1, p1

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

    :goto_76
    if-nez v4, :cond_c

    nop

    nop

    goto/32 :goto_69

    nop

    :cond_c
    goto/32 :goto_7d

    nop

    nop

    :goto_77
    iget-object v1, v0, Lbhq;->a:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_78
    add-int/lit8 v5, v5, -0x1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7a
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    new-instance v2, Lbho;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_7d
    const/4 v2, 0x0

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v2, v4}, Lbhs;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7f
    goto/16 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_80
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iget-object v2, v0, Lbho;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_82
    goto/16 :goto_4a

    nop

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_84
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-static {p4}, Luda;->q(F)I

    move-result p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_86
    new-instance p0, Ljava/lang/StringBuilder;

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

    :goto_87
    check-cast v1, Lbhf;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_88
    if-nez v4, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_5d

    nop

    nop

    :goto_89
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_8b
    add-int/2addr v4, v3

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    if-eqz v1, :cond_e

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_1f

    nop

    nop

    :goto_8d
    goto/16 :goto_7a

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_90
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iget v4, v0, Lbho;->e:I

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

    :goto_92
    invoke-direct {v2, v3}, Lbho;-><init>(Landroid/content/Context;)V

    goto/32 :goto_5a

    nop

    nop

    :goto_93
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

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

    nop

    nop

    :goto_94
    iput-object v1, v10, Lbib;->b:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iput v4, v0, Lbho;->e:I

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

    :goto_96
    new-instance v2, Lbhs;

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

    :goto_97
    iget-wide p3, p1, Laod;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_98
    iget-object v0, v0, Lbho;->d:Lbhq;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_99
    if-eqz v2, :cond_f

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_9a
    goto/16 :goto_74

    nop

    nop

    :goto_9b
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_9c
    iget-object v4, v2, Lbhs;->b:Lbib;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_9d
    check-cast v4, Lbhp;

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_9e
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_9f
    invoke-static {p0, v0}, Lcrv;->a(Lcru;Lbmb;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_a0
    goto/16 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-direct {v1, p0}, Lbhb;-><init>(Lbhc;)V

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_a3
    iget-object v1, p0, Lbhw;->d:Luaz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_a4
    invoke-direct {v2, v4}, Lbhs;-><init>(Landroid/content/Context;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {v10, p4}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    :goto_a6
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-static {p2, p3}, Lcdi;->b(J)F

    move-result p2

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_a9
    move-object v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    if-nez v0, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-direct {v4, v0}, Lbib;-><init>(Z)V

    goto/32 :goto_7e

    nop

    nop

    :goto_ac
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_ae
    invoke-virtual {v10, p1, p2}, Lbib;->setHotspot(FF)V

    :goto_af
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_b0
    invoke-interface {v1}, Luaz;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_b1
    check-cast v2, Landroid/view/View;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    instance-of v2, v0, Landroid/view/ViewGroup;

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

    :goto_b4
    check-cast v0, Landroid/view/View;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_b5
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->e:Lbox;

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Lchv;)V
    .locals 7

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lbhw;->d:Luaz;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    iget v5, p0, Lbhf;->d:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object v0, v6

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v6, p0, Lbhc;->i:Lbhs;

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v6, p0}, Lbhs;->draw(Landroid/graphics/Canvas;)V

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    iget-wide v1, p0, Lbhw;->f:J

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lbhw;->l()J

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    invoke-virtual/range {v0 .. v5}, Lbhs;->b(JJF)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p1}, Lchs;->b()Lcei;

    move-result-object p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_14
    invoke-interface {p0}, Luaz;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p1}, Lchv;->o()Lchs;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    if-nez v6, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p1}, Lcdr;->a(Lcei;)Landroid/graphics/Canvas;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_18
    check-cast p0, Lbhf;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final i()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Lbhc;->ccb4c19b7dbd16be9d2a43125797659dm(Lbhs;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final k(Laod;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lbhs;->c(Z)V

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    iget-object p0, p0, Lbhc;->i:Lbhs;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

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

    :goto_5
    return-void

    nop

    nop
.end method
