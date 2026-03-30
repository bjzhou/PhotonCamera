.class public final synthetic Lmgo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lmgo;->b:I

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput-object p1, p0, Lmgo;->a:Ljava/lang/Object;

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
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_1
    goto/32 :goto_b8

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lmgo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p1, Lmgn;->c:Landroid/content/pm/ResolveInfo;

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    :cond_2
    goto/32 :goto_cf

    nop

    :goto_a
    sget-object p1, Lmgn;->a:Landroid/graphics/ColorMatrixColorFilter;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Lmgs;->a(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz p1, :cond_3

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7f

    nop

    nop

    :goto_d
    iget-object p0, p0, Lmhb;->t:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_e
    check-cast p0, Lmhb;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    check-cast p0, Ltkb;

    nop

    goto/32 :goto_e9

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    :goto_13
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lmgo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_15
    sget-object v0, Lsnr;->a:Lsnr;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    check-cast p0, Lmgs;

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_17
    sget-object v0, Lsnr;->a:Lsnr;

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

    :goto_18
    const/16 v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_19
    iget v0, p0, Lsnr;->b:I

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v3}, Lmgs;->f(Z)V

    goto/32 :goto_24

    nop

    nop

    :goto_1b
    xor-int/lit8 v0, p0, 0x1

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

    :goto_1c
    iget-object p0, p0, Lmgo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p0, Ltkb;

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Ltkg;->C()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lrss;->f()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_20
    or-int/lit8 v0, v0, 0x40

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_22
    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast p0, Lsnr;

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, v3}, Lmgs;->e(I)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, p1}, Lmgs;->g(Lrss;)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_26
    iput p1, p0, Lsnr;->h:F

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_27
    check-cast p0, Lmhb;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_29
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0, p1}, Lmgs;->a(I)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p0, p0, Ltkb;->b:Ltkg;

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

    :goto_2c
    goto/32 :goto_d0

    nop

    :goto_2d
    iget-object p0, p0, Lmgo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_2e
    check-cast p0, Lsnr;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2f
    iput v0, p0, Lsnr;->b:I

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_30
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_31
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    :goto_33
    iget-object p0, p0, Lmgo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1, v0}, Lmgn;->setEnabled(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_35
    iget v0, p0, Lsnr;->b:I

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast p0, Ltkb;

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    check-cast p0, Ltkb;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_38
    iput v0, p0, Lsnr;->b:I

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_39
    or-int/lit16 v0, v0, 0x80

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

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

    :goto_3b
    goto/16 :goto_6c

    nop

    :goto_3c
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast p1, Landroid/animation/Animator;

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0, p1}, Lmgs;->g(Lrss;)V

    goto/32 :goto_c0

    nop

    nop

    :goto_3f
    iget p1, p0, Lsnr;->b:I

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_40
    iget-object v0, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    :goto_41
    iget-object p0, p0, Lmgo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v0, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p0, v2}, Lmgs;->f(Z)V

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    check-cast p0, Ltkb;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_45
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_46
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_47
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :goto_48
    iput-wide v0, p0, Lsnr;->g:J

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

    :goto_49
    invoke-virtual {p0, p1}, Lnca;->v(I)V

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p0, v1}, Lmgs;->setVisibility(I)V

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_4b
    or-int/lit8 v0, v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_4c
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p0, v3, v3, v3, v3}, Lmgs;->setPadding(IIII)V

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p0}, Lmhb;->f()V

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_4f
    const v0, 0x7f0707e7

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget v0, p0, Lsnr;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_51
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

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

    nop

    :goto_53
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_54
    check-cast p0, Landroid/graphics/ColorFilter;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_55
    check-cast p1, Ljava/lang/Integer;

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

    nop

    :goto_56
    invoke-virtual {p0, v3}, Lmgs;->setVisibility(I)V

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_57
    iget-object v0, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_58
    check-cast p0, Lrss;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_59
    iget-object v0, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_5a
    iget-object p0, p0, Lmgo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_5b
    iput p1, p0, Lsnr;->c:F

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_5d
    goto/32 :goto_99

    nop

    nop

    nop

    :goto_5e
    return-void

    nop

    nop

    :pswitch_1
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_60
    iget v0, p0, Lsnr;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_61
    check-cast p1, Landroid/animation/Animator;

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_62
    iput p1, p0, Lsnr;->e:F

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_63
    check-cast p1, Landroid/animation/Animator;

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-eqz v0, :cond_7

    nop

    nop

    goto/32 :goto_88

    nop

    :cond_7
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iput v0, p0, Lsnr;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_66
    check-cast p0, Ltkb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_67
    iput v0, p0, Lsnr;->b:I

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_68
    check-cast p0, Lsnr;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_69
    return-void

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iput v0, p0, Lsnr;->b:I

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    sget-object p0, Lmgn;->a:Landroid/graphics/ColorMatrixColorFilter;

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {p0, v3, p1, v3, v0}, Lmgs;->setPadding(IIII)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_6e
    check-cast p0, Lmgs;

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    :goto_6f
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_70
    if-eqz v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_85

    nop

    nop

    :goto_71
    if-eqz v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    :cond_9
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_72
    iget-object p0, p0, Lmgo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    :goto_73
    sget-object p1, Lsnr;->a:Lsnr;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_74
    check-cast p1, Landroid/animation/Animator;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_75
    iget-object p0, p0, Lmgo;->a:Ljava/lang/Object;

    nop

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

    :goto_76
    return-void

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_77
    check-cast p1, Lmgn;

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_78
    iget-object p0, p0, Lmgo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_79
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_9
        :pswitch_1
        :pswitch_e
        :pswitch_10
        :pswitch_d
        :pswitch_13
        :pswitch_12
        :pswitch_c
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_a
        :pswitch_11
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_7
        :pswitch_2
        :pswitch_4
    .end packed-switch

    :goto_7a
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    check-cast p0, Lsnr;

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_7c
    iget v0, p0, Lsnr;->b:I

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    or-int/lit8 v0, v0, 0x2

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_7e
    iget-object v0, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_80
    goto/32 :goto_b2

    nop

    nop

    :goto_81
    check-cast p1, Ljava/util/function/Supplier;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_82
    return-void

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {p0, v3}, Lmgs;->setVisibility(I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    check-cast p0, Lsnr;

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_86
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_88
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_89
    return-void

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    return-void

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_8b
    check-cast p0, Lrxw;

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_8c
    check-cast p0, Ltkb;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iput v0, p0, Lsnr;->b:I

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_8e
    check-cast p0, Lsnr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {p0}, Lmgs;->getChildCount()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_90
    check-cast p1, Landroid/animation/Animator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_91
    sget-object v0, Lsnr;->a:Lsnr;

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_92
    return-void

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {p0, v2}, Lmgs;->f(Z)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    check-cast p1, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {p0, p1}, Lmgs;->e(I)V

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_96
    check-cast p0, Lmgs;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_97
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_98
    iget-object p0, p0, Lmgo;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    iget-object p0, p0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object p1, p0, Ltkb;->b:Ltkg;

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

    :goto_9b
    iget-object p0, p0, Lmgo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    const p1, 0x7f0707ef

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    int-to-float p1, p1

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    iget-object p0, p0, Lmgo;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_a0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_a2
    check-cast p1, Landroid/animation/Animator;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_a3
    iget-object p0, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {p1, p0}, Lmgn;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    return-void

    nop

    nop

    :pswitch_8
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {p1, p0}, Lmgn;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    check-cast p0, Lmgs;

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    iget-object p0, p0, Lmgo;->a:Ljava/lang/Object;

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

    :goto_ab
    iput p1, p0, Lsnr;->d:F

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_ac
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_ad
    return-void

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_af
    return-void

    nop

    :pswitch_a
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_b0
    const/4 v3, 0x0

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_b2
    iget-object p0, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    :goto_b3
    iget-object p0, p0, Lmgo;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    or-int/lit8 p1, p1, 0x10

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_b5
    iget v0, p0, Lsnr;->b:I

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_b7
    iget-object p0, p0, Lmgo;->a:Ljava/lang/Object;

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

    nop

    :goto_b8
    iget-object p0, p0, Ltkb;->b:Ltkg;

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

    nop

    nop

    :goto_b9
    return-void

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    return-void

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_bc
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_63

    nop

    nop

    :goto_bd
    check-cast p1, Ljava/lang/Float;

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_be
    check-cast p0, Lsnr;

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

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

    :goto_c0
    return-void

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_74

    nop

    nop

    nop

    :goto_c1
    or-int/lit8 v0, v0, 0x20

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_c3
    check-cast p1, Lmgn;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c4
    check-cast p1, Landroid/animation/Animator;

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_c6
    iget-object p0, p0, Lmgo;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_c7
    sget-object v0, Lsnr;->a:Lsnr;

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

    :goto_c8
    iget-object p0, p0, Lmgo;->a:Ljava/lang/Object;

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

    :goto_c9
    iput p1, p0, Lsnr;->i:F

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    iget v0, p0, Lsnr;->b:I

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    check-cast p0, Ltkb;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_cc
    check-cast p1, Landroid/animation/Animator;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_cd
    return-void

    nop

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_ac

    nop

    nop

    :goto_ce
    iget-object p0, p0, Lmgo;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    goto/32 :goto_7a

    nop

    :goto_d0
    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-virtual {p0, v3}, Lmgs;->f(Z)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d2
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_d4
    iget-object p0, p0, Lmgo;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_d5
    iput v0, p0, Lsnr;->b:I

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    return-void

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    iput p1, p0, Lsnr;->j:F

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_d8
    iput p1, p0, Lsnr;->b:I

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {p0, p1}, Lrxw;->h(Ljava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    const/4 p0, 0x0

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_db
    sget-object v0, Lsnr;->a:Lsnr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_dc
    check-cast p0, Lnca;

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_dd
    return-void

    nop

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_3d

    nop

    nop

    :goto_de
    check-cast p0, Lmgs;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_df
    iput p1, p0, Lsnr;->f:I

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    check-cast p0, Lmgs;

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_e1
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_e2
    iget-object p0, p0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    check-cast p0, Lsnr;

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-interface {p0, p1}, Lmsx;->j(Ljava/util/function/Supplier;)V

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    or-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_e8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    iget-object v0, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    sget-object v0, Lsnr;->a:Lsnr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_eb
    sget-object v0, Lsnr;->a:Lsnr;

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_ec
    rem-int v0, v0, v1

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

    :goto_ed
    check-cast p1, Landroid/animation/Animator;

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_ee
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_ef
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    iget-object p0, p0, Lmgo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    or-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-virtual {p0, v3}, Lmgs;->f(Z)V

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    iget v0, p0, Lmgo;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    goto/32 :goto_1d

    nop

    nop

    :goto_0
    return-object p0

    nop

    :pswitch_0
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    :pswitch_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    :pswitch_6
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_21

    nop

    nop

    :goto_11
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_8

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_c
        :pswitch_11
        :pswitch_a
        :pswitch_13
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_7
        :pswitch_b
        :pswitch_3
        :pswitch_0
        :pswitch_f
        :pswitch_6
        :pswitch_10
        :pswitch_d
        :pswitch_5
        :pswitch_e
        :pswitch_12
        :pswitch_2
    .end packed-switch

    :goto_14
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

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

    :goto_15
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

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

    :goto_17
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

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

    :goto_18
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

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

    :goto_19
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_11

    nop

    nop

    :goto_1a
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

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

    :goto_1c
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    iget v0, p0, Lmgo;->b:I

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-object p0

    nop

    :pswitch_e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_21
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_22
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

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

    :goto_23
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_24
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_17

    nop

    nop

    :goto_25
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_26
    return-object p0

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_23

    nop

    nop

    :goto_27
    return-object p0

    nop

    nop

    :pswitch_12
    goto/32 :goto_7

    nop

    nop

    :goto_28
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

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

    nop

    :goto_29
    return-object p0

    nop

    nop

    :pswitch_13
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method
