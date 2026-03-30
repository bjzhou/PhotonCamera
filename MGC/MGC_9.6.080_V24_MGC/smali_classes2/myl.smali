.class public final Lmyl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmyj;


# static fields
.field public static final synthetic h:I

.field private static final i:Lmyi;


# instance fields
.field public final a:Loyn;

.field public b:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

.field public c:Lnny;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:J

.field public g:J

.field private final j:Landroid/app/Activity;

.field private final k:Lowu;

.field private final l:Lrtm;

.field private m:Landroid/view/View$OnLayoutChangeListener;

.field private n:Lmyi;

.field private o:Landroid/content/res/Resources;

.field private p:Landroid/view/View;

.field private q:Landroid/view/ViewGroup;

.field private r:Landroid/view/View;

.field private s:I

.field private t:Lpci;

.field private u:Z

.field private final v:Lhoh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lmyi;->a()Lmyh;

    move-result-object v0

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
    sput-object v0, Lmyl;->i:Lmyi;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Lmyh;->a()Lmyi;

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
.end method

.method public constructor <init>(Landroid/app/Activity;Lhoh;Lowu;Loyn;Lrtm;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lmyl;->n:Lmyi;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lmyl;->i:Lmyi;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lmyl;->v:Lhoh;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p5, p0, Lmyl;->l:Lrtm;

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

    nop

    nop

    :goto_5
    iput-object p1, p0, Lmyl;->j:Landroid/app/Activity;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    iput-object p3, p0, Lmyl;->k:Lowu;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    iput-object p4, p0, Lmyl;->a:Loyn;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method private final a74c8a79bf0ef0e20983317119c87838m(Landroid/view/ViewGroup;I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

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

    :goto_1
    iget-object v0, p0, Lmyl;->q:Landroid/view/ViewGroup;

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

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

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

    :goto_6
    if-ne p1, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    :goto_7
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    iget-object p1, p0, Lmyl;->q:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

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

    :goto_a
    iget-object p0, p0, Lmyl;->b:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lmyl;->b:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    or-int/lit8 p2, p2, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/32 :goto_8

    nop

    nop

    :goto_e
    iget v0, p0, Lmyl;->s:I

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

    :goto_f
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v0, p0, Lmyl;->s:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lmyl;->b:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p1, p0, Lmyl;->b:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method private final d116db4599d9ddc8c35e61366a4f4967m(Landroid/view/ViewGroup;)V
    .locals 4

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->bringToFront()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lmyl;->b:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_5
    iget-object p1, p0, Lmyl;->j:Landroid/app/Activity;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

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

    :goto_7
    float-to-int v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ldso;

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

    :goto_9
    const v3, 0x7f070892

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x7f0b0057

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/32 :goto_5

    nop

    nop

    :goto_e
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    div-int/lit8 v1, v1, 0x2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v2, p0, Lmyl;->o:Landroid/content/res/Resources;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lmyl;->b:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sub-int/2addr v3, v2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0, p0, v3}, Lnzk;->aZ(Ldso;Landroid/view/View;I)V

    goto/32 :goto_1e

    nop

    nop

    :goto_16
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_17
    invoke-direct {v0}, Ldso;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    :goto_19
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, p1}, Ldso;->g(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, p1}, Ldso;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_20
    iget-object v3, p0, Lmyl;->r:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_21
    iget-object v0, p0, Lmyl;->b:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

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

    :goto_22
    iget-object p0, p0, Lmyl;->b:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int/2addr v3, v1

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

    :goto_24
    check-cast p1, Landroid/view/ViewGroup;

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

    :goto_25
    iget-object v1, p0, Lmyl;->r:Landroid/view/View;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_26
    const v1, 0x3

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final o(J)Ljava/lang/String;
    .locals 7

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v4, v5, v6}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-ltz v3, :cond_0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

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

    :goto_4
    sget-object v6, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    cmp-long v3, p0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

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

    :goto_7
    cmp-long v3, p0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    new-instance v1, Landroid/icu/util/Measure;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-wide/16 v1, 0x3c

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

    nop

    :goto_b
    rem-int/lit8 v3, v3, 0x3c

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    long-to-int v3, v3

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

    :goto_d
    invoke-direct {v1, p0, p1}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_e
    filled-new-array {v4, p1}, [Landroid/icu/util/Measure;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p0}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p0

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

    nop

    :goto_10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_11
    invoke-direct {v4, v3, v5}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v5, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

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

    :goto_13
    new-instance v1, Landroid/icu/util/Measure;

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

    :goto_14
    if-ltz v3, :cond_1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    :goto_15
    invoke-virtual {v0, p0}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p0

    nop

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

    :goto_16
    div-int/lit8 v5, v3, 0x3c

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v4, Landroid/icu/util/Measure;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-long/2addr p0, v1

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

    nop

    :goto_1a
    long-to-int v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    :goto_1c
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v1, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1e
    rem-long/2addr p0, v1

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

    :goto_1f
    new-instance v4, Landroid/icu/util/Measure;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_20
    filled-new-array {v1}, [Landroid/icu/util/Measure;

    move-result-object p0

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

    nop

    :goto_21
    add-int v0, v0, v1

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

    :goto_22
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_2
    goto/32 :goto_3a

    nop

    :goto_23
    return-object p0

    nop

    nop

    :goto_24
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v0, 0x1c

    nop

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

    nop

    :goto_26
    new-instance p1, Landroid/icu/util/Measure;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_27
    div-long v3, p0, v1

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

    :goto_28
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_29
    div-long v3, p0, v1

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

    :goto_2a
    new-instance v5, Landroid/icu/util/Measure;

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
    filled-new-array {v4, v5, v1}, [Landroid/icu/util/Measure;

    move-result-object p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

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

    :goto_2d
    invoke-virtual {v0, p0}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p0

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

    :goto_2e
    return-object p0

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_30
    invoke-direct {v1, p0, p1}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_31
    sget-object p1, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

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

    :goto_32
    const-wide/16 v3, 0xe10

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_33
    sget-object p1, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_34
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {p1, p0, v1}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_37
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_38
    sget-object v6, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_39
    long-to-int p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3c
    invoke-direct {v5, v3, v6}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3d
    invoke-static {v0, v1}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lpci;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    :goto_1
    invoke-direct {v0, p0, v1}, Lmfe;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_d

    nop

    nop

    :goto_2
    new-instance v0, Lmfe;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    goto/32 :goto_16

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    :goto_5
    const/16 v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    new-instance p0, Lncl;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_9
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    const v0, 0x1d

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

    :goto_b
    iget-object v0, p0, Lmyl;->a:Loyn;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_d
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lmyl;->c:Lnny;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0, v0}, Lncl;-><init>(I)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Lnny;->d()V

    goto/32 :goto_2

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

    :goto_16
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_1

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
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v0, 0x1

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

    :goto_19
    check-cast v0, Ljava/lang/Boolean;

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

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lmyl;->b:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final b(Z)V
    .locals 3

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

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

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_2
    invoke-interface {v0}, Lpci;->close()V

    :goto_3
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->setVisibility(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p1, Lhmq;->a:Ljava/lang/Float;

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

    :goto_7
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lmyl;->t:Lpci;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

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

    :goto_a
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_1
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p1, p0, Lmyl;->a:Loyn;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_c
    invoke-interface {p1, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lmyl;->m()V

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->setAlpha(F)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p1, p0, Lmyl;->b:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

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

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x19

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

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

    :goto_18
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/16 v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1d
    const-wide/16 v1, 0x0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

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

    :goto_20
    iget-object p1, p0, Lmyl;->b:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_21
    iget-object p1, p0, Lmyl;->r:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_22
    const-string v0, "accessibility"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_10

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/16 v0, 0x8

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

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

    :goto_28
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto/32 :goto_2c

    nop

    nop

    :goto_29
    iget-object p1, p0, Lmyl;->j:Landroid/app/Activity;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p1, p0, Lmyl;->b:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p1, p0, Lmyl;->b:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :goto_2e
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2f
    const-wide/16 v1, 0xc8

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {v0, p0, v1}, Lmqs;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_32
    new-instance v0, Lmqs;

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

    :goto_33
    const v0, 0x17

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p1, p0, Lmyl;->r:Landroid/view/View;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object p1, p0, Lmyl;->r:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_36
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_4
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    goto/32 :goto_21

    nop

    nop

    :goto_3a
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3b
    iget-object p0, p0, Lmyl;->m:Landroid/view/View$OnLayoutChangeListener;

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_3c
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_3d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_a

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    :goto_6
    const v2, 0x7f14077e

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_8
    iget-object v0, p0, Lmyl;->e:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x1

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

    :goto_c
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p0

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

    :goto_e
    iput-boolean v0, p0, Lmyl;->u:Z

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_f
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_10
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lmyl;->o:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_12
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

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

    :goto_14
    const v1, 0xf

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    :goto_16
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lmyl;->d:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_18
    iget-wide v2, p0, Lmyl;->f:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_1a
    invoke-virtual {v1, v2, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lmyl;->f()V

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v0, p0, Lmyl;->u:Z

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_8
    const v0, 0x17

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

    :goto_9
    goto/32 :goto_5

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lmyl;->d:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    const v1, 0x7

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

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    iget-wide v1, p0, Lmyl;->f:J

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method public final e(Lmyi;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmyl;->n:Lmyi;

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
    return-void

    nop

    nop
.end method

.method public final f()V
    .locals 8

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v2, v4, v5, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_3
    if-nez v1, :cond_1

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lmyl;->e:Landroid/widget/TextView;

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

    :goto_5
    iget-object v0, p0, Lmyl;->e:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_6
    move-object v5, v4

    nop

    :goto_7
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lmyl;->d:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_9
    const v1, 0x7f070893

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v6, 0x1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_c
    if-nez v5, :cond_2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

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

    :goto_e
    if-nez v6, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lmyl;->e:Landroid/widget/TextView;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_10
    iget-object v5, p0, Lmyl;->j:Landroid/app/Activity;

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

    :goto_11
    goto :goto_7

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    :goto_13
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    goto/32 :goto_4f

    nop

    nop

    :goto_14
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eq v1, v6, :cond_4

    nop

    goto/32 :goto_2d

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_7

    nop

    nop

    :goto_18
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v5, v4, v2, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v6, 0x7f0801d2

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

    :goto_1d
    if-nez v5, :cond_5

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v2, 0x7f0600c2

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_20
    iget-object v5, p0, Lmyl;->j:Landroid/app/Activity;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_21
    move v1, v6

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_6b

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v6, :cond_6

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Lmyl;->o:Landroid/content/res/Resources;

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

    :goto_27
    invoke-interface {v5}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v5, v5, Lmyi;->d:Loyd;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v7, p0, Lmyl;->e:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v5}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v5

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

    :goto_2c
    goto/16 :goto_47

    nop

    :goto_2d
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v5, 0x7f08044c

    nop

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

    :goto_31
    iget-boolean v6, v5, Lmyi;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_32
    iget-object v1, p0, Lmyl;->o:Landroid/content/res/Resources;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_33
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_34
    const v0, 0xa

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

    :goto_35
    iget-object v5, p0, Lmyl;->n:Lmyi;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v5, p0, Lmyl;->n:Lmyi;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v5, :cond_7

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

    :cond_7
    goto/32 :goto_10

    nop

    nop

    :goto_38
    if-eq v0, v6, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v6, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_9
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v2, p0, Lmyl;->e:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_3b
    const v2, 0x7f07019b

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

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

    :goto_3d
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_3e
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    move v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-nez v1, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :cond_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    add-int v0, v0, v1

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_42
    move v2, v3

    nop

    nop

    :goto_43
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v1, p0, Lmyl;->e:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_46
    move v1, v3

    nop

    nop

    :goto_47
    goto/32 :goto_3

    nop

    nop

    :goto_48
    goto :goto_55

    nop

    nop

    :goto_49
    goto/32 :goto_54

    nop

    nop

    :goto_4a
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_4b
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_4c
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

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

    :goto_4d
    goto/16 :goto_7

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_36

    nop

    nop

    :goto_4f
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :goto_50
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_51
    rem-int v0, v0, v1

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

    :goto_52
    goto :goto_43

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_42

    nop

    nop

    :goto_54
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_39

    nop

    nop

    :goto_56
    goto/16 :goto_1

    nop

    nop

    :goto_57
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_59
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_5c
    goto/32 :goto_44

    nop

    nop

    :goto_5d
    iget-object v1, p0, Lmyl;->o:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v0, p0, Lmyl;->d:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_60
    int-to-float v1, v1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_62
    iget-object v5, v5, Lmyi;->e:Loyd;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v7, v0, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v2, p0, Lmyl;->d:Landroid/widget/TextView;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_65
    const v6, 0x7f08040c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_66
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

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

    :goto_67
    check-cast v5, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v2, v5}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_6a
    move v6, v3

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v0, p0, Lmyl;->e:Landroid/widget/TextView;

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

    :goto_6e
    const v6, 0x7f0801d5

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

    nop

    :goto_6f
    const v1, 0x16

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_70
    check-cast v5, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_71
    iget-object v2, p0, Lmyl;->j:Landroid/app/Activity;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_73
    iget-object v5, p0, Lmyl;->j:Landroid/app/Activity;

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
.end method

.method public final g()V
    .locals 8

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v1, v2}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Lmyl;->r:Landroid/view/View;

    nop

    nop

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

    nop

    :goto_3
    goto/32 :goto_23

    nop

    nop

    :goto_4
    sget-object v0, Lhmq;->a:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
    iget-object p0, p0, Lmyl;->m:Landroid/view/View$OnLayoutChangeListener;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    aput-object v2, v1, v3

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-array v1, v0, [Loyd;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v5, p0, Lmyl;->q:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_b
    const-wide/16 v6, 0xc8

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-wide/16 v6, 0x205

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v2, p0, v5}, Lmqs;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v2, "accessibility"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_12
    iget-object v0, p0, Lmyl;->r:Landroid/view/View;

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

    :goto_13
    invoke-virtual {p0, v1, v2}, Lmyl;->i(J)V

    goto/32 :goto_a

    nop

    nop

    :goto_14
    add-int v0, v0, v1

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

    :goto_15
    if-nez v0, :cond_2

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x7

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v1, v2, v5}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v1

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

    :goto_19
    invoke-virtual {p0, v1, v2}, Lmyl;->h(J)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lmyl;->l()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-wide/16 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1c
    new-instance v2, Lmqs;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1d
    iget-object v2, v2, Lmyi;->e:Loyd;

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

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_21
    aput-object v3, v1, v4

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_22
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_46

    nop

    :goto_24
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v3, v2, Lmyi;->d:Loyd;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_27
    const/16 v5, 0x9

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

    :goto_28
    invoke-virtual {p0}, Lmyl;->n()V

    :goto_29
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v2, p0, v5}, Lgle;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v5, p0, Lmyl;->k:Lowu;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2c
    new-instance v2, Lgle;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2d
    if-nez v5, :cond_3

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v2, p0, Lmyl;->n:Lmyi;

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

    nop

    :goto_2f
    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_30
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto/32 :goto_3d

    nop

    nop

    :goto_32
    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v1, p0, Lmyl;->r:Landroid/view/View;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_35
    const v1, 0x5

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

    :goto_36
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_37
    const/16 v5, 0x10

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

    nop

    :goto_38
    iput-object v1, p0, Lmyl;->t:Lpci;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {v2, p0, v5}, Lmok;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3c
    iget-object v1, p0, Lmyl;->e:Landroid/widget/TextView;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v1, p0, Lmyl;->b:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v1, p0, Lmyl;->j:Landroid/app/Activity;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v1, p0, Lmyl;->a:Loyn;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_41
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_4
    goto/32 :goto_45

    nop

    :goto_42
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v1}, Loyi;->a([Loyd;)Loyd;

    move-result-object v1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_44
    new-instance v2, Lmok;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_45
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(J)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lj$/time/Duration;->getSeconds()J

    move-result-wide p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput-wide p1, p0, Lmyl;->g:J

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

    nop

    :goto_3
    iget-object p0, p0, Lmyl;->e:Landroid/widget/TextView;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p1

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

    :goto_6
    invoke-static {p1, p2}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object p1

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

.method public final i(J)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lj$/time/Duration;->getSeconds()J

    move-result-wide p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    nop

    :goto_3
    iget-object p0, p0, Lmyl;->d:Landroid/widget/TextView;

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

    :goto_4
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, p2}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-wide p1, p0, Lmyl;->f:J

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
.end method

.method public final j(JI)V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p1

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

    :goto_4
    int-to-long v0, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_5
    iget-boolean p1, p1, Lmyi;->a:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_7
    invoke-virtual {p0, p1, p2}, Lmyl;->i(J)V

    goto/32 :goto_f

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    iput-wide p1, p0, Lmyl;->g:J

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

    :goto_a
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
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

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0xc

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p1, p0, Lmyl;->n:Lmyi;

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

    :goto_10
    iget-wide p1, p0, Lmyl;->f:J

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x19

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    mul-long/2addr p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_15
    iget-object p0, p0, Lmyl;->e:Landroid/widget/TextView;

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

    nop
.end method

.method public final k(Landroid/widget/LinearLayout;)V
    .locals 3

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lmyl;->r:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    const v2, 0x7f0b04ea

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p1}, Lnny;-><init>(Landroid/view/View;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3
    move-object v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_4
    iput-object v0, p0, Lmyl;->b:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

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

    :goto_5
    move-object v1, v0

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    new-instance v0, Lgle;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

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

    :goto_a
    iput-object v0, p0, Lmyl;->e:Landroid/widget/TextView;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lmyl;->o:Landroid/content/res/Resources;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lmyl;->b:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    :goto_13
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x7f0b02c9

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

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_18
    iput v0, p0, Lmyl;->s:I

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lmyl;->b:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1a
    new-instance v0, Lmyk;

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

    :goto_1b
    sget-object v0, Lhmq;->a:Ljava/lang/Float;

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

    :goto_1c
    const v2, 0x7f07036f

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

    :goto_1d
    iput-object v0, p0, Lmyl;->c:Lnny;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

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

    :goto_20
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_21
    const v0, 0x1f

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v0, p0, v1}, Lgle;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_23
    iput-object v0, p0, Lmyl;->d:Landroid/widget/TextView;

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_24
    new-instance v0, Lnny;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_25
    invoke-direct {v0, p0}, Lmyk;-><init>(Lmyl;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_15

    nop

    :goto_28
    iput-object v0, p0, Lmyl;->m:Landroid/view/View$OnLayoutChangeListener;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->b()Landroid/widget/TextView;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2a
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lmyl;->o:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v1, 0x7f0b00cd

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const v1, 0x7f0b044d

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput-object v0, p0, Lmyl;->p:Landroid/view/View;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_2f
    const/16 v1, 0xa

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_30
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_6

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

    :goto_31
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_32
    iget-object v1, p0, Lmyl;->o:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iput-object v0, p0, Lmyl;->o:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, p0, Lmyl;->b:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast v1, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_37
    const v1, 0x7f070746

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast v1, Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_39
    check-cast v0, Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast v0, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->a()Landroid/widget/TextView;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3c
    iput-object v1, p0, Lmyl;->q:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop
.end method

.method public final l()V
    .locals 7

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    const v3, 0x7f070893

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

    :goto_1
    const v1, 0x7f08015c

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, v0, Lmyi;->d:Loyd;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_3
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v0, Ljava/lang/Boolean;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lmyl;->f()V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Lmyl;->d:Landroid/widget/TextView;

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

    :goto_8
    iget-object v4, p0, Lmyl;->n:Lmyi;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_9
    move v4, v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lmyl;->j:Landroid/app/Activity;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_c
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lmyl;->m()V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_f
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v5, 0x0

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0xc

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v2, v2, v0, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v3, v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/16 v5, 0x8

    nop

    :goto_16
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v3, 0x7f0600c2

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

    nop

    :goto_18
    iget-object v0, p0, Lmyl;->j:Landroid/app/Activity;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lmyl;->n:Lmyi;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_1b
    goto/16 :goto_54

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_1f
    if-nez v1, :cond_0

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v3, v0, v5, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

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

    :goto_23
    const v3, 0x7f0801d5

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-boolean v4, v4, Lmyi;->c:Z

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v3, p0, Lmyl;->n:Lmyi;

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

    :goto_26
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_27
    const/4 v6, 0x1

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

    nop

    :goto_28
    iget-object v0, p0, Lmyl;->d:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_29
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2a
    if-nez v3, :cond_1

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2b
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2c
    const/4 v2, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-ne v6, v3, :cond_3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v0, :cond_4

    nop

    goto/32 :goto_c

    nop

    :cond_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v1, p0, Lmyl;->p:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_32
    const v3, 0x7f08040c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_33
    if-lez v0, :cond_5

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

    :cond_5
    goto/32 :goto_1d

    nop

    :goto_34
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

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

    :goto_35
    const v3, 0x7f0801d2

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

    :goto_36
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    :goto_38
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_3a
    goto/16 :goto_54

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v0, p0, Lmyl;->n:Lmyi;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v4, p0, Lmyl;->d:Landroid/widget/TextView;

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

    :goto_3e
    iget-object v3, p0, Lmyl;->d:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

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

    :goto_40
    if-ne v6, v4, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_41
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_42
    const v4, 0x7f07019b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_52

    nop

    nop

    :goto_44
    iget-boolean v3, v3, Lmyi;->c:Z

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_45
    move v4, v5

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_7
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v0, p0, Lmyl;->o:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_49
    goto :goto_54

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-boolean v3, v0, Lmyi;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v0, v0, Lmyi;->e:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_4e
    return-void

    nop

    nop

    :goto_4f
    goto/32 :goto_7

    nop

    nop

    :goto_50
    goto/32 :goto_1e

    nop

    nop

    :goto_51
    iget-object v0, p0, Lmyl;->o:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v1, p0, Lmyl;->n:Lmyi;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_53
    move-object v0, v2

    nop

    nop

    :goto_54
    goto/32 :goto_2e

    nop

    nop

    :goto_55
    invoke-virtual {v4, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/32 :goto_3e

    nop

    nop

    :goto_56
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_57
    iget-boolean v1, v1, Lmyi;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_58
    iget-object v1, p0, Lmyl;->o:Landroid/content/res/Resources;

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

    :goto_59
    iget-object v0, p0, Lmyl;->j:Landroid/app/Activity;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_5a
    iget-object v3, p0, Lmyl;->b:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

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

    :goto_5b
    iget-object v3, p0, Lmyl;->o:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop
.end method

.method public final m()V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    const/16 v1, 0x8

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
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

    :goto_4
    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x3

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
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lmyl;->e:Landroid/widget/TextView;

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

    :goto_8
    const/4 v1, 0x0

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

    nop

    :goto_9
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

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

    :goto_a
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

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lmyl;->e:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lmyl;->d:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x0

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

    :goto_14
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lmyl;->d:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public final n()V
    .locals 3

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lmyl;->b:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

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

    :goto_1
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2
    if-ne v0, v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v0, 0x50

    nop

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

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

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

    :goto_6
    invoke-interface {v2}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_7
    iget-object v2, p0, Lmyl;->l:Lrtm;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    iget-object v2, v2, Lnbs;->a:Lnbr;

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

    :goto_9
    invoke-interface {v2}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v2

    nop

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

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v1, Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v2}, Lnzk;->aQ(Lnbe;)Z

    move-result v2

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

    :goto_10
    const/16 v0, 0x30

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-ne v0, v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_1
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v2, v2, Lnbr;->i:Lnbe;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    :goto_14
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_29

    nop

    nop

    :goto_18
    iget-object v1, p0, Lmyl;->b:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_19
    invoke-static {v0, v1}, Lnnr;->i(Landroid/view/Display;Landroid/content/Context;)Lnbh;

    move-result-object v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Lmyl;->b:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1b
    goto :goto_21

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_2
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    :goto_21
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    :goto_24
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-ne v0, v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    :goto_26
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_28
    const v0, 0x12

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_29
    invoke-direct {p0, v1}, Lmyl;->d116db4599d9ddc8c35e61366a4f4967m(Landroid/view/ViewGroup;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {p0, v1, v0}, Lmyl;->a74c8a79bf0ef0e20983317119c87838m(Landroid/view/ViewGroup;I)V

    goto/32 :goto_16

    nop

    nop

    :goto_2b
    invoke-virtual {v0}, Lnbh;->ordinal()I

    move-result v0

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

    :goto_2c
    if-nez v0, :cond_5

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_6
    goto/32 :goto_a

    nop

    :goto_2e
    invoke-direct {p0, v1}, Lmyl;->d116db4599d9ddc8c35e61366a4f4967m(Landroid/view/ViewGroup;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast v2, Lnbs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_30
    iget-object v2, p0, Lmyl;->l:Lrtm;

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

    :goto_31
    const/4 v2, 0x3

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {p0, v1, v0}, Lmyl;->a74c8a79bf0ef0e20983317119c87838m(Landroid/view/ViewGroup;I)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v2, 0x2

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method
