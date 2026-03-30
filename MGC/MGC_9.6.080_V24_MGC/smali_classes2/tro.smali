.class public final Ltro;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltrr;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Ltro;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_3

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
.end method


# virtual methods
.method public final a(Ltsq;)Lsji;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public final b()Ltsn;
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v2, "current_device_params"

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

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

    nop

    :goto_5
    sget-object v0, Ltrc;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    sget-object v0, Ltsn;->a:Ltsn;

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

    :goto_7
    const v0, 0x7

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

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_9
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_b

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

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    :goto_e
    iget-object p0, p0, Ltro;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    check-cast p0, Ltsn;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    const v3, 0x35587a2b

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

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    invoke-static {v0, v2, v3, v1, p0}, Ltrc;->a(Ltlp;Ljava/lang/String;IZLandroid/content/Context;)Ltlq;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public final c()Ltso;
    .locals 15

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_3
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_4
    if-nez v6, :cond_0

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Ltcw;->k(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_6
    check-cast v6, Ltso;

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput v3, v2, Ltso;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_c
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6a

    nop

    nop

    :goto_10
    invoke-static {v2}, Ltrq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_11
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v13, v5, Ltrp;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p0}, Ltcw;->l(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    sget-object v1, Ltrq;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_15
    iget-object v1, v5, Ltrp;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

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

    :goto_17
    new-instance v3, Ljava/util/ArrayList;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_a1

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput v1, v2, Ltso;->e:F

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0xe

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_21
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_22
    aget-object v5, p0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_23
    check-cast v5, Ltrp;

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_24
    return-object v0

    nop

    nop

    :goto_25
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput v1, v2, Ltso;->c:F

    nop

    :goto_27
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    sget-object v9, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_29
    check-cast v2, Ltso;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_2a
    sget-object v6, Ltrq;->a:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget v3, v2, Ltso;->b:I

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget v3, v2, Ltso;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v6, :cond_1

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

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v11, v5, Ltrp;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_33
    goto/32 :goto_44

    nop

    nop

    :goto_34
    if-eqz v10, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_36
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_37
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez p0, :cond_3

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_39
    if-ne p0, v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_3c
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v1, p0, Ltro;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_3e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_40
    if-nez v7, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :cond_5
    :goto_41
    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_42
    or-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget v1, p0, Ltso;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_44
    iget-object p0, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-direct {v7, v8, v5}, Landroid/util/Size;-><init>(II)V

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_47
    if-eqz p0, :cond_6

    nop

    goto/32 :goto_a

    nop

    :cond_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_48
    if-eqz v2, :cond_7

    nop

    goto/32 :goto_b6

    nop

    :cond_7
    goto/32 :goto_b5

    nop

    nop

    :goto_49
    iput v3, v2, Ltso;->b:I

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_4a
    iput v1, p0, Ltso;->b:I

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_4b
    iget v2, v3, Ltso;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_4c
    or-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_4d
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_4e
    filled-new-array/range {v8 .. v14}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v5, v8, v3, v7, v9}, Ltrp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_50
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_51
    if-lez v0, :cond_8

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_69

    nop

    :goto_52
    if-lt v4, p0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :cond_9
    goto/32 :goto_ac

    nop

    nop

    :goto_53
    if-eqz v1, :cond_a

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_55
    if-eqz v2, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v1, v5, Ltrp;->g:Ljava/lang/Object;

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    sget-object v6, Ltrq;->a:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_58
    check-cast v3, Landroid/util/Size;

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_59
    or-int/lit8 v3, v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5a
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_5b
    if-lt v3, v5, :cond_c

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_5c
    sget-object v0, Ltrq;->a:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iput v1, v2, Ltso;->d:F

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_62
    goto/32 :goto_50

    nop

    nop

    :goto_63
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_64
    sput-object v3, Ltrq;->a:Ljava/util/ArrayList;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_65
    const-string v2, "Found override: {MANUFACTURER=%s, DEVICE=%s, MODEL=%s, HARDWARE=%s} : x_ppi=%f, y_ppi=%f, bottom_bezel_height=%f)"

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_66
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

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

    :goto_67
    div-float/2addr p0, v1

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_68
    check-cast v2, Ltso;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_69
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    return-object v6

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_6e
    or-int/lit8 v3, v3, 0x4

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    if-eqz p0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_71
    if-nez v1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_99

    nop

    nop

    nop

    :goto_72
    move-object v3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_73
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_74
    if-eqz v2, :cond_f

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_76
    sget-object v6, Ltrq;->a:Ljava/util/ArrayList;

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_77
    iget-object v14, v5, Ltrp;->g:Ljava/lang/Object;

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

    :goto_78
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_79
    sget-object v0, Ltso;->a:Ltso;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_7a
    iget v3, v2, Ltso;->b:I

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-static {v0, v2, v3, v4, v1}, Ltrc;->a(Ltlp;Ljava/lang/String;IZLandroid/content/Context;)Ltlq;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_7c
    iput v2, p0, Ltso;->d:F

    nop

    nop

    nop

    :goto_7d
    goto/32 :goto_b9

    nop

    nop

    :goto_7e
    if-eqz v0, :cond_10

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_7f
    sget-object v0, Ltrc;->a:Ljava/lang/String;

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_80
    iget v2, v2, Ltso;->c:F

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_81
    sget-object v0, Ltso;->a:Ltso;

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iput v2, v3, Ltso;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_86
    const-string v2, "phone_params"

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_87
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    nop

    nop

    :goto_88
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_89
    int-to-float v1, v2

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    check-cast v2, Ltso;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_8b
    check-cast v0, Ltso;

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_8c
    iget-object v8, v5, Ltrp;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_8d
    or-int/lit8 v1, v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_8e
    iget-object p0, p0, Ltro;->a:Landroid/content/Context;

    nop

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

    nop

    :goto_8f
    check-cast v3, Ltso;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_90
    move-object v6, p0

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

    :goto_91
    check-cast p0, Ltso;

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

    :goto_92
    const-string v1, "samsung"

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_93
    array-length v5, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    iget-object v12, v5, Ltrp;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_95
    new-instance v7, Landroid/util/Size;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    if-nez v1, :cond_11

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_97
    if-nez v1, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :cond_12
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_98
    mul-float/2addr v2, p0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_99
    check-cast v1, Ljava/lang/Float;

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

    :goto_9a
    iput v3, v2, Ltso;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    mul-float/2addr v2, p0

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    if-nez v5, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    goto/16 :goto_88

    nop

    :goto_9e
    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_9f
    iget-object v1, v5, Ltrp;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_a0
    move v3, v4

    nop

    :goto_a1
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_a6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    :goto_a7
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_aa
    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_ab
    iget-object v10, v5, Ltrp;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v5, v8, v2, v7, v9}, Ltrp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

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

    :goto_ae
    iput v4, v3, Ltso;->b:I

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

    :goto_af
    if-nez v1, :cond_14

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    move-object v2, v1

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

    :goto_b1
    iget v4, v3, Ltso;->b:I

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_b2
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result p0

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

    :goto_b3
    const v3, 0x2e765996

    nop

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

    nop

    :goto_b4
    iget-object v9, v5, Ltrp;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_b5
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_b6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_b8
    iget p0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_ba
    iget p0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    check-cast v2, Ltso;

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()Ltsp;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final f(Ltsn;)Z
    .locals 8

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v5, v6

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move v4, v2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2
    move v2, v4

    nop

    nop

    nop

    nop

    :goto_3
    :try_start_0
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_44

    nop

    :catch_1
    move-exception p0

    nop

    :try_start_1
    sget-object p1, Ltrc;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_a

    nop

    nop

    nop

    :catch_2
    move-exception p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object v5, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    sget-object p1, Ltrc;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_2a

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_2f

    nop

    nop

    nop

    :catch_3
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    :try_start_2
    sget-object p1, Ltrc;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    const v0, 0x5

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

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_34

    nop

    :goto_e
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    goto/32 :goto_2e

    nop

    nop

    :goto_10
    const-string v1, "Parameters file not found for writing: "

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v0, "Error writing parameters: "

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    sget-object p0, Ltrc;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_13
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    nop

    :catch_4
    :goto_14
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_16
    const v1, 0x1f

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

    :goto_17
    return v2

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object p1, Ltrc;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    invoke-static {v3, p0}, Ltrc;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    nop

    nop

    if-eqz p1, :cond_7

    nop

    nop

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_8

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p1}, Ltlq;->h()[B

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_1b
    goto :goto_1d

    nop

    :catch_5
    move-exception p0

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

    :goto_1c
    goto :goto_14

    nop

    :goto_1d
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1e
    const-string v0, "Error clearing device parameters: "

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object p0, Ltrc;->a:Ljava/lang/String;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_35

    nop

    :goto_22
    const/16 p0, 0x8

    nop

    nop

    nop

    :try_start_4
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    nop

    nop

    nop

    const v3, 0x35587a2b

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length v3, p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_23
    move-object v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_24
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :catch_6
    :goto_26
    goto/32 :goto_45

    nop

    nop

    :goto_27
    goto/16 :goto_3

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz v2, :cond_3

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_14

    nop

    nop

    nop

    :catch_7
    move-exception p0

    nop

    :goto_2a
    :try_start_6
    sget-object p1, Ltrc;->a:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2d
    if-eqz v4, :cond_4

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2e
    return v4

    nop

    nop

    :goto_2f
    goto/32 :goto_25

    nop

    nop

    :goto_30
    sget-object v5, Ltrc;->a:Ljava/lang/String;

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

    :goto_31
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_41

    nop

    nop

    :goto_32
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_33
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_36
    const-string v3, "current_device_params"

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v5, :cond_5

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

    :cond_5
    :goto_38
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v5, :cond_6

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

    :cond_6
    goto/32 :goto_13

    nop

    nop

    :goto_3a
    const/4 v4, 0x0

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

    nop

    :goto_3b
    iget-object p0, p0, Ltro;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_3c
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_8
    new-instance v6, Ljava/io/BufferedOutputStream;

    nop

    nop

    nop

    nop

    nop

    new-instance v7, Ljava/io/FileOutputStream;

    nop

    nop

    invoke-static {v3, p0}, Ltrc;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    nop

    invoke-direct {v7, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3d
    iget-object p0, p0, Ltro;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3e
    goto :goto_42

    nop

    :catch_8
    move-exception p0

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

    :goto_3f
    const-string p1, "Could not clear Cardboard parameters from storage."

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const-string p1, "Could not write Cardboard parameters to storage."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_41
    move v2, v4

    nop

    nop

    nop

    nop

    nop

    :cond_7
    :goto_42
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_2f

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_6

    nop

    nop

    :goto_45
    throw p0

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_21

    nop

    nop

    nop

    nop
.end method
