.class public Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;
.super Landroid/view/View;
.source "PG"


# instance fields
.field public final a:Lezm;

.field public final b:Loyn;

.field public c:I

.field private final d:Lgaa;

.field private final e:I

.field private final f:F

.field private final g:F

.field private final h:F

.field private final i:F

.field private final j:Ljava/lang/String;

.field private final k:Landroid/text/TextPaint;

.field private l:Landroid/graphics/RectF;


# direct methods
.method private final declared-synchronized 23ce148e54b083367f51e25c7971761em(Landroid/graphics/Canvas;)V
    .locals 5

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x9

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

    :goto_1
    monitor-exit p0

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

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->k:Landroid/text/TextPaint;

    nop

    iget v1, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->c:I

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object v0, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->j:Ljava/lang/String;

    nop

    nop

    iget v1, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->i:F

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->k:Landroid/text/TextPaint;

    nop

    float-to-int v1, v1

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v4, v2, v3, v1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    nop

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    nop

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->l:Landroid/graphics/RectF;

    nop

    nop

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    nop

    nop

    nop

    nop

    iget v2, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->i:F

    nop

    const/high16 v3, 0x40000000    # 2.0f

    nop

    div-float/2addr v2, v3

    nop

    sub-float/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->l:Landroid/graphics/RectF;

    nop

    nop

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    nop

    nop

    nop

    int-to-float v3, v3

    nop

    sub-float/2addr v2, v3

    nop

    nop

    iget v3, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->h:F

    nop

    nop

    sub-float/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

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

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    throw p1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->c:I

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

    :goto_1
    iput p2, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->h:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2
    const p2, 0x7f0700ac

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3
    new-instance p1, Loxv;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p1, Lezm;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setColor(I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

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

    :goto_9
    invoke-static {p1, v1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

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

    :goto_b
    iput p2, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->f:F

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

    :goto_c
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const p2, 0x7f060032

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

    :goto_e
    const v1, 0xa

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

    :goto_f
    const p2, 0x7f0700a9

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p1, p0}, Lgaa;-><init>(Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p1}, Lezm;-><init>()V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_14
    const p2, 0x7f0700aa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_15
    iput p2, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->e:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_16
    iput-object p2, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->j:Ljava/lang/String;

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

    :goto_17
    const/16 v0, 0xff

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v0, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->k:Landroid/text/TextPaint;

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

    :goto_19
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->setVisibility(I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

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

    :goto_1c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_1d
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_20
    new-instance p1, Lgaa;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_23
    const/16 p1, 0x8

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_24
    invoke-direct {p1, p2}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_25
    const/4 v0, 0x0

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

    :goto_26
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_27
    iput-object p1, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->a:Lezm;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_29
    iput p2, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->g:F

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

    :goto_2a
    const/4 p2, 0x0

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

    :goto_2b
    iput-object p1, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->d:Lgaa;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2c
    const/16 v1, 0x1f4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2d
    const p2, 0x7f1400ae

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2f
    const p2, 0x7f0700ab

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_30
    new-instance v0, Landroid/text/TextPaint;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_31
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    goto/32 :goto_18

    nop

    nop

    :goto_32
    iput p2, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->i:F

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_33
    iput-object p1, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->b:Loyn;

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

    :goto_34
    const-string p1, "google-sans"

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_35
    const p2, 0x7f0700a8

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

    :goto_36
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_37
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_38
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_39
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop
.end method

.method private final declared-synchronized da190e616797844b591057d0190e7728m(Landroid/graphics/Canvas;)V
    .locals 4

    goto/32 :goto_b

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->f:F

    nop

    float-to-int v0, v0

    nop

    nop

    nop

    nop

    new-instance v1, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    iget v2, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->g:F

    nop

    nop

    nop

    float-to-int v2, v2

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    invoke-direct {v1, v3, v3, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->a:Lezm;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lezm;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->l:Landroid/graphics/RectF;

    nop

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    nop

    nop

    nop

    iget v1, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->f:F

    nop

    nop

    const/high16 v2, 0x40000000    # 2.0f

    nop

    nop

    nop

    div-float/2addr v1, v2

    nop

    nop

    nop

    nop

    sub-float/2addr v0, v1

    nop

    nop

    iget-object v1, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->l:Landroid/graphics/RectF;

    nop

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    iget v3, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->g:F

    nop

    nop

    nop

    nop

    div-float/2addr v3, v2

    nop

    nop

    nop

    sub-float/2addr v1, v3

    nop

    nop

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->a:Lezm;

    nop

    invoke-virtual {v0, p1}, Lezm;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object p1, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->a:Lezm;

    nop

    nop

    nop

    invoke-virtual {p1}, Lezm;->u()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    if-nez p1, :cond_1

    nop

    nop

    iget-object p1, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->d:Lgaa;

    nop

    sget-object v0, Lsed;->a:Lsdr;

    nop

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    iput-wide v0, p1, Lgaa;->a:J

    nop

    nop

    iget-object p1, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->a:Lezm;

    nop

    const/4 v0, 0x2

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Lezm;->t(I)V

    iget-object p1, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->a:Lezm;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lezm;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
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

    :goto_5
    goto/32 :goto_e

    nop

    nop

    :goto_6
    monitor-exit p0

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
    throw p1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x6

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()Loyd;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->b:Loyn;

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    :goto_3
    return-object v0

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->b:Loyn;

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

    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->setVisibility(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(Landroid/graphics/RectF;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iput-object p1, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->l:Landroid/graphics/RectF;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

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
    monitor-exit p0

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

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->23ce148e54b083367f51e25c7971761em(Landroid/graphics/Canvas;)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->da190e616797844b591057d0190e7728m(Landroid/graphics/Canvas;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method protected final onFinishInflate()V
    .locals 6

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v4, 0x1e4

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Lezb;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v4, 0x0

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_7
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    new-array v2, v2, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_9
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-array v2, v2, [Ljava/lang/Object;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v4, 0x1e6

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->a:Lezm;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    aput-object p0, v2, v4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    invoke-static {v4, v1, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x1

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

    :goto_10
    const/4 v5, 0x1

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

    :goto_11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

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

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->a:Lezm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_16
    const v1, 0x7f13003e

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_17
    return-void

    nop

    :goto_18
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    aput-object v0, v2, v4

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, v0, Lezs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v4, 0x0

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

    :goto_1e
    aput-object v3, v2, v5

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v4, v0, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_17

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

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_21
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_22
    invoke-static {v4, v5, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x1

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

    :goto_24
    const/4 v2, 0x2

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

    :goto_25
    aput-object v0, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_27
    const/16 v4, 0x1e5

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v0, Lezs;

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

    :goto_29
    iget-object p0, p0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->d:Lgaa;

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
.end method
