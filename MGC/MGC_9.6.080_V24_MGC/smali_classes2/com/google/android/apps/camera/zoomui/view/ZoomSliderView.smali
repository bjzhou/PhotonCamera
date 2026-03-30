.class public Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;
.super Landroid/view/View;
.source "PG"

# interfaces
.implements Lcom/google/android/apps/camera/uiutils/ViewSmoothRotationUtil$Rotatee;


# static fields
.field public static final a:Lsdb;


# instance fields
.field private final A:Lnpa;

.field private final B:Z

.field private C:I

.field private D:I

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private K:F

.field private L:F

.field private M:Landroid/graphics/Paint;

.field private N:F

.field private O:F

.field private P:F

.field private Q:F

.field private R:I

.field private S:I

.field private T:F

.field private U:I

.field private V:I

.field private W:F

.field private aa:F

.field private ab:I

.field private ac:F

.field private ad:J

.field private ae:Landroid/graphics/Paint;

.field private af:Landroid/graphics/Paint;

.field private ag:Landroid/graphics/Paint;

.field private ah:Landroid/text/TextPaint;

.field private ai:Landroid/view/VelocityTracker;

.field private aj:I

.field private ak:I

.field private al:I

.field private am:I

.field private an:I

.field private ao:Lryb;

.field private ap:Lryb;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:I

.field public l:F

.field public m:I

.field public n:F

.field public o:F

.field public p:Landroid/widget/Scroller;

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Lryb;

.field public u:Lryb;

.field public v:Lnvp;

.field private final w:I

.field private final x:F

.field private final y:Z

.field private final z:F


# direct methods
.method private final 1a36313b7ed15ba14e0acb4da569b8b7m()V
    .locals 7

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3
    goto/32 :goto_40

    nop

    :goto_4
    goto/32 :goto_4c

    nop

    nop

    :goto_5
    mul-int/2addr v1, v3

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_6
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->v:Lnvp;

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

    :goto_7
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1, v2}, Lnvp;->a(FZ)V

    :goto_9
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_a
    iget v3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->j:F

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_b
    iput v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

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

    :goto_c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v4, Ljava/lang/Integer;

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

    :goto_e
    iget v2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->k:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    const/high16 v2, 0x43480000    # 200.0f

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v1, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_11
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

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

    nop

    :goto_12
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    cmpl-float v3, v1, v2

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

    :goto_15
    iget v2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->l:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_16
    if-eqz v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

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

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->v:Lnvp;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_1a
    div-float/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

    nop

    :goto_1d
    goto/32 :goto_19

    nop

    nop

    :goto_1e
    iget-object v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->A:Lnpa;

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

    :goto_1f
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_20
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_21
    if-lt v3, v2, :cond_2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v5, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_3
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    cmpl-float v5, v5, v6

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_24
    iget-object v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->v:Lnvp;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_25
    iget-boolean v2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->q:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_26
    iget v3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->m:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_28
    cmpl-float v5, v5, v6

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_29
    int-to-float v4, v4

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2a
    int-to-float v1, v2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v1, v2}, Lnvp;->a(FZ)V

    goto/32 :goto_1c

    nop

    nop

    :goto_2c
    iget-boolean v2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->q:Z

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2f
    iget v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->n:F

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_31
    iget v1, v1, Lnpa;->a:F

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_33
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_36
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_37
    sub-float/2addr v5, v4

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_1d

    nop

    nop

    :goto_39
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->u:Lryb;

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

    :goto_3c
    cmpl-float v5, v4, v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_3d
    if-ltz v5, :cond_4

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    nop

    :goto_3e
    const v6, 0x3d4ccccd    # 0.05f

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_3f
    return-void

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_42
    add-int/2addr v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_43
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_44
    iget v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_45
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_5
    goto/32 :goto_3

    nop

    :goto_46
    const v1, 0x9

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

    nop

    :goto_47
    iput v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->n:F

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_48
    div-float/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_49
    if-eqz v5, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_6
    :goto_4a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez v5, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_7
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

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

    :goto_4d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->invalidate()V

    goto/32 :goto_3f

    nop

    nop

    :goto_4e
    cmpg-float v5, v5, v6

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->a:Lsdb;

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

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const-string v0, "com.google.android.apps.camera.zoomui.view.ZoomSliderView"

    nop

    goto/32 :goto_2

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
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v4, 0x7f070aa9

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ah:Landroid/text/TextPaint;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v0, 0x7d0

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v4, 0x7f070a84

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    :goto_5
    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->af:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v3, 0xc

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p3, Lfwm;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_9
    if-nez p3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    :goto_a
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_b
    iput v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->L:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    iput p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->aa:F

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ag:Landroid/graphics/Paint;

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_f
    invoke-virtual {p3, p1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    goto/32 :goto_2

    nop

    nop

    :goto_10
    const v7, 0x3ba3d70a    # 0.005f

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p3, v3}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p3, v0}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v0

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_a9

    nop

    nop

    :goto_14
    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->M:Landroid/graphics/Paint;

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :goto_16
    iput-boolean v3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->s:Z

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_17
    new-instance p3, Ljava/util/concurrent/atomic/AtomicReference;

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_19
    iput v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->G:F

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_1a
    int-to-float v4, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_1b
    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->C:I

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_1c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    :cond_1
    goto/32 :goto_65

    nop

    :goto_1d
    invoke-virtual {p2, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    :goto_20
    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    int-to-float v4, v4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v3, 0x7f070ab7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    :goto_24
    add-float/2addr p2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_25
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_26
    const v4, 0x7f070aba

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {p3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

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

    nop

    :goto_28
    move-object p3, p1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {p0}, Lnzk;->v(Landroid/view/View;)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_2a
    const v0, 0x7f070abb

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_2b
    return-void

    nop

    :goto_2c
    goto/32 :goto_12c

    nop

    nop

    nop

    :goto_2d
    invoke-direct {p3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const p3, 0x7f070ab8

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

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

    :goto_31
    invoke-virtual {v0}, Lrxq;->v()Lryb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :goto_32
    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->d:F

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    :goto_33
    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->j:F

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_34
    const p3, 0x7f070abd

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    goto/32 :goto_127

    nop

    nop

    nop

    :goto_36
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ah:Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_39
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->F:F

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

    :goto_3b
    iget-object v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ah:Landroid/text/TextPaint;

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

    :goto_3c
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/16 v4, 0x10

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_3f
    sget-object v0, Lnve;->a:[I

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_40
    new-instance p3, Landroid/graphics/Paint;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_42
    const v0, 0x7f060b91

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_69

    nop

    nop

    :goto_44
    invoke-static {p0}, Lnzk;->v(Landroid/view/View;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_45
    const/high16 v7, 0x43480000    # 200.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_46
    iput-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->af:Landroid/graphics/Paint;

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_48
    invoke-static {p0, v0}, Lrgw;->f(Landroid/view/View;I)I

    move-result v0

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p3, v0}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_4a
    invoke-interface {p3}, Lfwm;->b()Lhoh;

    move-result-object p3

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_4b
    const/16 v7, 0xc8

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_4c
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    :goto_4d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    :goto_4e
    iput-object v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->M:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_4f
    const v4, 0x7f0c00dc

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    :goto_50
    new-instance p3, Landroid/graphics/Paint;

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_51
    div-float/2addr p2, v7

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

    :goto_52
    iput p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->O:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_53
    const/high16 v10, 0x41a00000    # 20.0f

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

    nop

    :goto_54
    iput-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ao:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_55
    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->H:F

    nop

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    :goto_56
    iget v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->C:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    add-float/2addr p3, p3

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    :goto_5a
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    :goto_5b
    int-to-float v4, v4

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->G:F

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->D:I

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_5e
    instance-of p3, p1, Lfwm;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    goto/32 :goto_111

    nop

    nop

    nop

    :goto_60
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_61
    const v4, 0x7f070aaa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_62
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

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

    nop

    :goto_63
    iput-boolean v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->B:Z

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-static {v0, v4, v8, v9, v10}, Lryy;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->M:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iput-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->y:Z

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_6c
    iget v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->Q:F

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_6d
    const/4 v7, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    :goto_6e
    iput p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->I:F

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_6f
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_70
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ah:Landroid/text/TextPaint;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iput-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ae:Landroid/graphics/Paint;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    div-float/2addr v0, v7

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_74
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    :goto_75
    sget-object v0, Lhnz;->e:Lhmn;

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

    :goto_76
    const v4, 0x7f070ab2

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

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

    :goto_78
    new-instance v4, Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    const v3, 0x7f070aac

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_7b
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_7c
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {p2, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_7f
    filled-new-array {v0}, [I

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {p2, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_81
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_82
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_83
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_84
    iput p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->J:F

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_85
    const v5, 0x7f070aa7

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v4, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_87
    const v0, 0x3c23d70a    # 0.01f

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

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

    :goto_89
    iput v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->J:F

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_8b
    const v7, 0x7f070aad

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_8c
    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_8d
    iput p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->P:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_8e
    iput v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->E:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_8f
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    :goto_90
    iput-boolean p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->B:Z

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_91
    new-instance v0, Landroid/util/TypedValue;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-direct {p3, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    goto/32 :goto_11f

    nop

    nop

    :goto_94
    invoke-direct {p3, v3}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iget-object v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ah:Landroid/text/TextPaint;

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_96
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    iget p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->H:F

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

    :goto_98
    iput-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ah:Landroid/text/TextPaint;

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->E:F

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    :goto_9b
    const v4, 0x7f070ab3

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {p3, p2}, Landroid/widget/Scroller;->setFriction(F)V

    goto/32 :goto_f7

    nop

    nop

    nop

    :goto_9d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    nop

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

    :goto_9f
    goto/16 :goto_64

    nop

    nop

    nop

    nop

    :goto_a0
    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    iput p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->x:F

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

    nop

    :goto_a3
    new-instance v4, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {p2, v0, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    iput v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->I:F

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_a6
    const/16 v3, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->k()V

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_a8
    iput-boolean v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->r:Z

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_a9
    new-instance p1, Landroid/util/TypedValue;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->U:I

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_ab
    iput v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->H:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_ac
    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ae:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_ae
    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ae:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    iget v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->D:I

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    sget-object v0, Lhnz;->f:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_b2
    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_b3
    const/16 v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_b4
    return-void

    nop

    :goto_b5
    goto/32 :goto_119

    nop

    nop

    nop

    :goto_b6
    const/16 v3, 0xa

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

    nop

    :goto_b7
    invoke-static {v0, v4, v8, v6}, Lryy;->I(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object v0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_b8
    iget v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->R:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_b9
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {p2, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_bb
    iput-object v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ah:Landroid/text/TextPaint;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-direct {p3, v0}, Lnpa;-><init>(I)V

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_c0
    const v0, 0x7f0406be

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    :goto_c2
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c3
    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_c4
    iput v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->z:F

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_c5
    sget-object v0, Lnwy;->b:Lnwy;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    const v0, 0x7f0401bc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_c8
    invoke-virtual {p3, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    goto/32 :goto_10f

    nop

    nop

    nop

    :goto_c9
    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->R:I

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    :goto_ca
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    const v1, 0x7f060b90

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_cc
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_cd
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->M:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_ce
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    :goto_cf
    invoke-static {p0}, Lnzk;->v(Landroid/view/View;)I

    move-result v0

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

    :goto_d0
    invoke-virtual {v0}, Lrxq;->v()Lryb;

    move-result-object v0

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_d1
    new-instance p3, Lnpa;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_d2
    iput v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->K:F

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_d3
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    int-to-float v4, v4

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_d5
    const v0, 0x3f333333    # 0.7f

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_d6
    iput p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->w:I

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d8
    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ag:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->g()V

    goto/32 :goto_13f

    nop

    nop

    nop

    :goto_da
    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->af:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_dc
    const v0, 0x10

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_dd
    iput-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->A:Lnpa;

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_de
    iput-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    :goto_df
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    :goto_e0
    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ae:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    const/16 v0, 0x9

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    :goto_e3
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    :goto_e5
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_e6
    iput-boolean v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->y:Z

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ag:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    const v4, 0x7f070ab9

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    :goto_e9
    const/16 v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_eb
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    iput-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ap:Lryb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    :goto_ed
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    invoke-static {p0}, Lnzk;->v(Landroid/view/View;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    invoke-virtual {p2, v7, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_f0
    add-float/2addr p2, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_f1
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    :goto_f2
    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->af:Landroid/graphics/Paint;

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_f3
    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->G:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_f4
    const v7, 0x7f070ab0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_f5
    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_f6
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_f7
    iget-boolean p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->B:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    int-to-float v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    :goto_f9
    const/high16 v6, 0x40a00000    # 5.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_fa
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    const/high16 v0, 0x3f000000    # 0.5f

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

    :goto_fc
    invoke-virtual {p3, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_fd
    invoke-virtual {p2, v0, p1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    :goto_ff
    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_100
    const/16 v0, 0xb

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_101
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_128

    nop

    nop

    :goto_102
    const/high16 v5, 0x41b00000    # 22.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_103
    iget p2, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    :goto_104
    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ag:Landroid/graphics/Paint;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_105
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_106
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_107
    const/high16 v7, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_108
    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->Q:F

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_109
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_10b
    const v3, 0x7f070ab6

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

    :goto_10c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10d
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_10e
    const v0, 0x7f070aab

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    new-instance p3, Landroid/widget/Scroller;

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_110
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    :goto_111
    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ah:Landroid/text/TextPaint;

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_112
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p3

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_113
    invoke-static {p0}, Lnzk;->p(Landroid/view/View;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_114
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    nop

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

    :goto_115
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_116
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_117
    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ac:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_118
    invoke-static {p3}, Lnzk;->i(Lhoh;)Z

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_119
    goto/32 :goto_66

    nop

    nop

    :goto_11a
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_11b
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_11c
    iput v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ac:F

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    const/high16 v9, 0x40800000    # 4.0f

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

    :goto_11f
    iput-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->p:Landroid/widget/Scroller;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_120
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_121
    const v3, 0x7f070abc

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_122
    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_123
    const-string p3, "google-sans-text"

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_124
    if-eqz p2, :cond_2

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    :goto_125
    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->D:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_126
    iput v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->N:F

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_127
    const v0, 0x7f070aa8

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_128
    new-instance p3, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    :goto_129
    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

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

    :goto_12a
    check-cast v0, Ljava/lang/Float;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_12b
    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->T:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

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

    :goto_12d
    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->z:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    :goto_12e
    iput-boolean v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->q:Z

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->F:F

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    :goto_130
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_131
    add-float/2addr p3, p3

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_132
    invoke-virtual {p3, v0}, Landroid/widget/Scroller;->extendDuration(I)V

    goto/32 :goto_134

    nop

    nop

    :goto_133
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_134
    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->p:Landroid/widget/Scroller;

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_135
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_136
    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->af:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_137
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_138
    invoke-direct {v4, v3}, Landroid/text/TextPaint;-><init>(I)V

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_139
    iget-object p3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ae:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    :goto_13a
    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    const/4 v4, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->S:I

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    invoke-direct {p3, v3}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

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

    :goto_13f
    new-instance p3, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_140
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final a74c8a79bf0ef0e20983317119c87838m(Landroid/graphics/Canvas;FFF)V
    .locals 7

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    add-float v5, p3, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    move-object v1, p1

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

    :goto_4
    const v0, 0x14

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v6, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ae:Landroid/graphics/Paint;

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

    :goto_6
    iget-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->B:Z

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

    :goto_7
    goto/32 :goto_b

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_13

    nop

    nop

    :goto_e
    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    sub-float v3, p3, p4

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0xb

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

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ae:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move v2, p2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move v4, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method private final b1051a9d8893542362ad09051775f8f6m(I)I
    .locals 4

    goto/32 :goto_11

    nop

    nop

    :goto_0
    iget p0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->e:F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    iget v2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->f:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    float-to-double v0, v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    div-float/2addr v2, v3

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

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_8
    iget v3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    sub-double/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    int-to-double p0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b
    float-to-double v2, v2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->e:F

    nop

    nop

    nop

    goto/32 :goto_1d

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

    nop

    nop

    nop

    :goto_e
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    nop

    :goto_10
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_11
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

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

    :goto_13
    div-float/2addr v2, p0

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

    :goto_14
    div-double/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_15
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_16
    const/high16 v0, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_17
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_16

    nop

    nop

    :goto_19
    float-to-double v2, v2

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

    :goto_1a
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1d
    div-float/2addr v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    double-to-float p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method private final ccb4c19b7dbd16be9d2a43125797659dm(Landroid/graphics/Canvas;FFF)V
    .locals 6

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->E:F

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
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

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_4
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    add-float v4, p3, p4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move v1, p2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    iget-object v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->af:Landroid/graphics/Paint;

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

    :goto_f
    sub-float v2, p3, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    move v3, p2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0xe

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

    :goto_14
    iget-object p0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->af:Landroid/graphics/Paint;

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

    :goto_15
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_16
    iget-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->B:Z

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_17
    sub-float/2addr p3, v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    move-object v0, p1

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget p0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->P:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic c()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p0, "rotationDegree"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final computeScroll()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->p:Landroid/widget/Scroller;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, v0}, Lnpa;->a(F)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1b

    nop

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x15

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

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

    :goto_c
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->p:Landroid/widget/Scroller;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->1a36313b7ed15ba14e0acb4da569b8b7m()V

    goto/32 :goto_7

    nop

    nop

    :goto_e
    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->n:F

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->A:Lnpa;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->p:Landroid/widget/Scroller;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    int-to-float v0, v0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_13
    if-ne v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->v:Lnvp;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->p:Landroid/widget/Scroller;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_16
    const v1, 0x11

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

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

    :goto_18
    invoke-virtual {p0}, Lnvp;->b()V

    :goto_19
    goto/32 :goto_1a

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1d
    goto/32 :goto_3

    nop

    :goto_1e
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop
.end method

.method public final d(F)F
    .locals 10

    goto/32 :goto_5

    nop

    nop

    :goto_0
    invoke-static {v0, p0}, Lnzk;->h(FI)F

    move-result p0

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v5, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2
    double-to-float v0, v5

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_3
    cmpl-float v5, v3, v2

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x20

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v5, v1}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ao:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    move v0, v3

    nop

    nop

    :goto_b
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move v3, v2

    nop

    nop

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
    invoke-virtual {v4, v1}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_f
    cmpl-float v5, p1, v5

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_10
    invoke-virtual {v7, v1}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v7

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

    nop

    :goto_11
    check-cast v7, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v5, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_13
    iget-object v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ao:Lryb;

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

    :goto_14
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    int-to-float v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ao:Lryb;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_17
    int-to-float v5, v5

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_18
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_19
    check-cast v5, Ljava/lang/Integer;

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_1a
    if-gtz v5, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x1d

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

    :goto_1c
    sub-float v5, p1, v5

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move v3, v4

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

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

    nop

    :goto_1f
    iget-object v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->u:Lryb;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_22
    div-float v0, v4, v3

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_23
    int-to-float v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_24
    invoke-virtual {v4}, Lryb;->size()I

    move-result v4

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v5, v6}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v8, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->u:Lryb;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

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

    :goto_29
    add-int/lit8 v6, v1, -0x1

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

    :goto_2a
    cmpg-float v5, p1, v5

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-lez v5, :cond_2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2c
    if-nez v5, :cond_3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_3
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2e
    int-to-float v6, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_2f
    float-to-double v6, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_30
    sub-int/2addr v7, v6

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v5, v6}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_33
    const/4 p0, 0x5

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

    :goto_34
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_36
    div-float/2addr v5, v6

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

    :goto_37
    if-lt v1, v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast v4, Ljava/lang/Float;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v8, v6}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v6

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

    :goto_3a
    goto/16 :goto_d

    nop

    :goto_3b
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v7, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->u:Lryb;

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

    :goto_3d
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->u:Lryb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_3f
    float-to-double v8, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_40
    mul-float/2addr v3, v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_41
    check-cast v6, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_42
    return p0

    nop

    nop

    :goto_43
    goto/32 :goto_48

    nop

    nop

    :goto_44
    iget-object v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->u:Lryb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_45
    add-int/lit8 v1, v1, 0x1

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

    :goto_46
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_47
    invoke-virtual {v0, v1}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_48
    goto/32 :goto_21

    nop

    nop

    nop

    nop
.end method

.method public final e(F)F
    .locals 11

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    cmpg-float v5, p1, v4

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1
    move v3, v1

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_30

    nop

    nop

    :goto_3
    invoke-virtual {v2, v3}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    double-to-float v3, v9

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

    :goto_5
    cmpl-float v5, p1, v3

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v2, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_35

    nop

    nop

    :goto_8
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_9
    float-to-double v7, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_a
    invoke-virtual {v5, v6}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_b
    cmpl-float v3, p1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_c
    int-to-float v2, v2

    nop

    :goto_d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_e
    div-double/2addr v9, v6

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

    :goto_f
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

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

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_11
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_12
    iget-object v3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ao:Lryb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_14
    invoke-virtual {v5, v6}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v4}, Lryb;->size()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_16
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/high16 v2, 0x3f800000    # 1.0f

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

    :goto_1a
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1b
    check-cast v2, Ljava/lang/Integer;

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

    :goto_1c
    check-cast v5, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sub-int/2addr v2, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v3}, Lryb;->size()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_20
    add-int/lit8 v3, v3, -0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_2

    nop

    :goto_22
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v2, v0}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ao:Lryb;

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

    :goto_26
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-lt v0, v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    cmpl-float v5, v3, v1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->u:Lryb;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_2b
    add-float v2, v5, v3

    nop

    :goto_2c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

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

    :goto_2e
    if-lez v5, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2f
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ao:Lryb;

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

    :goto_31
    iget-object v5, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->u:Lryb;

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

    :goto_32
    if-gez v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_33
    if-gtz v3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    return v2

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v4, v0}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_37
    iget-object v2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->u:Lryb;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_38
    move v3, v4

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

    :goto_39
    if-nez v5, :cond_4

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    :goto_3a
    add-int/lit8 v6, v0, -0x1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    float-to-double v9, v6

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

    :goto_3c
    check-cast v4, Ljava/lang/Float;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3d
    if-lez v0, :cond_5

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

    :cond_5
    goto/32 :goto_7

    nop

    :goto_3e
    int-to-float v5, v5

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->u:Lryb;

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

    :goto_40
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_41
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_42
    div-float v6, p1, v3

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_43
    div-float v3, v4, v3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_44
    check-cast v5, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_45
    mul-float/2addr v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop
.end method

.method public final f()I
    .locals 3

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_0
    if-gtz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    :goto_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    iget v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->g:F

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->S:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    const v1, 0x1

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

    :goto_8
    return p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v1, :cond_1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_2

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    :goto_f
    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->b1051a9d8893542362ad09051775f8f6m(I)I

    move-result v0

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

    nop

    :goto_10
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    :goto_11
    iget v2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h:F

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_12
    cmpl-float v1, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    int-to-float v1, v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->b1051a9d8893542362ad09051775f8f6m(I)I

    move-result p0

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

    nop

    nop

    :goto_17
    const v0, 0x17

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->S:I

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_19
    cmpl-float v1, v1, v2

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

    :goto_1a
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    const/high16 v2, 0x41b00000    # 22.0f

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
.end method

.method public final g()V
    .locals 5

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_0
    const/high16 v1, 0x43480000    # 200.0f

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    int-to-float v0, v0

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
    div-float/2addr v0, v4

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    mul-float/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4
    int-to-float v0, v2

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    mul-float/2addr v4, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_9
    float-to-int v0, v0

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

    :goto_a
    div-float/2addr v0, v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->an:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    mul-float/2addr v0, v1

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

    :goto_d
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    sub-int/2addr v2, v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->k:I

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    mul-float/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_11
    iput v2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->V:I

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_12
    div-float/2addr v3, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    float-to-int v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->m:I

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_16
    float-to-int v2, v2

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

    nop

    :goto_17
    if-lez v0, :cond_1

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
    goto/32 :goto_22

    nop

    :goto_18
    iput v3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->n:F

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_19
    mul-float/2addr v2, v1

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

    :goto_1a
    iget v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->j:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1b
    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->l:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1c
    iget v4, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->T:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

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

    :goto_1e
    iget v3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

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

    nop

    :goto_1f
    int-to-float v1, v1

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

    :goto_20
    float-to-int v0, v0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sub-int/2addr v3, v0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_25
    float-to-int v3, v3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_26
    mul-float/2addr v0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_27
    iget v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->c:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_28
    mul-float/2addr v3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_29
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget v2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->d:F

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2b
    const v0, 0x2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2c
    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ab:I

    nop

    nop

    :goto_2d
    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method protected final getLeftFadingEdgeStrength()F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

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
.end method

.method protected final getRightFadingEdgeStrength()F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

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
.end method

.method public final h()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->setEnabled(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x4

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->setVisibility(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method

.method public final i()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2
    if-ltz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->j(Lryb;)V

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ap:Lryb;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iget v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h:F

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

    :goto_7
    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->d:F

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    cmpg-float v0, v1, v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->f()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x2

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

    :goto_c
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ap:Lryb;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0}, Lrgw;->ab(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_10
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->g()V

    goto/32 :goto_1a

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->j(Lryb;)V

    goto/32 :goto_13

    nop

    nop

    :goto_13
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop

    :goto_15
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->f:F

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ao:Lryb;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Lryb;->isEmpty()Z

    move-result v0

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

    :goto_19
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

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

    :goto_1a
    return-void

    nop

    :goto_1b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1b

    nop

    nop

    :goto_1d
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ao:Lryb;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1f
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_20
    const v1, 0xc

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_21
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_3
    goto/32 :goto_1c

    nop
.end method

.method public final j(Lryb;)V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lryw;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v1}, Lrgw;->ab(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Lryb;->isEmpty()Z

    move-result v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    cmpg-float p1, v1, p1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->f:F

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

    :goto_6
    if-gtz p1, :cond_1

    nop

    goto/32 :goto_27

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Lrxq;->v()Lryb;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1a

    nop

    nop

    :goto_a
    check-cast v1, Ljava/lang/Float;

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
    cmpl-float p1, v1, p1

    nop

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

    :goto_c
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->t:Lryb;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    :goto_12
    const v0, 0x10

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p1}, Lrgw;->ab(Ljava/lang/Iterable;)Ljava/lang/Object;

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

    :goto_15
    invoke-virtual {v0, p1}, Lryw;->h(Ljava/lang/Object;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_16
    iget p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Lryw;->g()Lryy;

    move-result-object p1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-ltz p1, :cond_4

    nop

    goto/32 :goto_27

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    :goto_1c
    iput-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ao:Lryb;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, p1}, Lryw;->j(Ljava/lang/Iterable;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->t:Lryb;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_20
    new-instance v0, Lryw;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->k()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ap:Lryb;

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

    :goto_23
    const v1, 0x20

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_24
    iget-object v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->t:Lryb;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_25
    check-cast p1, Ljava/lang/Float;

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

    :goto_26
    invoke-virtual {v0, p1}, Lryw;->j(Ljava/lang/Iterable;)V

    :goto_27
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final k()V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ao:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->u:Lryb;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    sget v1, Lryb;->d:I

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

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
    const v1, 0x14

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
    invoke-direct {v1, p0, v2}, Ljlz;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v1, Ljlz;

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

    :goto_d
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

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

    :goto_e
    const/16 v2, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    sget-object v1, Lrvj;->a:Lj$/util/stream/Collector;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

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

    :goto_13
    check-cast v0, Lryb;

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

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public final l()V
    .locals 2

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v1, 0x8

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lryb;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    if-ltz v0, :cond_0

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ap:Lryb;

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

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->d:F

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    :goto_8
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->j(Lryb;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getVisibility()I

    move-result v0

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

    :goto_a
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_3

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

    :cond_3
    goto/32 :goto_10

    nop

    nop

    :goto_d
    invoke-static {v0}, Lrgw;->ab(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_15

    nop

    :goto_f
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ao:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->g()V

    :goto_12
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_13
    iget v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->f:F

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

    :goto_14
    goto/32 :goto_1a

    nop

    :goto_15
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i()V

    :goto_17
    goto/32 :goto_19

    nop

    nop

    :goto_18
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1f
    if-eq v0, v1, :cond_5

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ao:Lryb;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_21
    check-cast v0, Ljava/lang/Float;

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

    :goto_22
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->f()I

    move-result v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_23
    const v1, 0xb

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getVisibility()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_25
    cmpg-float v0, v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-float v6, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_1
    div-float v17, v17, v12

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v11, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->J:F

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-gez v3, :cond_1

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v8, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ag:Landroid/graphics/Paint;

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

    :goto_6
    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ak:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_7
    mul-float v9, v9, v16

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int/2addr v5, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-gez v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    int-to-float v6, v6

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_c
    mul-float/2addr v9, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_d
    const/high16 v8, 0x41200000    # 10.0f

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

    :goto_e
    iget v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->F:F

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_f
    if-ltz v12, :cond_3

    nop

    nop

    goto/32 :goto_62

    nop

    :cond_3
    goto/32 :goto_72

    nop

    nop

    :goto_10
    move v2, v4

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_4

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_83

    nop

    :goto_12
    if-gtz v6, :cond_5

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_102

    nop

    nop

    :goto_13
    const v1, 0x1d

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_14
    iget v15, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->V:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    :goto_15
    sub-float/2addr v3, v6

    nop

    goto/32 :goto_128

    nop

    nop

    :goto_16
    if-lt v5, v12, :cond_6

    nop

    goto/32 :goto_a1

    nop

    :cond_6
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    :goto_18
    add-float/2addr v3, v11

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    :goto_19
    move v13, v14

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_1a

    nop

    :goto_1c
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_1e
    iget-object v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ah:Landroid/text/TextPaint;

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    :goto_1f
    cmpg-float v12, v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_20
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

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

    :goto_21
    if-eqz v3, :cond_7

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_22
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_23
    mul-float/2addr v9, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_a7

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    div-float v12, v9, v2

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v3, v12}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move v15, v9

    nop

    :goto_29
    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->m:I

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

    :goto_2b
    mul-float v17, v11, v14

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2c
    if-nez v14, :cond_8

    nop

    nop

    goto/32 :goto_c6

    nop

    :cond_8
    goto/32 :goto_b7

    nop

    nop

    :goto_2d
    iget-object v11, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->u:Lryb;

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

    nop

    :goto_2e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_2f
    const/high16 v11, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_30
    add-float v6, v1, v3

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {v0, v7, v4, v1, v3}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->a74c8a79bf0ef0e20983317119c87838m(Landroid/graphics/Canvas;FFF)V

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget v4, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->K:F

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_33
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getHeight()I

    move-result v1

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_35
    move-object/from16 v7, p1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v3, :cond_9

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    :cond_9
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_37
    mul-float v9, v6, v8

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    move v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_39
    iget v15, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ab:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_3a
    mul-int/2addr v10, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_3b
    add-int/2addr v5, v12

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_3c
    mul-float v6, v3, v8

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_3d
    sub-float v4, v1, v3

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_3e
    iget v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ak:I

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_3f
    iget v6, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->z:F

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    move v5, v9

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

    :goto_41
    if-nez v3, :cond_a

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_42
    cmpl-float v12, v4, v12

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_44
    iget v6, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->o:F

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_81

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-eqz v3, :cond_b

    nop

    nop

    goto/32 :goto_81

    nop

    :cond_b
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_48
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_49
    float-to-int v5, v5

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_4a
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_4c
    mul-float/2addr v9, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_84

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v7, v2, v1, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_8d

    nop

    nop

    :goto_4f
    invoke-direct {v0, v7, v4, v1, v3}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->a74c8a79bf0ef0e20983317119c87838m(Landroid/graphics/Canvas;FFF)V

    goto/32 :goto_1b

    nop

    nop

    :goto_50
    iget-boolean v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->B:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    :goto_51
    div-float/2addr v6, v8

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_52
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_54
    div-float/2addr v14, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    :goto_55
    const-string v3, ".0"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    :goto_56
    if-ltz v12, :cond_c

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    :cond_c
    goto/32 :goto_11f

    nop

    nop

    :goto_57
    sub-int/2addr v5, v9

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

    :goto_58
    add-int/lit8 v3, v3, -0x2

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    mul-float v14, v9, v13

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    float-to-double v13, v6

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_5b
    move-object v6, v10

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_5c
    div-float/2addr v3, v6

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

    :goto_5d
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_3e

    nop

    nop

    :goto_5e
    iget-boolean v12, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->B:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget v9, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->j:F

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :goto_60
    div-float v9, v11, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_61
    goto :goto_6c

    nop

    :goto_62
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_63
    move-object/from16 v0, p1

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

    :goto_64
    add-float/2addr v12, v11

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-direct {v0, v7, v4, v1, v3}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ccb4c19b7dbd16be9d2a43125797659dm(Landroid/graphics/Canvas;FFF)V

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_66
    move-object/from16 v1, p1

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

    :goto_67
    iget v6, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->j:F

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->L:F

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_69
    goto/16 :goto_1a

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_6b
    invoke-direct {v0, v7, v4, v1, v3}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ccb4c19b7dbd16be9d2a43125797659dm(Landroid/graphics/Canvas;FFF)V

    :goto_6c
    goto/32 :goto_92

    nop

    nop

    :goto_6d
    cmpl-float v3, v3, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    :goto_6e
    iget v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ak:I

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_6f
    iget-object v0, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ag:Landroid/graphics/Paint;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_70
    if-gtz v12, :cond_d

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

    :cond_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    mul-float/2addr v11, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_72
    iget v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->F:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget-object v10, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->M:Landroid/graphics/Paint;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_74
    mul-float v11, v11, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    div-float/2addr v9, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    :goto_76
    if-le v5, v15, :cond_e

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_77
    iget-boolean v14, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->y:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_78
    sub-float v8, v1, v2

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    move v11, v13

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    if-ltz v11, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    :cond_f
    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_7b
    const/high16 v2, 0x40000000    # 2.0f

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_7c
    if-ltz v3, :cond_10

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-direct {v0, v7, v4, v1, v3}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->a74c8a79bf0ef0e20983317119c87838m(Landroid/graphics/Canvas;FFF)V

    goto/32 :goto_100

    nop

    nop

    :goto_7e
    const/4 v9, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    int-to-float v1, v1

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_80
    const/4 v11, 0x1

    nop

    nop

    :goto_81
    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    const/high16 v13, 0x40800000    # 4.0f

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_8e

    nop

    :goto_84
    goto/32 :goto_22

    nop

    nop

    :goto_85
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    :goto_86
    div-float/2addr v9, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_87
    div-float/2addr v5, v9

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

    :goto_88
    add-int v16, v16, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_89
    const/high16 v14, 0x40800000    # 4.0f

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_8a
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_8b
    int-to-float v9, v5

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    add-float/2addr v3, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_8d
    return-void

    nop

    nop

    :goto_8e
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_8f
    sub-float v5, v8, v2

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_90
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_91
    cmpg-float v3, v4, v3

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_92
    const/high16 v11, 0x43480000    # 200.0f

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    rem-int v3, v5, v10

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

    :goto_94
    iget v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->H:F

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_95
    sub-float v3, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_96
    add-float/2addr v4, v8

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_97
    move v3, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_98
    sub-float v5, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_99
    sget-object v12, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_9a
    mul-float/2addr v6, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_9b
    add-float/2addr v3, v9

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

    :goto_9c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    goto/16 :goto_6c

    nop

    :goto_9e
    goto/32 :goto_a8

    nop

    nop

    :goto_9f
    if-nez v3, :cond_11

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

    :cond_11
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_a0
    move v5, v12

    nop

    nop

    nop

    nop

    :goto_a1
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    iget v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->an:I

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_a3
    add-float v9, v8, v2

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_a4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    div-float/2addr v9, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_a6
    sub-float/2addr v4, v3

    nop

    nop

    nop

    :goto_a7
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    iget v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->I:F

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    cmpl-float v6, v3, v6

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    div-float/2addr v11, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_ab
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {v0, v9}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->d(F)F

    move-result v3

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_ad
    sub-float/2addr v1, v3

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {v6, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    if-nez v12, :cond_12

    nop

    nop

    goto/32 :goto_10b

    nop

    :cond_12
    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_b0
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    goto/32 :goto_79

    nop

    nop

    :goto_b2
    sub-float v5, v8, v4

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    if-gtz v9, :cond_13

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    move v14, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    if-gt v9, v15, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-static {v11, v12, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_b7
    iget v14, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->e:F

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    div-float/2addr v6, v12

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

    :goto_b9
    const/high16 v13, 0x40800000    # 4.0f

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_bb
    cmpg-float v11, v14, v11

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

    :goto_bc
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_bd
    if-gtz v12, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    :cond_15
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_be
    iget v12, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->O:F

    nop

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

    :goto_bf
    sub-float/2addr v3, v9

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    move-object v5, v8

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    iget v6, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->j:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c3
    div-float/2addr v9, v13

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_c4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    :goto_c5
    goto/16 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    iget v6, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->U:I

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_c9
    div-double v13, v13, v18

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    :goto_ca
    mul-float/2addr v6, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_cb
    sget-object v12, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_cc
    add-int v9, v10, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    :goto_cd
    cmpl-float v9, v4, v9

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_ce
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_cf
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d0
    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    add-float/2addr v1, v2

    nop

    goto/32 :goto_11e

    nop

    nop

    :goto_d2
    const/high16 v16, 0x40a00000    # 5.0f

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    if-nez v2, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    :cond_16
    goto/32 :goto_e4

    nop

    nop

    :goto_d4
    invoke-static {v11, v12, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    nop

    :goto_d5
    goto/32 :goto_fe

    nop

    nop

    nop

    :goto_d6
    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

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

    nop

    :goto_d7
    iget-boolean v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->B:Z

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    div-float/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    :goto_d9
    invoke-direct {v12, v9}, Lnxg;-><init>(F)V

    goto/32 :goto_104

    nop

    nop

    :goto_da
    iget v10, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->m:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_db
    iget v11, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ac:F

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    :goto_dc
    if-ltz v3, :cond_17

    nop

    goto/32 :goto_1c

    nop

    :cond_17
    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    move v3, v5

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    :goto_de
    iget-object v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ah:Landroid/text/TextPaint;

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_df
    iget v4, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ak:I

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_e0
    invoke-static {v11}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v11

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_e1
    move v2, v5

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    add-int v16, v5, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_e3
    iget v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->N:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->E:F

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_e5
    sub-int v9, v5, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    if-gtz v12, :cond_18

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    invoke-virtual {v3, v12}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    const/high16 v11, 0x43480000    # 200.0f

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_e9
    mul-float/2addr v9, v11

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    add-float/2addr v11, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_eb
    add-float/2addr v1, v3

    nop

    :goto_ec
    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    iget v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->j:F

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    :goto_ee
    const/high16 v13, 0x43480000    # 200.0f

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    cmpg-float v3, v4, v3

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_f0
    new-instance v12, Lnxg;

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_f1
    invoke-direct {v0, v7, v4, v1, v3}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ccb4c19b7dbd16be9d2a43125797659dm(Landroid/graphics/Canvas;FFF)V

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_f2
    int-to-float v11, v10

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    :goto_f3
    div-float/2addr v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    :goto_f4
    add-int v9, v16, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    cmpl-float v12, v4, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    mul-float/2addr v9, v6

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_f7
    int-to-float v9, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_f8
    const/high16 v12, 0x40400000    # 3.0f

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    int-to-float v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :goto_fa
    iget v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->n:F

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    iget v13, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->P:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    :goto_fc
    return-void

    nop

    nop

    :goto_fd
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    const/4 v11, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_ff
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_100
    goto/16 :goto_1a

    nop

    nop

    nop

    :goto_101
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_102
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_103
    iget v11, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->j:F

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_104
    invoke-interface {v11, v12}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    :goto_105
    int-to-float v4, v4

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_106
    invoke-virtual {v6, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    :goto_107
    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_108
    div-float/2addr v6, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_109
    invoke-static {v11, v12, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    invoke-virtual {v7, v13, v3, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    :goto_10b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_10c
    goto :goto_107

    nop

    nop

    nop

    nop

    :goto_10d
    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_10e
    iget v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->L:F

    nop

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

    :goto_10f
    iget v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ac:F

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_110
    move v4, v6

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_111
    invoke-virtual {v7, v6, v9, v11, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/32 :goto_11b

    nop

    nop

    nop

    :goto_112
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_fc

    nop

    nop

    :goto_113
    if-nez v3, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_114
    goto/16 :goto_d5

    nop

    nop

    nop

    nop

    :goto_115
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_116
    cmpl-float v12, v4, v14

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

    :goto_117
    int-to-float v9, v9

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_118
    const v0, 0x16

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_119
    add-float/2addr v4, v3

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_11a
    add-float/2addr v11, v11

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_11b
    iget-boolean v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->B:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_11c
    iget v12, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->k:I

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_11d
    cmpg-float v12, v4, v3

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->K:F

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_11f
    iget v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->E:F

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_120
    invoke-static {v3, v9}, Lnzk;->h(FI)F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_121
    iget v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->G:F

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_122
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_123
    sub-float v9, v4, v3

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

    :goto_124
    move v13, v11

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

    :goto_125
    const-string v12, "%.01f"

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_126
    invoke-virtual {v6, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_127
    float-to-int v9, v9

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_128
    const/high16 v6, 0x40c00000    # 6.0f

    nop

    goto/32 :goto_d2

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    div-float/2addr p1, p2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iget p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->j:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    float-to-int p1, p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ab:I

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->an:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    iget p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->m:I

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

    :goto_7
    mul-float/2addr p1, p2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    :goto_9
    int-to-float p2, p2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    iput p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ak:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget p2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ab:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    shr-int/lit8 p2, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_f
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_10
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    goto/32 :goto_ae

    nop

    nop

    :goto_0
    int-to-float v9, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    iget-boolean v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->r:Z

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v5, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->n:F

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_4
    if-ne v1, v6, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_83

    nop

    nop

    nop

    :goto_8
    int-to-float v9, v9

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_9
    iget v7, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->n:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_a
    cmpg-float v1, v1, v7

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_b
    iget v5, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->aa:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_c
    add-int/2addr v8, v1

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_d
    iget-object v1, v1, Lnvu;->t:Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-float/2addr v5, v1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sub-float/2addr v8, v9

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return v5

    nop

    :goto_11
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v7, v0, v1, v8}, Ljkf;-><init>(Ljava/lang/Object;FI)V

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->am:I

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_14
    iget-boolean v6, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->r:Z

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_15
    iput v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->aj:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_16
    iget-object v1, v1, Lnvp;->a:Lnvu;

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

    :goto_17
    goto/16 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->invalidate()V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v10, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->p:Landroid/widget/Scroller;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->isEnabled()Z

    move-result v4

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

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

    :goto_1e
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_1f
    iput v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->al:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->v:Lnvp;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_93

    nop

    :goto_22
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->W:F

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_24
    if-ltz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_25
    if-lt v5, v7, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_3
    goto/32 :goto_81

    nop

    nop

    nop

    :goto_26
    const/16 v9, 0x3e8

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->v:Lnvp;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    div-float/2addr v1, v7

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v6, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->u:Lryb;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_2a
    if-ltz v10, :cond_4

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget v10, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->j:F

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0, v7, v8, v9}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2e
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_2f
    int-to-float v8, v8

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_30
    new-instance v7, Ljkf;

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

    :goto_31
    const/high16 v10, 0x40000000    # 2.0f

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_32
    iput v5, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->n:F

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_67

    nop

    nop

    :goto_34
    if-eqz v1, :cond_5

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_b6

    nop

    :goto_36
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->al:I

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v1}, Lnvp;->b()V

    goto/32 :goto_b0

    nop

    nop

    :goto_39
    sub-float/2addr v5, v9

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v1, v5}, Lnpa;->a(F)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->n:F

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_3c
    iget v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->n:F

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_3d
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

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

    :goto_3e
    invoke-virtual {v1}, Lnvp;->b()V

    goto/32 :goto_76

    nop

    nop

    :goto_3f
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_40
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_41
    iget v9, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->l:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_42
    if-ge v1, v5, :cond_6

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    nop

    :goto_44
    goto/32 :goto_25

    nop

    nop

    :goto_45
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_46
    const/16 v17, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iput-boolean v4, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->r:Z

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget v9, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->m:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_49
    iget-object v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->A:Lnpa;

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_4a
    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_93

    nop

    nop

    :goto_4c
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const/high16 v6, 0x40400000    # 3.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_4e
    mul-float/2addr v1, v6

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4f
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_50
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_52
    check-cast v9, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const/16 v18, 0x0

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_55
    sub-int v5, v3, v5

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_56
    iget-object v4, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ai:Landroid/view/VelocityTracker;

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

    nop

    :goto_57
    cmpg-float v10, v10, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_58
    iget v9, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->j:F

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    return v4

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_cc

    nop

    nop

    :goto_5b
    iget v8, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->k:I

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_5c
    iput-object v4, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ai:Landroid/view/VelocityTracker;

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_56

    nop

    nop

    :goto_5e
    goto/32 :goto_5a

    nop

    :goto_5f
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_60
    const v11, 0x3d4ccccd    # 0.05f

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    float-to-int v1, v1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-eqz v6, :cond_7

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_7
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_64
    goto/16 :goto_95

    nop

    nop

    :goto_65
    goto/32 :goto_1

    nop

    nop

    :goto_66
    float-to-int v11, v7

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v5, v1, Lnvp;->a:Lnvu;

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_68
    iget v10, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

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

    :goto_69
    move/from16 v16, v1

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget v5, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->aa:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_6b
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_6c
    iget-object v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ai:Landroid/view/VelocityTracker;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_6d
    div-float/2addr v6, v10

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ai:Landroid/view/VelocityTracker;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_6f
    if-lez v0, :cond_8

    nop

    nop

    goto/32 :goto_5f

    nop

    :cond_8
    goto/32 :goto_5e

    nop

    :goto_70
    if-ne v1, v6, :cond_9

    nop

    nop

    goto/32 :goto_77

    nop

    :cond_9
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    const/4 v8, 0x7

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

    :goto_72
    if-nez v1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    :cond_a
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_74
    int-to-float v6, v9

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_75
    if-ne v1, v4, :cond_b

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_b
    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_76
    goto/16 :goto_93

    nop

    :goto_77
    goto/32 :goto_37

    nop

    nop

    :goto_78
    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_79
    div-float/2addr v1, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_7a
    sub-int v1, v2, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    neg-int v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    mul-int/2addr v1, v9

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_7f
    if-ge v8, v9, :cond_c

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_80
    iget v5, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->w:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_81
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_82
    cmpl-float v5, v5, v6

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_83
    iget v6, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->W:F

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    :goto_84
    div-float/2addr v6, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_85
    iget-object v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->v:Lnvp;

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_87
    const v1, 0x5

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iget-wide v10, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ad:J

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_89
    add-int v0, v0, v1

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

    :goto_8a
    const/4 v5, 0x0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_8b
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    const/high16 v6, 0x41c80000    # 25.0f

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

    nop

    :goto_8d
    goto :goto_93

    nop

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_8f
    add-float/2addr v5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_90
    div-float/2addr v8, v10

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    float-to-int v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {v1}, Lnvw;->n()V

    :goto_93
    goto/32 :goto_1f

    nop

    nop

    :goto_94
    invoke-virtual {v1}, Lnvp;->b()V

    :goto_95
    goto/32 :goto_49

    nop

    nop

    :goto_96
    iput-wide v5, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ad:J

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_97
    if-lez v5, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_98
    iput-boolean v5, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->r:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_99
    iput-boolean v5, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->r:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    const-wide/16 v8, 0xa

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

    :goto_9b
    iget-object v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->p:Landroid/widget/Scroller;

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_9c
    const/high16 v7, 0x43480000    # 200.0f

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_9d
    const/4 v6, 0x3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9e
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_9f
    iget v5, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_a0
    iput-boolean v5, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->r:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    sub-float/2addr v1, v8

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_a3
    sub-float/2addr v10, v9

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_a4
    iget v8, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->an:I

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

    :goto_a5
    move-object/from16 v6, p1

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    long-to-float v1, v8

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a7
    iget-object v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->v:Lnvp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_a8
    iget-object v4, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->ai:Landroid/view/VelocityTracker;

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_a9
    int-to-float v1, v1

    nop

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

    :goto_aa
    iget v5, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->am:I

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->1a36313b7ed15ba14e0acb4da569b8b7m()V

    goto/32 :goto_21

    nop

    nop

    :goto_ac
    sub-long/2addr v8, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_ad
    int-to-float v1, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_ae
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_af
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_b0
    goto/16 :goto_93

    nop

    :goto_b1
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_b2
    if-eqz v4, :cond_e

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_b3
    iget-object v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->v:Lnvp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_b5
    iput v8, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->aa:F

    nop

    nop

    :goto_b6
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {v1}, Lnvp;->b()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_b9
    if-eqz v6, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    if-ge v1, v5, :cond_10

    nop

    goto/32 :goto_93

    nop

    nop

    :cond_10
    goto/32 :goto_be

    nop

    nop

    nop

    :goto_bb
    float-to-int v2, v2

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :goto_bc
    neg-int v13, v1

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_bd
    iput v6, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

    nop

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

    :goto_be
    iget v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->aj:I

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_bf
    iput v6, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->W:F

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_c0
    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c1
    iget v9, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->aj:I

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_c2
    iget-boolean v6, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->s:Z

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    const/4 v15, 0x0

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {v1}, Lnpa;->b()V

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-virtual {v1, v9, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_c6
    invoke-virtual {v5}, Lnvu;->aq()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_c8
    mul-int/2addr v6, v10

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_c9
    iget-object v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->A:Lnpa;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_ca
    const/high16 v8, 0x447a0000    # 1000.0f

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

    nop

    nop

    :goto_cb
    const/4 v6, 0x2

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

    :goto_cc
    goto/32 :goto_5f

    nop

    nop

    :goto_cd
    sub-int v1, v2, v1

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    iget v9, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->k:I

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-virtual/range {v10 .. v18}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto/32 :goto_85

    nop

    nop

    :goto_d0
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_d1
    float-to-int v3, v3

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    iput-boolean v4, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->q:Z

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

    :goto_d5
    add-int/2addr v9, v6

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_d6
    iput v5, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->aa:F

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

    nop

    :goto_d7
    const/4 v4, 0x1

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_d8
    iget v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->l:F

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    iget v10, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->m:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop
.end method

.method public final setRotationDegree(F)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->P:F

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
    iget-boolean p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->B:Z

    nop

    nop

    nop

    goto/32 :goto_0

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
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->invalidate()V

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop
.end method
