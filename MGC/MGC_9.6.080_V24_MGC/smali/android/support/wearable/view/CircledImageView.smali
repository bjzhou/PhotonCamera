.class public Landroid/support/wearable/view/CircledImageView;
.super Landroid/view/View;
.source "PG"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final a:Landroid/graphics/RectF;

.field public b:I

.field private final c:Landroid/graphics/Paint;

.field private final d:Lmk;

.field private e:Landroid/content/res/ColorStateList;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:I

.field private m:Landroid/graphics/Paint$Cap;

.field private n:F

.field private o:F

.field private p:Z

.field private final q:Lmp;

.field private r:F

.field private s:F

.field private t:Ljava/lang/Integer;

.field private u:Ljava/lang/Integer;

.field private final v:Landroid/graphics/drawable/Drawable$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    new-instance v0, Landroid/animation/ArgbEvaluator;

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
    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

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
    const/4 v0, 0x0

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
    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/CircledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

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
    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/CircledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Landroid/support/wearable/view/CircledImageView;->f:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_1
    div-float/2addr p1, v3

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v3, 0x12

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p2, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_5
    const/high16 p1, 0x1060000

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_6
    const/16 p1, 0x10

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p2, v2, p1}, Landroid/support/wearable/view/CircledImageView;->sVDVPhrPormACESt(Landroid/content/res/TypedArray;IF)F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_8
    invoke-direct {v1, p0}, Lmi;-><init>(Landroid/support/wearable/view/CircledImageView;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView;->m:Landroid/graphics/Paint$Cap;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p1, Lmp;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_b
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_74

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

    nop

    :goto_c
    invoke-static {v2, v3, p1}, Landroid/support/wearable/view/CircledImageView;->XkTRXQmLbVHYcipu(Landroid/graphics/drawable/Drawable$ConstantState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

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

    :goto_d
    invoke-static {p1}, Landroid/support/wearable/view/CircledImageView;->XLUQgCANreMPgDpl(Landroid/content/Context;)Landroid/content/res/Resources$Theme;

    move-result-object p1

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

    :goto_e
    invoke-static {p2, p1}, Landroid/support/wearable/view/CircledImageView;->pzyRGkhvpdErkAyw(Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p3, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p2, p1, p3}, Landroid/support/wearable/view/CircledImageView;->khJcLhfTIcxhLUOw(Landroid/content/res/TypedArray;IF)F

    move-result p1

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

    nop

    :goto_11
    invoke-static {p1}, Landroid/support/wearable/view/CircledImageView;->ooScsBgnOvIOWwzl(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v2, 0x11

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView;->u:Ljava/lang/Integer;

    nop

    :goto_14
    goto/32 :goto_6

    nop

    nop

    :goto_15
    const/16 p1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p2, v2, v0}, Landroid/support/wearable/view/CircledImageView;->npMXESBoAYikRKfa(Landroid/content/res/TypedArray;II)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_65

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_1b
    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_1c
    invoke-static {p1}, Landroid/support/wearable/view/CircledImageView;->cChEItLAqnHvXJgK(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_1d
    iput-object v2, p0, Landroid/support/wearable/view/CircledImageView;->f:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v2, p2, v3}, Landroid/support/wearable/view/CircledImageView;->GmbadcSWSBivbihv(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 p3, 0x0

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

    nop

    :goto_20
    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->h:F

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

    :goto_21
    invoke-static {p2, p1, p3}, Landroid/support/wearable/view/CircledImageView;->xsBdujUNFcljFiVo(Landroid/content/res/TypedArray;IF)F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_22
    iput-object v1, p0, Landroid/support/wearable/view/CircledImageView;->v:Landroid/graphics/drawable/Drawable$Callback;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_23
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->i:F

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_25
    invoke-static {p2, p1}, Landroid/support/wearable/view/CircledImageView;->VhTsxoeIMtmshlwE(Landroid/content/res/TypedArray;I)Z

    move-result v2

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {p1, v1}, Landroid/support/wearable/view/CircledImageView;->rATQqMJcKBJGOvJY(Lmp;Landroid/graphics/drawable/Drawable$Callback;)V

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/16 p1, 0x16

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {p1}, Landroid/support/wearable/view/CircledImageView;->vjFgXEegEbXcvRQm(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {p2, v2}, Landroid/support/wearable/view/CircledImageView;->JUbFobyekFCSKlBF(Landroid/graphics/Paint;Z)V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

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

    :goto_2b
    invoke-static {p1}, Landroid/support/wearable/view/CircledImageView;->XdCociQYkvSwAhTm(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2c
    const/16 p1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_2d
    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView;->q:Lmp;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p1}, Lmp;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-gtz v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_30
    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->g:F

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_31
    const/16 p1, 0xc

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_32
    iput-object p2, p0, Landroid/support/wearable/view/CircledImageView;->c:Landroid/graphics/Paint;

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_33
    invoke-static {p2, p1, p3}, Landroid/support/wearable/view/CircledImageView;->FCvUCvqlhGGLpnNw(Landroid/content/res/TypedArray;IF)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_34
    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->r:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/16 p1, 0xe

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {p2}, Landroid/support/wearable/view/CircledImageView;->LiPcpfOVFugYiwZd(Landroid/content/res/TypedArray;)V

    goto/32 :goto_4

    nop

    nop

    :goto_37
    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->k:F

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_39
    cmpl-float v2, p1, p3

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->n:F

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

    :goto_3b
    invoke-static {p2, p1, v0}, Landroid/support/wearable/view/CircledImageView;->kVyaysFBJRniMccq(Landroid/content/res/TypedArray;II)I

    move-result p1

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

    :goto_3c
    const/high16 v2, -0x1000000

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_3d
    sget-object v3, Lmg;->c:[I

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

    :goto_3e
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->BQaKbWQMTkywritR(Landroid/support/wearable/view/CircledImageView;)F

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_3f
    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView;->t:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v2}, Landroid/support/wearable/view/CircledImageView;->OInLLXKvBkhGlSTe(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView;->e:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_43
    new-instance p2, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_45
    iput-object p2, p0, Landroid/support/wearable/view/CircledImageView;->d:Lmk;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->zkjTJqQDnlscsBra(Landroid/support/wearable/view/CircledImageView;)V

    goto/32 :goto_19

    nop

    nop

    :goto_47
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_48
    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->k:F

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_49
    iput p3, p0, Landroid/support/wearable/view/CircledImageView;->r:F

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_4a
    sget v2, Lmj;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_4b
    invoke-static {p2, p1, v2, v2, p3}, Landroid/support/wearable/view/CircledImageView;->HKJQqJjvHmekHexi(Landroid/content/res/TypedArray;IIIF)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_4c
    const/16 p1, 0xd

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4d
    iput p3, p0, Landroid/support/wearable/view/CircledImageView;->o:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_4e
    add-float/2addr v2, p1

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView;->f:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-static {p2, p1, p3}, Landroid/support/wearable/view/CircledImageView;->ZvKlZQSlrqUiDwVg(Landroid/content/res/TypedArray;IF)F

    move-result p1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_53
    const/16 p1, 0xb

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_54
    invoke-static {p2, v0}, Landroid/support/wearable/view/CircledImageView;->rIvpYPjrmAxQnlHW(Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

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

    :goto_55
    const/high16 v3, 0x40000000    # 2.0f

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_56
    const/16 p1, 0x15

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

    :goto_57
    iput p3, p0, Landroid/support/wearable/view/CircledImageView;->s:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_58
    cmpl-float v2, p1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-direct {p2, p1, p3, v2}, Lmk;-><init>(FFF)V

    goto/32 :goto_45

    nop

    nop

    :goto_5a
    aget-object p1, p1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5b
    invoke-static {p2, p1}, Landroid/support/wearable/view/CircledImageView;->dGCDAdqXIpubaxYy(Landroid/content/res/TypedArray;I)Z

    move-result v2

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

    :goto_5c
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_5d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_5f
    const/high16 p3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_60
    invoke-static {p2, p1, v2}, Landroid/support/wearable/view/CircledImageView;->fDEUfSroPhUIaITj(Landroid/content/res/TypedArray;II)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->j:F

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-static {p0, v0}, Landroid/support/wearable/view/CircledImageView;->cLYSawsTHXMOqVvz(Landroid/support/wearable/view/CircledImageView;Z)V

    goto/32 :goto_46

    nop

    nop

    :goto_63
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_64
    invoke-static {p2, p1, p3}, Landroid/support/wearable/view/CircledImageView;->SeBSavldYLdPMcpH(Landroid/content/res/TypedArray;IF)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_65
    iput-object p2, p0, Landroid/support/wearable/view/CircledImageView;->a:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    if-gtz v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_4
    goto/32 :goto_71

    nop

    nop

    :goto_67
    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView;->f:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_68
    new-instance p2, Lmk;

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

    :goto_69
    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->n:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-static {p2, p1, p3}, Landroid/support/wearable/view/CircledImageView;->XTBZTTSFJmBFKRBy(Landroid/content/res/TypedArray;IF)F

    move-result p1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_6b
    invoke-static {}, Landroid/support/wearable/view/CircledImageView;->VemrsMIBvAAzHndR()[Landroid/graphics/Paint$Cap;

    move-result-object p1

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_6c
    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->s:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_6d
    const v1, 0x8

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6e
    invoke-static {p2, p1, v0}, Landroid/support/wearable/view/CircledImageView;->gEhuMCtZCUUvFTej(Landroid/content/res/TypedArray;II)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    const/16 p1, 0x1c

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_70
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->quGgXNhiTzzBEAHx(Landroid/support/wearable/view/CircledImageView;)Landroid/content/Context;

    move-result-object v2

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->k:F

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_72
    invoke-static {v2}, Landroid/support/wearable/view/CircledImageView;->wNCxoKpHFPPShtuq(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView;->e:Landroid/content/res/ColorStateList;

    nop

    nop

    :goto_74
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_75
    if-nez v2, :cond_5

    nop

    nop

    goto/32 :goto_50

    nop

    nop

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

    :goto_76
    const/16 p1, 0x1b

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_77
    iput-boolean v0, p0, Landroid/support/wearable/view/CircledImageView;->p:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_78
    new-instance v1, Lmi;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_79
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-static {p1}, Landroid/support/wearable/view/CircledImageView;->OCFXlVXDhfHnXBDG(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-static {p2, v3, v2, v2, p1}, Landroid/support/wearable/view/CircledImageView;->GrMmdMpSxffEQHih(Landroid/content/res/TypedArray;IIIF)F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5d

    nop

    :goto_7d
    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->k:F

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_7f
    const/16 v2, 0xa

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

    nop

    :goto_80
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_81
    add-float/2addr v2, p1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_82
    if-nez v2, :cond_7

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

    :cond_7
    goto/32 :goto_3b

    nop

    nop

    nop

    nop
.end method

.method public static AFEAIblGwsvjWzkH(II)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

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

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static AcCLpPIaeYRHAjRq(Landroid/support/wearable/view/CircledImageView;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->a()F

    move-result v0

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
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ArgczQpLRHXoOhYU(I)I
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

    nop

    nop

    :goto_1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static BQaKbWQMTkywritR(Landroid/support/wearable/view/CircledImageView;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->a()F

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
.end method

.method public static BTdQrIPnkigGltEU(Landroid/graphics/Paint;Landroid/graphics/Paint$Style;)V
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
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static CONpvgqATBhPadQV(Landroid/support/wearable/view/CircledImageView;)I
    .locals 1

    goto/32 :goto_1

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
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getMeasuredHeight()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static CxpNCMIHQepGhXiO(Landroid/graphics/Paint;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

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

.method public static DYZvZThtEguaKTYI(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

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
.end method

.method public static DblnRbGgPWlTnEKV(II)I
    .locals 1

    goto/32 :goto_1

    nop

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

    :goto_1
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

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

.method public static ELgPCvnOFukXvqJx(Landroid/support/wearable/view/CircledImageView;)I
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
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingTop()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static EttaCRwoZcMnBYKI(Landroid/support/wearable/view/CircledImageView;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getHeight()I

    move-result v0

    nop

    nop

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

    nop
.end method

.method public static FCvUCvqlhGGLpnNw(Landroid/content/res/TypedArray;IF)F
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
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

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

.method public static FMqRBpFzAxIKZqvu(Landroid/support/wearable/view/CircledImageView;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getAlpha()F

    move-result v0

    nop

    nop

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

.method public static FZxuqxsxLSdjpvRg(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

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
.end method

.method public static FsRunClEsFXBtIwM(Landroid/support/wearable/view/CircledImageView;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static GFSLMnDCHnEqZuJX(Landroid/graphics/RectF;FFFF)V
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
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static GgopBELSmnmFxdJE(II)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

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

    nop
.end method

.method public static GmbadcSWSBivbihv(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
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
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static GrMmdMpSxffEQHih(Landroid/content/res/TypedArray;IIIF)F
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

    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v0

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

.method public static HKJQqJjvHmekHexi(Landroid/content/res/TypedArray;IIIF)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static HQYXuzRPTteTJJWo(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static HizYZTcYEjUsMccS(Landroid/support/wearable/view/CircledImageView;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getAlpha()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public static HzWUNHZuwcAoWhFm(Landroid/view/View;ZIIII)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static IHeWeHhzXZHcrjtN(II)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

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
.end method

.method public static IcodoPcDYehYoJOe(Landroid/support/wearable/view/CircledImageView;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingBottom()I

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

.method public static JFOQGwyeLXuRpMkb(Landroid/support/wearable/view/CircledImageView;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingBottom()I

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

.method public static JSbmbuCAtLIZLRiZ(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static JUbFobyekFCSKlBF(Landroid/graphics/Paint;Z)V
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
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static KXSSOcgkOTpRaPDq(Landroid/support/wearable/view/CircledImageView;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static KlFmtBPVSyyxemeN(Landroid/support/wearable/view/CircledImageView;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->a()F

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

    nop

    nop
.end method

.method public static LiPcpfOVFugYiwZd(Landroid/content/res/TypedArray;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static McWewktcWJqdYZdm(Landroid/content/res/ColorStateList;[II)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

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

    nop

    nop

    nop
.end method

.method public static NWQQrtCpLtqOPdvq(Landroid/view/View;Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    goto/32 :goto_1

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

.method public static OCFXlVXDhfHnXBDG(I)Ljava/lang/Integer;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static OInLLXKvBkhGlSTe(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

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

    nop
.end method

.method public static OPhPWoBPvWiBvmYb(Landroid/graphics/Paint;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

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

.method public static OaVFccyMzBJSauES(F)I
    .locals 1

    goto/32 :goto_1

    nop

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
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static PSNhiNgSpRFwYYyn(Landroid/graphics/drawable/Drawable;I)V
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
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static PXxSExIBthAoECwZ(Landroid/view/View;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static RSNWNvJTbfIKGWVi(Landroid/graphics/RectF;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static SeBSavldYLdPMcpH(Landroid/content/res/TypedArray;IF)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static SewWkNRqxjteYtHe(Landroid/view/View;)V
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
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static SxQvFDXrLzomROJN(Landroid/support/wearable/view/CircledImageView;)I
    .locals 1

    goto/32 :goto_1

    nop

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
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingLeft()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static TbMmtSrFTzmcyQPG(F)I
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
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static TjnVUuNkLXVMdamV(Landroid/support/wearable/view/CircledImageView;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getAlpha()F

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

    nop
.end method

.method public static TrcxMYPJIiHcvQsT(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
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
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static TxABHTIhnDLqtaMC(Landroid/support/wearable/view/CircledImageView;)I
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

    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingLeft()I

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
.end method

.method public static UBOyJIQXiSDNBIvN(Landroid/support/wearable/view/CircledImageView;)I
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

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getMeasuredHeight()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static UEtHneDhiKaqFAOc(F)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

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

    :goto_1
    return v0

    nop

    nop
.end method

.method public static VbbAToPjtCbWUtfp(F)I
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

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

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
.end method

.method public static VemrsMIBvAAzHndR()[Landroid/graphics/Paint$Cap;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static VhTsxoeIMtmshlwE(Landroid/content/res/TypedArray;I)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static WBzhXwIzjoXBudcr(F)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public static WhbfJntCDLFMfcvL(Lmk;IIII)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lmk;->a(IIII)V

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

.method public static WmGBRqwBWyNcmERP(Landroid/graphics/RectF;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

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

.method public static WwNjlxhWkwjoKpRl(Landroid/support/wearable/view/CircledImageView;)I
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

    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingLeft()I

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

    nop
.end method

.method public static XHLnvgkuUriwtYyu(Landroid/view/View;IIII)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

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
.end method

.method public static XLUQgCANreMPgDpl(Landroid/content/Context;)Landroid/content/res/Resources$Theme;
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
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static XTBZTTSFJmBFKRBy(Landroid/content/res/TypedArray;IF)F
    .locals 1

    goto/32 :goto_0

    nop

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

.method public static XdCociQYkvSwAhTm(Landroid/content/Context;)Landroid/content/res/Resources;
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

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

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

.method public static XkTRXQmLbVHYcipu(Landroid/graphics/drawable/Drawable$ConstantState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
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

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

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
.end method

.method public static YBHsiushhukVIyun(Landroid/graphics/Paint;F)V
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

    :goto_1
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static YUWaSfwfxvkaCPyl(FF)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

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

    nop
.end method

.method public static YhWbqmEwpdHMXgcj(Landroid/support/wearable/view/CircledImageView;)I
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
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingRight()I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ZNhxpdjYvWvEgSgB(Landroid/graphics/RectF;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

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
.end method

.method public static ZvKlZQSlrqUiDwVg(Landroid/content/res/TypedArray;IF)F
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

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ahxtLxuSxhMPzzPk(Landroid/support/wearable/view/CircledImageView;)V
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

    nop

    :goto_1
    invoke-direct {p0}, Landroid/support/wearable/view/CircledImageView;->da190e616797844b591057d0190e7728m()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static avRTFXPkYAMwpOvf(Landroid/support/wearable/view/CircledImageView;)F
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
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->a()F

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static bYVOKXZZyefEAimH(I)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

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

.method public static cChEItLAqnHvXJgK(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

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

    nop
.end method

.method public static cLYSawsTHXMOqVvz(Landroid/support/wearable/view/CircledImageView;Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/CircledImageView;->setWillNotDraw(Z)V

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
.end method

.method public static dGCDAdqXIpubaxYy(Landroid/content/res/TypedArray;I)Z
    .locals 1

    goto/32 :goto_1

    nop

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
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static dZADMSbnNepzQBTL(FF)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m()V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_13

    nop

    nop

    :goto_1
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->e:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x15

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->sWLAtyJACtLaiWvT(Landroid/support/wearable/view/CircledImageView;)[I

    move-result-object v1

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
    iput v0, p0, Landroid/support/wearable/view/CircledImageView;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->FsRunClEsFXBtIwM(Landroid/support/wearable/view/CircledImageView;)V

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_d
    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->b:I

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

    :goto_e
    invoke-static {v0, v1, v2}, Landroid/support/wearable/view/CircledImageView;->McWewktcWJqdYZdm(Landroid/content/res/ColorStateList;[II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v2, p0, Landroid/support/wearable/view/CircledImageView;->e:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v2}, Landroid/support/wearable/view/CircledImageView;->qbLHDPvxxPsrhomi(Landroid/content/res/ColorStateList;)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static eHfNJgRVVmwbEXlw(Landroid/graphics/RectF;FFFF)V
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
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static eLhvFIIciILIEvYA(Landroid/view/View;Landroid/graphics/Canvas;)V
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
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static fDEUfSroPhUIaITj(Landroid/content/res/TypedArray;II)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

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

    nop

    nop
.end method

.method public static fLCxaivDTJaygtWq(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

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

.method public static fNTDPeiCtpSrUill(Landroid/support/wearable/view/CircledImageView;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->c()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static fUpUbxWJnsnTtmnU(Landroid/support/wearable/view/CircledImageView;)I
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

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getWidth()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static gEhuMCtZCUUvFTej(Landroid/content/res/TypedArray;II)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

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

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static gvdCjhJielhAUrNA(Landroid/graphics/RectF;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static hFnJAnJMZRXXNIqy(Landroid/graphics/Paint;Landroid/graphics/Paint$Style;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

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

.method public static hHJyecGlFZgHphHW(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    nop

    nop

    nop

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

.method public static iAhLkrVNXnIRWdPp(Lmk;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lmk;->b()V

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
.end method

.method public static iJdGFdkdmoKHnelm(Landroid/graphics/Paint;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

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

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public static iMVqjKobxbfqwbSP(Landroid/support/wearable/view/CircledImageView;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingTop()I

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

    nop
.end method

.method public static iNXpLkectOgxTLzj(Landroid/graphics/Paint;Landroid/graphics/Paint$Cap;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static ihirvtyaOIQJDpuu(Landroid/support/wearable/view/CircledImageView;)I
    .locals 1

    goto/32 :goto_1

    nop

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

    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingBottom()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static ijKDjbKioqdHkSnE(Landroid/graphics/Paint;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static jUmQoybyhtfOQGVE(Landroid/support/wearable/view/CircledImageView;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->b()F

    move-result v0

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
    return v0

    nop
.end method

.method public static jgHXTiqJJqMirlNI(Landroid/graphics/RectF;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    nop

    nop

    nop

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

    nop
.end method

.method public static kBOAacmAsdsEoEHB(Landroid/support/wearable/view/CircledImageView;)I
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
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingRight()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static kVyaysFBJRniMccq(Landroid/content/res/TypedArray;II)I
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

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static khJcLhfTIcxhLUOw(Landroid/content/res/TypedArray;IF)F
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
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

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

.method public static mAOkzpYZZbiICThC(Landroid/support/wearable/view/CircledImageView;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getHeight()I

    move-result v0

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

    nop
.end method

.method public static mKBwbysAxOJvpfkB(Landroid/support/wearable/view/CircledImageView;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getMeasuredWidth()I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static miJwDXswAmzvPKqL(Ljava/lang/Integer;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

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

    :goto_1
    return v0

    nop
.end method

.method public static mlVGUeoVmgdWEaeC(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V
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
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static nglCbNLawbWldgZF(Landroid/support/wearable/view/CircledImageView;)V
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
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->c()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static npMXESBoAYikRKfa(Landroid/content/res/TypedArray;II)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

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

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static oQJltZIgAPJUpFTh(Landroid/animation/ObjectAnimator;)V
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
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static ooScsBgnOvIOWwzl(I)Ljava/lang/Integer;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static pCRFgogEKZRPwIdM(I)I
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

    nop

    nop

    nop
.end method

.method public static pLimVQxzTGvKeyJv(Landroid/support/wearable/view/CircledImageView;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getMeasuredWidth()I

    move-result v0

    nop

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

.method public static pWQeCgoKtlWbbLMM(Landroid/view/View;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

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
.end method

.method public static pkeVIyzgqafaFvjT(Landroid/support/wearable/view/CircledImageView;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingRight()I

    move-result v0

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

    nop
.end method

.method public static ptJFfNbuKHHQgRBi(Ljava/lang/Integer;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

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
.end method

.method public static pzyRGkhvpdErkAyw(Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static qYOTkrIGbqcymScB(FF)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

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

    nop
.end method

.method public static qbLHDPvxxPsrhomi(Landroid/content/res/ColorStateList;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

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

.method public static qcymkkWpCPBYBidA(Landroid/support/wearable/view/CircledImageView;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getWidth()I

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

    nop
.end method

.method public static quGgXNhiTzzBEAHx(Landroid/support/wearable/view/CircledImageView;)Landroid/content/Context;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static rATQqMJcKBJGOvJY(Lmp;Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lmp;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

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

.method public static rIvpYPjrmAxQnlHW(Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    goto/32 :goto_1

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
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

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

.method public static rmTJYLECxTeNDPou(Landroid/support/wearable/view/CircledImageView;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getMeasuredWidth()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public static rmqvSFUvMoiYyils(Landroid/graphics/RectF;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

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

.method public static sVDVPhrPormACESt(Landroid/content/res/TypedArray;IF)F
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
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static sWLAtyJACtLaiWvT(Landroid/support/wearable/view/CircledImageView;)[I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getDrawableState()[I

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

.method public static saszVYzcCphogiLA(Landroid/support/wearable/view/CircledImageView;)I
    .locals 1

    goto/32 :goto_1

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
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getMeasuredHeight()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static sqdlPjzLmoeaPebT(Landroid/graphics/Paint;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

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
.end method

.method public static toZaHntihPETjrxs(Landroid/support/wearable/view/CircledImageView;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getAlpha()F

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
.end method

.method public static trfBYvmndhyLppbt(FF)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

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

    :goto_1
    return v0

    nop
.end method

.method public static uEyvdaSHhrliGarJ(Landroid/support/wearable/view/CircledImageView;)F
    .locals 1

    goto/32 :goto_1

    nop

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

    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->b()F

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static vCauixFYpxoecuIg(Lmk;IIII)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lmk;->a(IIII)V

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

.method public static vXhMDTADEiYbnkPg(F)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

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

    nop

    nop
.end method

.method public static vjFgXEegEbXcvRQm(I)Landroid/content/res/ColorStateList;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static wNCxoKpHFPPShtuq(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static xjepusdgpFGYbPRL(I)I
    .locals 1

    goto/32 :goto_1

    nop

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
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static xsBdujUNFcljFiVo(Landroid/content/res/TypedArray;IF)F
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
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static yUIUwaCnLOsGnsfL(Landroid/graphics/Paint;I)V
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
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static zeEwWlXTFWpnogbW(Landroid/support/wearable/view/CircledImageView;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingTop()I

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

    nop

    nop

    nop
.end method

.method public static zkjTJqQDnlscsBra(Landroid/support/wearable/view/CircledImageView;)V
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
    invoke-direct {p0}, Landroid/support/wearable/view/CircledImageView;->da190e616797844b591057d0190e7728m()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()F
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Landroid/support/wearable/view/CircledImageView;->k:F

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

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->UBOyJIQXiSDNBIvN(Landroid/support/wearable/view/CircledImageView;)I

    move-result v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    if-lez v2, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->h:F

    nop

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

    :goto_6
    goto/32 :goto_16

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-gtz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x18

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x4

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    sub-float/2addr v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    cmpl-float v1, v2, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    cmpg-float v2, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11
    mul-float/2addr v0, v1

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->mKBwbysAxOJvpfkB(Landroid/support/wearable/view/CircledImageView;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v0, v1}, Landroid/support/wearable/view/CircledImageView;->IHeWeHhzXZHcrjtN(II)I

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

    :goto_15
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_15

    nop

    :goto_18
    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->h:F

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->g:F

    nop

    goto/32 :goto_e

    nop

    nop
.end method

.method public final b()F
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sub-float/2addr v0, p0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-gtz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    cmpg-float v2, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->i:F

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

    :goto_5
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->saszVYzcCphogiLA(Landroid/support/wearable/view/CircledImageView;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    mul-float/2addr v0, v1

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    :goto_a
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_d
    const v0, 0xd

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

    :goto_e
    iget p0, p0, Landroid/support/wearable/view/CircledImageView;->k:F

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_10
    cmpl-float v1, v2, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_12
    invoke-static {v0, v1}, Landroid/support/wearable/view/CircledImageView;->AFEAIblGwsvjWzkH(II)I

    move-result v0

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

    nop

    nop

    :goto_13
    if-lez v2, :cond_2

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->j:F

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

    :goto_15
    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->j:F

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->rmTJYLECxTeNDPou(Landroid/support/wearable/view/CircledImageView;)I

    move-result v1

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
    return v0

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lmp;->a:Landroid/animation/ObjectAnimator;

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

    :goto_2
    return-void

    nop

    :goto_3
    iget-object p0, p0, Landroid/support/wearable/view/CircledImageView;->q:Lmp;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->oQJltZIgAPJUpFTh(Landroid/animation/ObjectAnimator;)V

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final drawableStateChanged()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->ahxtLxuSxhMPzzPk(Landroid/support/wearable/view/CircledImageView;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->SewWkNRqxjteYtHe(Landroid/view/View;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    goto/32 :goto_19

    nop

    nop

    :goto_0
    mul-float/2addr v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, v1, v3, v4, v5}, Landroid/support/wearable/view/CircledImageView;->eHfNJgRVVmwbEXlw(Landroid/graphics/RectF;FFFF)V

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_2
    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->l:I

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->m:Landroid/graphics/Paint$Cap;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_5
    int-to-float v5, v5

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1, v3, v0, v2, v1}, Landroid/support/wearable/view/CircledImageView;->TrcxMYPJIiHcvQsT(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, p1}, Landroid/support/wearable/view/CircledImageView;->mlVGUeoVmgdWEaeC(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    :goto_8
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v7, 0x0

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

    nop

    :goto_a
    const/high16 v5, -0x3d4c0000    # -90.0f

    nop

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

    :goto_b
    iget-object v5, p0, Landroid/support/wearable/view/CircledImageView;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v4, p0, Landroid/support/wearable/view/CircledImageView;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v5}, Landroid/support/wearable/view/CircledImageView;->jgHXTiqJJqMirlNI(Landroid/graphics/RectF;)F

    move-result v5

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->jUmQoybyhtfOQGVE(Landroid/support/wearable/view/CircledImageView;)F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_44

    nop

    nop

    :goto_11
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->qcymkkWpCPBYBidA(Landroid/support/wearable/view/CircledImageView;)I

    move-result v4

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_12
    iget-object v4, p0, Landroid/support/wearable/view/CircledImageView;->a:Landroid/graphics/RectF;

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

    nop

    :goto_13
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->f:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_16
    mul-float v6, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_17
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v0}, Landroid/support/wearable/view/CircledImageView;->WmGBRqwBWyNcmERP(Landroid/graphics/RectF;)F

    move-result v3

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v1}, Landroid/support/wearable/view/CircledImageView;->OaVFccyMzBJSauES(F)I

    move-result v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->c:Landroid/graphics/Paint;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0, v1}, Landroid/support/wearable/view/CircledImageView;->PSNhiNgSpRFwYYyn(Landroid/graphics/drawable/Drawable;I)V

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1f
    invoke-static {v3, v0, v1, v4, v5}, Landroid/support/wearable/view/CircledImageView;->GFSLMnDCHnEqZuJX(Landroid/graphics/RectF;FFFF)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->c:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->c:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_22
    const v1, 0x4

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->zeEwWlXTFWpnogbW(Landroid/support/wearable/view/CircledImageView;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_24
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_25
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->c:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_26
    mul-float/2addr v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_27
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->c:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->HizYZTcYEjUsMccS(Landroid/support/wearable/view/CircledImageView;)F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_29
    invoke-static {p0, p1}, Landroid/support/wearable/view/CircledImageView;->eLhvFIIciILIEvYA(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto/32 :goto_5d

    nop

    nop

    :goto_2a
    sub-float/2addr v3, v2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->toZaHntihPETjrxs(Landroid/support/wearable/view/CircledImageView;)F

    goto/32 :goto_55

    nop

    nop

    :goto_2c
    invoke-static {v0, v1}, Landroid/support/wearable/view/CircledImageView;->yUIUwaCnLOsGnsfL(Landroid/graphics/Paint;I)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v4}, Landroid/support/wearable/view/CircledImageView;->gvdCjhJielhAUrNA(Landroid/graphics/RectF;)F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    int-to-float v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v0, v1}, Landroid/support/wearable/view/CircledImageView;->iNXpLkectOgxTLzj(Landroid/graphics/Paint;Landroid/graphics/Paint$Cap;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_30
    add-float/2addr v5, v2

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

    :goto_31
    rem-int v0, v0, v1

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

    :goto_32
    sub-int/2addr v5, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_33
    const/high16 v2, 0x437f0000    # 255.0f

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_34
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_35
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->mAOkzpYZZbiICThC(Landroid/support/wearable/view/CircledImageView;)I

    move-result v5

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

    :goto_37
    const/high16 v1, 0x43b40000    # 360.0f

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_38
    iget-object v8, p0, Landroid/support/wearable/view/CircledImageView;->c:Landroid/graphics/Paint;

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

    nop

    nop

    :goto_39
    iget-boolean v2, p0, Landroid/support/wearable/view/CircledImageView;->p:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3a
    sub-int/2addr v4, v5

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {v0}, Landroid/support/wearable/view/CircledImageView;->CxpNCMIHQepGhXiO(Landroid/graphics/Paint;)I

    move-result v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->t:Ljava/lang/Integer;

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

    :goto_3d
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->SxQvFDXrLzomROJN(Landroid/support/wearable/view/CircledImageView;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_3e
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->c:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_3f
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->FMqRBpFzAxIKZqvu(Landroid/support/wearable/view/CircledImageView;)F

    move-result v3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v0}, Landroid/support/wearable/view/CircledImageView;->rmqvSFUvMoiYyils(Landroid/graphics/RectF;)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_41
    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->o:F

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_42
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->pkeVIyzgqafaFvjT(Landroid/support/wearable/view/CircledImageView;)I

    move-result v5

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->TjnVUuNkLXVMdamV(Landroid/support/wearable/view/CircledImageView;)F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_45
    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->n:F

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_46
    invoke-static {v0, v1}, Landroid/support/wearable/view/CircledImageView;->OPhPWoBPvWiBvmYb(Landroid/graphics/Paint;I)V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_47
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->IcodoPcDYehYoJOe(Landroid/support/wearable/view/CircledImageView;)I

    move-result v6

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->c:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_49
    invoke-static {v0}, Landroid/support/wearable/view/CircledImageView;->iJdGFdkdmoKHnelm(Landroid/graphics/Paint;)I

    move-result v1

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-gtz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->f:Landroid/graphics/drawable/Drawable;

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

    :goto_4c
    move-object v3, p1

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    add-float/2addr v4, v2

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

    :goto_4e
    invoke-static {v0, v1}, Landroid/support/wearable/view/CircledImageView;->ijKDjbKioqdHkSnE(Landroid/graphics/Paint;I)V

    goto/32 :goto_65

    nop

    nop

    :goto_4f
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_50
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_51
    mul-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_52
    iget-object v3, p0, Landroid/support/wearable/view/CircledImageView;->a:Landroid/graphics/RectF;

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

    :goto_53
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->f:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_54
    invoke-static {v0, v1}, Landroid/support/wearable/view/CircledImageView;->sqdlPjzLmoeaPebT(Landroid/graphics/Paint;I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget-object v3, p0, Landroid/support/wearable/view/CircledImageView;->a:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_56
    invoke-static {v0, v1}, Landroid/support/wearable/view/CircledImageView;->YBHsiushhukVIyun(Landroid/graphics/Paint;F)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_57
    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->n:F

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_58
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->a:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static/range {v3 .. v8}, Landroid/support/wearable/view/CircledImageView;->HQYXuzRPTteTJJWo(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_5a
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    add-int v0, v0, v1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-nez v0, :cond_4

    nop

    goto/32 :goto_6e

    nop

    :cond_4
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    return-void

    nop

    :goto_5e
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_5f
    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->b:I

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_60
    invoke-static {v0, v1}, Landroid/support/wearable/view/CircledImageView;->BTdQrIPnkigGltEU(Landroid/graphics/Paint;Landroid/graphics/Paint$Style;)V

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_61
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->c:Landroid/graphics/Paint;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_63
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->avRTFXPkYAMwpOvf(Landroid/support/wearable/view/CircledImageView;)F

    move-result v2

    nop

    :goto_64
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->c:Landroid/graphics/Paint;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_66
    invoke-static {v0}, Landroid/support/wearable/view/CircledImageView;->RSNWNvJTbfIKGWVi(Landroid/graphics/RectF;)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-static {v0, v1}, Landroid/support/wearable/view/CircledImageView;->hFnJAnJMZRXXNIqy(Landroid/graphics/Paint;Landroid/graphics/Paint$Style;)V

    goto/32 :goto_48

    nop

    nop

    :goto_68
    sub-float/2addr v1, v2

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

    nop

    :goto_69
    invoke-static {v1}, Landroid/support/wearable/view/CircledImageView;->WBzhXwIzjoXBudcr(F)I

    move-result v1

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

    :goto_6a
    invoke-static {v0}, Landroid/support/wearable/view/CircledImageView;->miJwDXswAmzvPKqL(Ljava/lang/Integer;)I

    move-result v0

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_6b
    invoke-static {v1}, Landroid/support/wearable/view/CircledImageView;->TbMmtSrFTzmcyQPG(F)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_6c
    cmpl-float v0, v0, v1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_6d
    invoke-static {v1, v0}, Landroid/support/wearable/view/CircledImageView;->JSbmbuCAtLIZLRiZ(Landroid/graphics/drawable/Drawable;I)V

    :goto_6e
    goto/32 :goto_53

    nop

    nop

    :goto_6f
    invoke-static {v3}, Landroid/support/wearable/view/CircledImageView;->ZNhxpdjYvWvEgSgB(Landroid/graphics/RectF;)F

    move-result v3

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_1b

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 8

    goto/32 :goto_8

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
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v5, :cond_0

    nop

    goto/32 :goto_3d

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_3
    invoke-static {v0}, Landroid/support/wearable/view/CircledImageView;->UEtHneDhiKaqFAOc(F)I

    move-result v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->CONpvgqATBhPadQV(Landroid/support/wearable/view/CircledImageView;)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v4, v2, v3, v0, v1}, Landroid/support/wearable/view/CircledImageView;->fLCxaivDTJaygtWq(Landroid/graphics/drawable/Drawable;IIII)V

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    invoke-static/range {p0 .. p5}, Landroid/support/wearable/view/CircledImageView;->HzWUNHZuwcAoWhFm(Landroid/view/View;ZIIII)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_9
    iget v4, p0, Landroid/support/wearable/view/CircledImageView;->s:F

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_a
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_b
    int-to-float v5, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    move v6, v7

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    mul-float/2addr v4, v5

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move v4, v7

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_40

    nop

    nop

    :goto_11
    goto :goto_d

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    div-int/lit8 v2, v2, 0x2

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

    :goto_14
    sub-int/2addr v3, v1

    nop

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

    nop

    :goto_15
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v1}, Landroid/support/wearable/view/CircledImageView;->hHJyecGlFZgHphHW(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_17
    mul-float/2addr v4, v5

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int/2addr v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/high16 v7, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1a
    int-to-float v5, v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    mul-float/2addr v4, v1

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

    :goto_1c
    sub-int/2addr v2, v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1d
    cmpl-float v5, v1, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1e
    if-nez v6, :cond_2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

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

    :goto_1f
    invoke-static {v4}, Landroid/support/wearable/view/CircledImageView;->vXhMDTADEiYbnkPg(F)I

    move-result v1

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

    :goto_20
    add-int/2addr v0, v2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v4, p0, Landroid/support/wearable/view/CircledImageView;->f:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_22
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_23

    nop

    :goto_23
    goto/32 :goto_1

    nop

    nop

    :goto_24
    goto/32 :goto_37

    nop

    nop

    :goto_25
    if-lez v6, :cond_4

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v4}, Landroid/support/wearable/view/CircledImageView;->VbbAToPjtCbWUtfp(F)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->pLimVQxzTGvKeyJv(Landroid/support/wearable/view/CircledImageView;)I

    move-result v2

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

    :goto_2a
    cmpl-float v6, v4, v5

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    mul-float/2addr v0, v4

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2c
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->f:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    int-to-float v6, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2e
    add-int/2addr v2, v4

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2f
    mul-float/2addr v6, v4

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

    nop

    :goto_30
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_31
    cmpl-float v6, v0, v5

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_32
    move v4, v7

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {v0}, Landroid/support/wearable/view/CircledImageView;->DYZvZThtEguaKTYI(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_36
    div-int/lit8 v3, v3, 0x2

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

    :goto_37
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->f:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v7, v4}, Landroid/support/wearable/view/CircledImageView;->trfBYvmndhyLppbt(FF)F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_39
    div-float/2addr v4, v1

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

    :goto_3a
    add-int v0, v0, v1

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_3b
    invoke-static {v6, v4}, Landroid/support/wearable/view/CircledImageView;->dZADMSbnNepzQBTL(FF)F

    move-result v4

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto :goto_33

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    div-float/2addr v6, v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget v4, p0, Landroid/support/wearable/view/CircledImageView;->r:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_40
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 6

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    float-to-int p2, v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p2}, Landroid/support/wearable/view/CircledImageView;->pCRFgogEKZRPwIdM(I)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_7
    invoke-static {p2}, Landroid/support/wearable/view/CircledImageView;->bYVOKXZZyefEAimH(I)I

    move-result p2

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_1

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    :goto_a
    mul-float/2addr v2, v1

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

    nop

    nop

    :goto_b
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_32

    nop

    nop

    :goto_d
    invoke-static {v5, p1}, Landroid/support/wearable/view/CircledImageView;->qYOTkrIGbqcymScB(FF)F

    move-result p1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eq v1, v2, :cond_0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p2, v4}, Landroid/support/wearable/view/CircledImageView;->GgopBELSmnmFxdJE(II)I

    move-result p2

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

    :goto_12
    invoke-static {v0}, Landroid/support/wearable/view/CircledImageView;->ptJFfNbuKHHQgRBi(Ljava/lang/Integer;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-ne v3, v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->d:Lmk;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/high16 v2, -0x80000000

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_16
    int-to-float p2, p2

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

    :goto_17
    if-ne v0, v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_37

    nop

    :goto_1b
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->AcCLpPIaeYRHAjRq(Landroid/support/wearable/view/CircledImageView;)F

    move-result v0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move p1, p2

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2d

    nop

    nop

    :goto_1e
    invoke-static {p0, p1, p2}, Landroid/support/wearable/view/CircledImageView;->PXxSExIBthAoECwZ(Landroid/view/View;II)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    int-to-float p1, p1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_20
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_21
    float-to-int p2, p2

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

    :goto_22
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    float-to-int p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_24
    iget v1, v1, Lmk;->b:F

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {p1}, Landroid/support/wearable/view/CircledImageView;->xjepusdgpFGYbPRL(I)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/high16 v4, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_27
    goto :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget v2, v1, Lmk;->a:F

    nop

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

    :goto_2a
    const/4 v1, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2b
    add-float/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2c
    add-float v5, v0, v0

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

    :goto_2d
    invoke-static {p1, v4}, Landroid/support/wearable/view/CircledImageView;->DblnRbGgPWlTnEKV(II)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2e
    invoke-static {v0, p2}, Landroid/support/wearable/view/CircledImageView;->YUWaSfwfxvkaCPyl(FF)F

    move-result p2

    nop

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

    nop

    :goto_2f
    add-float/2addr v0, v2

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

    nop

    :goto_30
    float-to-int p1, v5

    nop

    nop

    :goto_31
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_32
    move p2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_33
    add-float/2addr v0, v0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_34
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->u:Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_36
    invoke-static {p1}, Landroid/support/wearable/view/CircledImageView;->ArgczQpLRHXoOhYU(I)I

    move-result v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto :goto_31

    nop

    :goto_3a
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3b
    if-ne v1, v4, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2c

    nop

    nop

    :goto_3c
    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->n:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-eq v3, v2, :cond_7

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

    :cond_7
    goto/32 :goto_16

    nop

    nop

    nop
.end method

.method protected final onSetAlpha(I)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

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
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final onSizeChanged(IIII)V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_1
    goto :goto_4

    nop

    nop

    nop

    :goto_2
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

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-ne p2, p4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->ELgPCvnOFukXvqJx(Landroid/support/wearable/view/CircledImageView;)I

    move-result v0

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

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    sub-int/2addr p2, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p3, p4, v0, p1, p2}, Landroid/support/wearable/view/CircledImageView;->WhbfJntCDLFMfcvL(Lmk;IIII)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    const v0, 0x1d

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p3, p0, Landroid/support/wearable/view/CircledImageView;->d:Lmk;

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

    :goto_12
    if-eq p1, p3, :cond_2

    nop

    goto/32 :goto_4

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    :goto_13
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->WwNjlxhWkwjoKpRl(Landroid/support/wearable/view/CircledImageView;)I

    move-result p4

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_14
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->YhWbqmEwpdHMXgcj(Landroid/support/wearable/view/CircledImageView;)I

    move-result v1

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

    :goto_15
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->JFOQGwyeLXuRpMkb(Landroid/support/wearable/view/CircledImageView;)I

    move-result p0

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

    :goto_16
    sub-int/2addr p1, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop
.end method

.method protected final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->fNTDPeiCtpSrUill(Landroid/support/wearable/view/CircledImageView;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1, p2}, Landroid/support/wearable/view/CircledImageView;->FZxuqxsxLSdjpvRg(Landroid/view/View;Landroid/view/View;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->nglCbNLawbWldgZF(Landroid/support/wearable/view/CircledImageView;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Landroid/support/wearable/view/CircledImageView;->pWQeCgoKtlWbbLMM(Landroid/view/View;I)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public final setPadding(IIII)V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    if-eq p1, v0, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->fUpUbxWJnsnTtmnU(Landroid/support/wearable/view/CircledImageView;)I

    move-result v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    if-eq p3, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    if-eq p2, v0, :cond_2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    :goto_5
    sub-int/2addr v1, p3

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

    :goto_6
    const v1, 0xb

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

    :goto_7
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->ihirvtyaOIQJDpuu(Landroid/support/wearable/view/CircledImageView;)I

    move-result v0

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

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->kBOAacmAsdsEoEHB(Landroid/support/wearable/view/CircledImageView;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->EttaCRwoZcMnBYKI(Landroid/support/wearable/view/CircledImageView;)I

    move-result v2

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
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->d:Lmk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    const v0, 0x19

    nop

    nop

    goto/32 :goto_6

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

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->iMVqjKobxbfqwbSP(Landroid/support/wearable/view/CircledImageView;)I

    move-result v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/wearable/view/CircledImageView;->XHLnvgkuUriwtYyu(Landroid/view/View;IIII)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_18

    nop

    nop

    :goto_13
    sub-int/2addr v2, p4

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    invoke-static {v0, p1, p2, v1, v2}, Landroid/support/wearable/view/CircledImageView;->vCauixFYpxoecuIg(Lmk;IIII)V

    :goto_15
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_e

    nop

    nop

    :goto_18
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->TxABHTIhnDLqtaMC(Landroid/support/wearable/view/CircledImageView;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_19
    if-ne p4, v0, :cond_4

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_4
    :goto_1a
    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final setPressed(Z)V
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne p1, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->KlFmtBPVSyyxemeN(Landroid/support/wearable/view/CircledImageView;)F

    move-result p1

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    :goto_3
    if-nez p1, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->KXSSOcgkOTpRaPDq(Landroid/support/wearable/view/CircledImageView;)V

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->d:Lmk;

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

    :goto_7
    iput-boolean p1, p0, Landroid/support/wearable/view/CircledImageView;->p:Z

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    invoke-static {p0}, Landroid/support/wearable/view/CircledImageView;->uEyvdaSHhrliGarJ(Landroid/support/wearable/view/CircledImageView;)F

    move-result p1

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

    :goto_9
    iput p1, v0, Lmk;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    goto :goto_2

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p0, p1}, Landroid/support/wearable/view/CircledImageView;->NWQQrtCpLtqOPdvq(Landroid/view/View;Z)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    invoke-static {v0}, Landroid/support/wearable/view/CircledImageView;->iAhLkrVNXnIRWdPp(Lmk;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    iget-boolean v0, p0, Landroid/support/wearable/view/CircledImageView;->p:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
