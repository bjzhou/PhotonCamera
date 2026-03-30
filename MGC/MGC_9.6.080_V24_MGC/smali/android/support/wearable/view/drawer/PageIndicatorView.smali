.class public Landroid/support/wearable/view/drawer/PageIndicatorView;
.super Landroid/view/View;
.source "PG"

# interfaces
.implements Lelf;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field private d:I

.field private e:F

.field private f:F

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:F

.field private l:F

.field private m:F

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private final r:Landroid/graphics/Paint;

.field private final s:Landroid/graphics/Paint;

.field private final t:Landroid/graphics/Paint;

.field private final u:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/drawer/PageIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/drawer/PageIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    iput v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v4, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, p3, p3}, Landroid/support/wearable/view/drawer/PageIndicatorView;->sJoWBxSVwrFkUuPA(Landroid/content/res/TypedArray;II)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->q:I

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, p2, p3}, Landroid/support/wearable/view/drawer/PageIndicatorView;->rhVyDIFmpjTpwhie(Landroid/content/res/TypedArray;II)I

    move-result p2

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->n:I

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_6
    int-to-long v0, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, p2}, Landroid/support/wearable/view/drawer/PageIndicatorView;->jtgZbQiiwsrAjXbS(Landroid/support/wearable/view/drawer/PageIndicatorView;F)V

    :goto_8
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v3, 0xb

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

    nop

    :goto_a
    invoke-static {p2, v0, v1}, Landroid/support/wearable/view/drawer/PageIndicatorView;->tmJNAPJVxckwFwQx(Landroid/view/ViewPropertyAnimator;J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

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

    :goto_b
    iput-object v5, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->s:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_c
    const/4 p2, 0x6

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_e
    const/4 v1, 0x4

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

    :goto_f
    invoke-static {p1, v1, p3}, Landroid/support/wearable/view/drawer/PageIndicatorView;->DkfhSMIqnOGECeAk(Landroid/content/res/TypedArray;II)I

    move-result v1

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 p2, 0xc

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->u:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    iget p3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->b:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    invoke-static {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->xWTbjfHAMYjmqJRC(Landroid/support/wearable/view/drawer/PageIndicatorView;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->b:I

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_15
    const v0, 0x1f

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

    :goto_16
    iput v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->k:F

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->p:I

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v3, p2}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_19
    const-wide/16 v0, 0x7d0

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_1a
    iput-boolean v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->i:Z

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_1b
    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/wearable/view/drawer/PageIndicatorView;->YlUhwhROTRZxYnRO(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v4, p2}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_5a

    nop

    nop

    :goto_1d
    goto/16 :goto_8

    nop

    nop

    :goto_1e
    goto/32 :goto_13

    nop

    nop

    :goto_1f
    iget v9, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->n:I

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_60

    nop

    nop

    :goto_22
    iput-object p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->t:Landroid/graphics/Paint;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/high16 p2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 p2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_25
    invoke-static {p1, v3}, Landroid/support/wearable/view/drawer/PageIndicatorView;->RIcKmDSWBMIoEqHW(Landroid/graphics/Paint;I)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0x7f1501ef

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 p2, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static/range {v4 .. v9}, Landroid/support/wearable/view/drawer/PageIndicatorView;->dKyzcNlGMyssuLVw(Landroid/graphics/Paint;Landroid/graphics/Paint;FFII)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    :goto_2a
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {p1, v3, v0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->JUMAkgeISQQljMdf(Landroid/content/res/TypedArray;IF)F

    move-result v3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2c
    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_2d
    const/16 v3, 0xa

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2e
    iget v7, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->f:F

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_2f
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move-object v5, p1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget v6, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->e:F

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->KehcaTiqYAssAoUj(Landroid/support/wearable/view/drawer/PageIndicatorView;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_33
    new-instance v5, Landroid/graphics/Paint;

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_34
    const/4 p3, 0x0

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

    :goto_35
    move-object v6, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {p1, v3, p3}, Landroid/support/wearable/view/drawer/PageIndicatorView;->tUTwUybkIPatHrRs(Landroid/content/res/TypedArray;II)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_37
    iget-boolean p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->i:Z

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_38
    if-nez p2, :cond_1

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {p1, p2, v0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->QQOfoVuVOYxVImGF(Landroid/content/res/TypedArray;IF)F

    move-result p2

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

    :goto_3a
    const/16 v3, 0x8

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_3c
    invoke-static {p1, v3, v0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->igYWmvvQUTAPtqgM(Landroid/content/res/TypedArray;IF)F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_3d
    sget-object v0, Lmg;->e:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3e
    iput p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->f:F

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

    :goto_3f
    iget v10, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->n:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_40
    invoke-static {v4, p1}, Landroid/support/wearable/view/drawer/PageIndicatorView;->wGAKzEZfBGSWNWrL(Landroid/graphics/Paint;I)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {p1, v2, p3}, Landroid/support/wearable/view/drawer/PageIndicatorView;->TbfrrZPSkIYTyIbU(Landroid/content/res/TypedArray;IZ)Z

    move-result v3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iput v2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->o:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_43
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_44
    iput-boolean p3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->c:Z

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

    :goto_45
    invoke-static {p2, v0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->tPRHOOZyWzyuhbXJ(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_46
    new-instance v3, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_47
    iput v2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->j:I

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {p1, p2, v0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->pPgJCOnJUvNzwJCT(Landroid/content/res/TypedArray;IF)F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_49
    iput v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->a:I

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

    nop

    nop

    :goto_4a
    invoke-static {p2}, Landroid/support/wearable/view/drawer/PageIndicatorView;->HyiUIFIdmqzjuDDO(Landroid/view/ViewPropertyAnimator;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget v7, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->m:F

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_4c
    iput p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->d:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4d
    iget v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->h:I

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

    :goto_4e
    invoke-static/range {v5 .. v10}, Landroid/support/wearable/view/drawer/PageIndicatorView;->AHVRqJCSCLuzBMwf(Landroid/graphics/Paint;Landroid/graphics/Paint;FFII)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->g:I

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

    :goto_50
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_21

    nop

    nop

    :goto_52
    new-instance p1, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iput p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->g:I

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

    :goto_54
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_55
    iget v9, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->h:I

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-direct {v5, p2}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_b

    nop

    nop

    :goto_57
    iget v8, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->g:I

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_58
    invoke-static {v4, p1}, Landroid/support/wearable/view/drawer/PageIndicatorView;->BNYzJMIrCBdkViGX(Landroid/graphics/Paint;Landroid/graphics/Paint$Style;)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static {p1, v3, v0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->MFfPsCEeqSwBCPIM(Landroid/content/res/TypedArray;IF)F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_5a
    iput-object v4, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->r:Landroid/graphics/Paint;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_5b
    invoke-static {p1, v1, p3}, Landroid/support/wearable/view/drawer/PageIndicatorView;->CInjgPdepjyVNMhy(Landroid/content/res/TypedArray;II)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5c
    invoke-static {p2}, Landroid/support/wearable/view/drawer/PageIndicatorView;->ESFvugaSujrGIbZP(Landroid/view/ViewPropertyAnimator;)V

    goto/32 :goto_23

    nop

    nop

    :goto_5d
    iput-boolean p3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->i:Z

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_5f
    invoke-static {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->AaZRAJusgyHmNukr(Landroid/support/wearable/view/drawer/PageIndicatorView;)Z

    move-result p2

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_60
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_61
    invoke-static {p2, v0, v1}, Landroid/support/wearable/view/drawer/PageIndicatorView;->XylEDKMPSHRvHujX(Landroid/view/ViewPropertyAnimator;J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_62
    invoke-static {p1}, Landroid/support/wearable/view/drawer/PageIndicatorView;->edNZVWpkJMHlRNec(Landroid/content/res/TypedArray;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-static {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->bPSDfFGJJcuzjqts(Landroid/support/wearable/view/drawer/PageIndicatorView;)Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_64
    invoke-static {p1, v1, p3}, Landroid/support/wearable/view/drawer/PageIndicatorView;->IjMnqJxfCwgFUioa(Landroid/content/res/TypedArray;II)I

    move-result v2

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iput v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->m:F

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_66
    iput v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->l:F

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

    :goto_67
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_68
    const/16 v3, 0x9

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_69
    invoke-static {p1, v3}, Landroid/support/wearable/view/drawer/PageIndicatorView;->GMNYSpzwWInSiHtN(Landroid/graphics/Paint;Landroid/graphics/Paint$Style;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget v8, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->m:F

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    if-nez p2, :cond_2

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

    :cond_2
    goto/32 :goto_44

    nop

    nop

    :goto_6c
    invoke-static {p1, p2, p3}, Landroid/support/wearable/view/drawer/PageIndicatorView;->fguhnrzQlEHnhUcX(Landroid/content/res/TypedArray;II)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6d
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_6f
    iput p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->e:F

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

    :goto_70
    rem-int v0, v0, v1

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
.end method

.method public static AHVRqJCSCLuzBMwf(Landroid/graphics/Paint;Landroid/graphics/Paint;FFII)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static/range {p0 .. p5}, Landroid/support/wearable/view/drawer/PageIndicatorView;->e(Landroid/graphics/Paint;Landroid/graphics/Paint;FFII)V

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

.method public static AaZRAJusgyHmNukr(Landroid/support/wearable/view/drawer/PageIndicatorView;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->isInEditMode()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static AlZmnHpXLlgPybUB(Landroid/graphics/Paint;Landroid/graphics/Paint$Style;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static BCrUkzpgSfEaoKFW(Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_1

    nop

    nop

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

    nop
.end method

.method public static BNYzJMIrCBdkViGX(Landroid/graphics/Paint;Landroid/graphics/Paint$Style;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static BVCJYNhUIlwmecEJ(Landroid/view/ViewPropertyAnimator;)V
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

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static BeUbTwyrzdJUETHa(Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static CInjgPdepjyVNMhy(Landroid/content/res/TypedArray;II)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static CggqcFAnWVOUUjfm(Landroid/graphics/Paint;I)V
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

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static CuExuMovwGVFZOpc(I)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static DGbpvNHohaurruwP(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static DPottvFupsFcwtYK(III)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-static {p0, p1, p2}, Landroid/support/wearable/view/drawer/PageIndicatorView;->resolveSizeAndState(III)I

    move-result v0

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

.method public static DkfhSMIqnOGECeAk(Landroid/content/res/TypedArray;II)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static ESFvugaSujrGIbZP(Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static EmpUIPTUGUdLxmnI(Landroid/view/ViewPropertyAnimator;J)Landroid/view/ViewPropertyAnimator;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

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

    nop
.end method

.method public static FbqBQTgGWWXwyUod(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static GMNYSpzwWInSiHtN(Landroid/graphics/Paint;Landroid/graphics/Paint$Style;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static GsKTGeoGMqSgCqsw(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static HyiUIFIdmqzjuDDO(Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static IjMnqJxfCwgFUioa(Landroid/content/res/TypedArray;II)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

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

    nop
.end method

.method public static JQPiZXEhqEfxlicm(Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static JUMAkgeISQQljMdf(Landroid/content/res/TypedArray;IF)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static KehcaTiqYAssAoUj(Landroid/support/wearable/view/drawer/PageIndicatorView;)Landroid/view/ViewPropertyAnimator;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static LOIWBKfKfPkSgyTN(D)D
    .locals 2

    goto/32 :goto_4

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_2
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    return-wide v0

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public static MFfPsCEeqSwBCPIM(Landroid/content/res/TypedArray;IF)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

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

    :goto_1
    return v0

    nop
.end method

.method public static NOyemwJpLWbxGiDc(Landroid/support/wearable/view/drawer/PageIndicatorView;)Landroid/view/ViewPropertyAnimator;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static OGpgEEzyMEipduAF(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static OrDePrqWeJnjqnTx(FF)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

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
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static QQOfoVuVOYxVImGF(Landroid/content/res/TypedArray;IF)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

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

.method public static RIcKmDSWBMIoEqHW(Landroid/graphics/Paint;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static RpfwwbjZRENLTEEg(Landroid/support/wearable/view/drawer/PageIndicatorView;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->getPaddingLeft()I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static SSJsjehPjFgvJJtx(Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto/32 :goto_1

    nop

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

    nop
.end method

.method public static SXjYBPGpFPjoIVKa(Landroid/support/wearable/view/drawer/PageIndicatorView;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/support/wearable/view/drawer/PageIndicatorView;->da190e616797844b591057d0190e7728m(J)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static TDhfpnpOrILlHGza(Landroid/support/wearable/view/drawer/PageIndicatorView;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->invalidate()V

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

.method public static TbfrrZPSkIYTyIbU(Landroid/content/res/TypedArray;IZ)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static VPxfcnvQOWeavgLN(Landroid/support/wearable/view/drawer/PageIndicatorView;)Landroid/view/ViewPropertyAnimator;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

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

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static WIjVdlqWihwQTrnD(Landroid/graphics/Canvas;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static XGPdgLJrcapKLurt(Landroid/graphics/Canvas;FF)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static XxUBDHyqMdlBWAZy(Landroid/support/wearable/view/drawer/PageIndicatorView;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->getPaddingTop()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static XylEDKMPSHRvHujX(Landroid/view/ViewPropertyAnimator;J)Landroid/view/ViewPropertyAnimator;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

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
.end method

.method public static YRjbjsOFOmIDwpft(Landroid/support/wearable/view/drawer/PageIndicatorView;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->getPaddingBottom()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static YlUhwhROTRZxYnRO(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static aIaqAIkBTmuwVYru(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static bPSDfFGJJcuzjqts(Landroid/support/wearable/view/drawer/PageIndicatorView;)Landroid/content/Context;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static dKTwhiyGslIasZFC(Landroid/graphics/Canvas;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static dKyzcNlGMyssuLVw(Landroid/graphics/Paint;Landroid/graphics/Paint;FFII)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static/range {p0 .. p5}, Landroid/support/wearable/view/drawer/PageIndicatorView;->e(Landroid/graphics/Paint;Landroid/graphics/Paint;FFII)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m(J)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->BVCJYNhUIlwmecEJ(Landroid/view/ViewPropertyAnimator;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, v0, v1}, Landroid/support/wearable/view/drawer/PageIndicatorView;->EmpUIPTUGUdLxmnI(Landroid/view/ViewPropertyAnimator;J)Landroid/view/ViewPropertyAnimator;

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

    :goto_2
    invoke-static {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->lFVVBObaltRaXqRc(Landroid/support/wearable/view/drawer/PageIndicatorView;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    :goto_4
    invoke-static {v0, p1, p2}, Landroid/support/wearable/view/drawer/PageIndicatorView;->fcZHacyMXOpbOwDu(Landroid/view/ViewPropertyAnimator;J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    iput-boolean v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_10

    nop

    :goto_a
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    int-to-long v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_f

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget p0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->b:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->SSJsjehPjFgvJJtx(Landroid/view/ViewPropertyAnimator;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->rpnVCFEUjZjZDMUH(Landroid/support/wearable/view/drawer/PageIndicatorView;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

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

    :goto_15
    invoke-static {v0, v1}, Landroid/support/wearable/view/drawer/PageIndicatorView;->hhIvYkYHjlPZBdsb(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method private static final e(Landroid/graphics/Paint;Landroid/graphics/Paint;FFII)V
    .locals 8

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_0
    const/high16 p2, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1
    aput p2, v5, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4
    div-float/2addr p2, v3

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

    :goto_5
    const/4 v0, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object v0, v7

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

    :goto_7
    aput p3, v5, v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_8
    new-array v5, p3, [F

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v7, Landroid/graphics/RadialGradient;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-float v3, p2, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    filled-new-array {p5, p5, v0}, [I

    move-result-object v4

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_f
    const/4 p3, 0x3

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

    nop

    :goto_10
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto/32 :goto_1f

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_15
    invoke-static {p0, p4}, Landroid/support/wearable/view/drawer/PageIndicatorView;->CggqcFAnWVOUUjfm(Landroid/graphics/Paint;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    aput p2, v5, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p3, 0x2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_18
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_12

    nop

    :goto_1b
    invoke-static {p0, p1}, Landroid/support/wearable/view/drawer/PageIndicatorView;->AlZmnHpXLlgPybUB(Landroid/graphics/Paint;Landroid/graphics/Paint$Style;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0xd

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1d
    const/4 p3, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x9

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

    nop

    nop

    :goto_1f
    invoke-static {p1, v7}, Landroid/support/wearable/view/drawer/PageIndicatorView;->rQHwwDXyCFpJGzUh(Landroid/graphics/Paint;Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/32 :goto_15

    nop

    nop

    :goto_20
    const/4 p3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public static edNZVWpkJMHlRNec(Landroid/content/res/TypedArray;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static ewNxHBsTjndEhGFR(I)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public static ezgGLnmPkXrhCqtk(Landroid/support/wearable/view/drawer/PageIndicatorView;)Landroid/view/ViewPropertyAnimator;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static fcZHacyMXOpbOwDu(Landroid/view/ViewPropertyAnimator;J)Landroid/view/ViewPropertyAnimator;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static fguhnrzQlEHnhUcX(Landroid/content/res/TypedArray;II)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static gLICNpWPxDWkzEsk(Landroid/view/ViewPropertyAnimator;Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static hhIvYkYHjlPZBdsb(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static iaHVipsjJIwnMRDf(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static icLTDzRoVmniLRfC(Landroid/support/wearable/view/drawer/PageIndicatorView;II)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/wearable/view/drawer/PageIndicatorView;->setMeasuredDimension(II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static igYWmvvQUTAPtqgM(Landroid/content/res/TypedArray;IF)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static jTFvBKsXNbFRXXBx(Landroid/view/ViewPropertyAnimator;J)Landroid/view/ViewPropertyAnimator;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static jtgZbQiiwsrAjXbS(Landroid/support/wearable/view/drawer/PageIndicatorView;F)V
    .locals 0

    goto/32 :goto_1

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
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/drawer/PageIndicatorView;->setAlpha(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static kPpPZohltWWPuwad(Landroid/support/wearable/view/drawer/PageIndicatorView;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->getPaddingRight()I

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static lFVVBObaltRaXqRc(Landroid/support/wearable/view/drawer/PageIndicatorView;)Landroid/view/ViewPropertyAnimator;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

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

    nop
.end method

.method public static lmCgVwbXLANrHFve(Landroid/support/wearable/view/drawer/PageIndicatorView;)Landroid/view/ViewPropertyAnimator;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static muuljmXBrkVEDTHP(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static neFwQqklbeIZaWQm(III)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2}, Landroid/support/wearable/view/drawer/PageIndicatorView;->resolveSizeAndState(III)I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static pPgJCOnJUvNzwJCT(Landroid/content/res/TypedArray;IF)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static paSdoqhihgNlTwsT(Landroid/view/ViewPropertyAnimator;J)Landroid/view/ViewPropertyAnimator;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static qBIfHSGLvBZXyrlN(Landroid/support/wearable/view/drawer/PageIndicatorView;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->getPaddingLeft()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop
.end method

.method public static rQHwwDXyCFpJGzUh(Landroid/graphics/Paint;Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v0

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

    nop
.end method

.method public static rhVyDIFmpjTpwhie(Landroid/content/res/TypedArray;II)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static rpnVCFEUjZjZDMUH(Landroid/support/wearable/view/drawer/PageIndicatorView;)Landroid/view/ViewPropertyAnimator;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

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

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static sJoWBxSVwrFkUuPA(Landroid/content/res/TypedArray;II)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static tPRHOOZyWzyuhbXJ(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static tUTwUybkIPatHrRs(Landroid/content/res/TypedArray;II)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static tmJNAPJVxckwFwQx(Landroid/view/ViewPropertyAnimator;J)Landroid/view/ViewPropertyAnimator;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

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

    nop
.end method

.method public static umjdrDJeVvnhwFND(Landroid/view/ViewPropertyAnimator;J)Landroid/view/ViewPropertyAnimator;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

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

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static unsUkABhSOmKaXfB(Landroid/support/wearable/view/drawer/PageIndicatorView;J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Landroid/support/wearable/view/drawer/PageIndicatorView;->da190e616797844b591057d0190e7728m(J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static wGAKzEZfBGSWNWrL(Landroid/graphics/Paint;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static woBOjwJALaUNUMhc(I)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static xWTbjfHAMYjmqJRC(Landroid/support/wearable/view/drawer/PageIndicatorView;)Landroid/view/ViewPropertyAnimator;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static xebCyfdCHtGKiMUh(I)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop
.end method

.method public static yFKmbLYNfciKZwtO(Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static yKoJuLakzncSKdxe(Landroid/view/ViewPropertyAnimator;J)Landroid/view/ViewPropertyAnimator;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static yYZXvirIFrIUCUcA(Landroid/graphics/Canvas;FF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

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

.method public static zUavpxQkOXSWHzhK(Landroid/support/wearable/view/drawer/PageIndicatorView;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->getHeight()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->VPxfcnvQOWeavgLN(Landroid/support/wearable/view/drawer/PageIndicatorView;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    int-to-long v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->j:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, v0, v1}, Landroid/support/wearable/view/drawer/PageIndicatorView;->jTFvBKsXNbFRXXBx(Landroid/view/ViewPropertyAnimator;J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    invoke-static {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->ezgGLnmPkXrhCqtk(Landroid/support/wearable/view/drawer/PageIndicatorView;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    :goto_7
    const/4 p1, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->q:I

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_9
    iput-boolean p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->c:Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    iget-boolean v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->i:Z

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

    :goto_b
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    int-to-long v0, v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lmr;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x13

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

    nop

    nop

    :goto_f
    invoke-static {p1, v0, v1}, Landroid/support/wearable/view/drawer/PageIndicatorView;->paSdoqhihgNlTwsT(Landroid/view/ViewPropertyAnimator;J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1d

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_2

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0, p0}, Lmr;-><init>(Landroid/support/wearable/view/drawer/PageIndicatorView;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->a:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_18
    invoke-static {p1, v0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->gLICNpWPxDWkzEsk(Landroid/view/ViewPropertyAnimator;Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_19
    const v1, 0x13

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

    :goto_1a
    invoke-static {p1}, Landroid/support/wearable/view/drawer/PageIndicatorView;->yFKmbLYNfciKZwtO(Landroid/view/ViewPropertyAnimator;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p1, v0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->FbqBQTgGWWXwyUod(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1c
    goto/32 :goto_23

    nop

    :goto_1d
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1e
    invoke-static {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->BeUbTwyrzdJUETHa(Landroid/view/ViewPropertyAnimator;)V

    :goto_1f
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p0, v0, v1}, Landroid/support/wearable/view/drawer/PageIndicatorView;->SXjYBPGpFPjoIVKa(Landroid/support/wearable/view/drawer/PageIndicatorView;J)V

    goto/32 :goto_11

    nop

    nop

    :goto_21
    if-nez p1, :cond_3

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    :goto_23
    goto/32 :goto_25

    nop

    nop

    :goto_24
    iget-boolean p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1d

    nop

    :goto_26
    if-ne v0, p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->q:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public final b(I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->p:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->p:I

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
    if-ne p1, v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-static {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->TDhfpnpOrILlHGza(Landroid/support/wearable/view/drawer/PageIndicatorView;)V

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(IF)V
    .locals 3

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_0
    int-to-long v0, p0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2
    iget-boolean p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->c:Z

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->NOyemwJpLWbxGiDc(Landroid/support/wearable/view/drawer/PageIndicatorView;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->c:Z

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    const-wide/16 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    const v1, 0xb

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_8
    invoke-static {p1, v1, v2}, Landroid/support/wearable/view/drawer/PageIndicatorView;->umjdrDJeVvnhwFND(Landroid/view/ViewPropertyAnimator;J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p1}, Landroid/support/wearable/view/drawer/PageIndicatorView;->JQPiZXEhqEfxlicm(Landroid/view/ViewPropertyAnimator;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1, p2}, Landroid/support/wearable/view/drawer/PageIndicatorView;->GsKTGeoGMqSgCqsw(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->q:I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/high16 p2, 0x3f800000    # 1.0f

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

    nop

    :goto_d
    iget-boolean p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->i:Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->lmCgVwbXLANrHFve(Landroid/support/wearable/view/drawer/PageIndicatorView;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_12
    goto/32 :goto_22

    nop

    :goto_13
    iget p0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->j:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    cmpl-float p1, p2, p1

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

    :goto_15
    const/4 v0, 0x1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->BCrUkzpgSfEaoKFW(Landroid/view/ViewPropertyAnimator;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_17
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    :goto_18
    invoke-static {p0, v1, v2}, Landroid/support/wearable/view/drawer/PageIndicatorView;->unsUkABhSOmKaXfB(Landroid/support/wearable/view/drawer/PageIndicatorView;J)V

    :goto_19
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1a
    invoke-static {p1, v0, v1}, Landroid/support/wearable/view/drawer/PageIndicatorView;->yKoJuLakzncSKdxe(Landroid/view/ViewPropertyAnimator;J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

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

    nop

    :goto_1b
    iget-boolean p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->c:Z

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 p1, 0x0

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

    :goto_1d
    return-void

    nop

    :goto_1e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_20
    if-eqz p1, :cond_3

    nop

    nop

    goto/32 :goto_19

    nop

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

    :goto_21
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_21

    nop

    :goto_25
    if-eq p1, v0, :cond_5

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1c

    nop

    nop

    nop
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Landroid/support/wearable/view/drawer/PageIndicatorView;->dKTwhiyGslIasZFC(Landroid/graphics/Canvas;)I

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2
    iget v4, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->l:F

    nop

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

    :goto_3
    invoke-static {p1, v1, v2}, Landroid/support/wearable/view/drawer/PageIndicatorView;->XGPdgLJrcapKLurt(Landroid/graphics/Canvas;FF)V

    goto/32 :goto_13

    nop

    nop

    :goto_4
    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->f:F

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_5
    div-float/2addr v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->e:F

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->o:I

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->o:I

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

    :goto_c
    invoke-static {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->RpfwwbjZRENLTEEg(Landroid/support/wearable/view/drawer/PageIndicatorView;)I

    move-result v0

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_d
    invoke-static {p1}, Landroid/support/wearable/view/drawer/PageIndicatorView;->WIjVdlqWihwQTrnD(Landroid/graphics/Canvas;)V

    :goto_e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_36

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->t:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_12
    if-gt v0, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    if-lt v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->r:Landroid/graphics/Paint;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p0, p1}, Landroid/support/wearable/view/drawer/PageIndicatorView;->muuljmXBrkVEDTHP(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_18
    const v0, 0x11

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_19
    invoke-static {p1, v3, v4, v1, v5}, Landroid/support/wearable/view/drawer/PageIndicatorView;->iaHVipsjJIwnMRDf(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/high16 v3, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1b
    iget-object v5, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->s:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2d

    nop

    nop

    :goto_1e
    add-float/2addr v1, v3

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->m:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_20
    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->d:I

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_22
    invoke-static {p1, v0, v2}, Landroid/support/wearable/view/drawer/PageIndicatorView;->yYZXvirIFrIUCUcA(Landroid/graphics/Canvas;FF)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_24
    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->f:F

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {p1, v2, v2, v1, v3}, Landroid/support/wearable/view/drawer/PageIndicatorView;->aIaqAIkBTmuwVYru(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    :goto_26
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x8

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_28
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_29
    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->p:I

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2a
    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->e:F

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2b
    if-eq v0, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2c
    iget v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->m:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-float/2addr v1, v3

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget v4, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->l:F

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_30
    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->d:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {p1, v3, v4, v1, v5}, Landroid/support/wearable/view/drawer/PageIndicatorView;->DGbpvNHohaurruwP(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {p1, v2, v2, v1, v3}, Landroid/support/wearable/view/drawer/PageIndicatorView;->OGpgEEzyMEipduAF(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_33
    iget v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->k:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_34
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3b

    nop

    :goto_35
    const/4 v0, 0x0

    nop

    nop

    :goto_36
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->zUavpxQkOXSWHzhK(Landroid/support/wearable/view/drawer/PageIndicatorView;)I

    move-result v2

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

    :goto_38
    div-float/2addr v2, v3

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_39
    iget v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->k:F

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_3a
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_1d

    nop

    nop

    :goto_3c
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v5, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->u:Landroid/graphics/Paint;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    int-to-float v0, v0

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

    :goto_3f
    add-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1
    iget v2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->l:F

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    add-float/2addr v1, v2

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

    :goto_3
    invoke-static {p1}, Landroid/support/wearable/view/drawer/PageIndicatorView;->ewNxHBsTjndEhGFR(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int/2addr v0, v2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    float-to-int v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    const/high16 v1, 0x40000000    # 2.0f

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_7
    double-to-int v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    invoke-static {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->kPpPZohltWWPuwad(Landroid/support/wearable/view/drawer/PageIndicatorView;)I

    move-result v2

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

    :goto_9
    int-to-float v1, v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->e:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    iget v2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->d:I

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

    :goto_c
    add-float/2addr v3, v2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->o:I

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

    :goto_e
    invoke-static {p1}, Landroid/support/wearable/view/drawer/PageIndicatorView;->woBOjwJALaUNUMhc(I)I

    move-result v0

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_f
    add-int/2addr v1, v2

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2e

    nop

    nop

    :goto_11
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_12
    invoke-static {v1, v2}, Landroid/support/wearable/view/drawer/PageIndicatorView;->LOIWBKfKfPkSgyTN(D)D

    move-result-wide v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    iget v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->f:F

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

    :goto_14
    if-eq v2, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    :goto_15
    add-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    iget v2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->m:F

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_19
    invoke-static {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->YRjbjsOFOmIDwpft(Landroid/support/wearable/view/drawer/PageIndicatorView;)I

    move-result v2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_1

    nop

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

    :goto_1b
    invoke-static {p0, p1, p2}, Landroid/support/wearable/view/drawer/PageIndicatorView;->icLTDzRoVmniLRfC(Landroid/support/wearable/view/drawer/PageIndicatorView;II)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1c
    mul-int/2addr v0, v2

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eq v0, v1, :cond_2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p2}, Landroid/support/wearable/view/drawer/PageIndicatorView;->CuExuMovwGVFZOpc(I)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1f
    invoke-static {v0, p1, v2}, Landroid/support/wearable/view/drawer/PageIndicatorView;->DPottvFupsFcwtYK(III)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_20
    goto :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_22
    add-float/2addr v1, v1

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

    :goto_23
    invoke-static {p2}, Landroid/support/wearable/view/drawer/PageIndicatorView;->xebCyfdCHtGKiMUh(I)I

    move-result v1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->qBIfHSGLvBZXyrlN(Landroid/support/wearable/view/drawer/PageIndicatorView;)I

    move-result v2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_18

    nop

    :goto_26
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->XxUBDHyqMdlBWAZy(Landroid/support/wearable/view/drawer/PageIndicatorView;)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_28
    invoke-static {v1, p2, v2}, Landroid/support/wearable/view/drawer/PageIndicatorView;->neFwQqklbeIZaWQm(III)I

    move-result p2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_29
    float-to-double v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2a
    add-int/2addr v0, v2

    nop

    :goto_2b
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2c
    invoke-static {v1, v3}, Landroid/support/wearable/view/drawer/PageIndicatorView;->OrDePrqWeJnjqnTx(FF)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v2, 0x0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2f
    const v1, 0x14

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_10

    nop

    nop

    :goto_31
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    add-float/2addr v1, v2

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

    :goto_33
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop
.end method
