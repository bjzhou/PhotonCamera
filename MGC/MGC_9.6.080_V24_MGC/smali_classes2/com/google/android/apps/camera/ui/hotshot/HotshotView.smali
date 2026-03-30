.class public Lcom/google/android/apps/camera/ui/hotshot/HotshotView;
.super Lhsd;
.source "PG"


# static fields
.field public static final a:Lsdb;

.field private static final r:I

.field private static final s:I


# instance fields
.field private final A:Landroid/graphics/Paint;

.field private final B:Landroid/graphics/Paint;

.field private final C:Landroid/graphics/Paint;

.field private final D:Landroid/graphics/Paint;

.field private final E:Landroid/graphics/Paint;

.field private final F:Lezm;

.field private final G:Lezm;

.field private final H:Lnpb;

.field private final I:Lfbv;

.field private final J:Lfbv;

.field private final K:Lfbv;

.field private L:Ljava/util/List;

.field private M:Lezb;

.field private N:Lezb;

.field private O:Lezb;

.field private P:Lezb;

.field private Q:Lezb;

.field private R:Lffl;

.field private S:Lffl;

.field private T:Lffl;

.field private U:J

.field private V:F

.field private volatile W:Landroid/graphics/Rect;

.field public final b:Landroid/graphics/RectF;

.field public c:Lnac;

.field public d:Z

.field public f:F

.field public g:Lnan;

.field public h:Landroid/graphics/Rect;

.field public i:I

.field public j:Z

.field public k:Loyn;

.field public volatile l:Ljava/util/List;

.field public volatile m:Ljava/util/Map;

.field public volatile n:Ljava/util/List;

.field public volatile o:Lnai;

.field public volatile p:Landroid/graphics/RectF;

.field public q:Z

.field private final t:Landroid/graphics/Paint;

.field private final u:Landroid/graphics/Paint;

.field private final v:Landroid/graphics/Paint;

.field private final w:Landroid/graphics/Paint;

.field private final x:Landroid/graphics/Paint;

.field private final y:Landroid/graphics/Paint;

.field private final z:Landroid/graphics/Paint;


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m(Landroid/graphics/Canvas;Lmzf;Landroid/graphics/RectF;ZZ)V
    .locals 6

    goto/32 :goto_98

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->3fd9578e124c68aa49885b22b61b4ec8m()V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2, p5, v4, v5}, Lezm;->g(Lfbv;Ljava/lang/Object;Lffl;)V

    goto/32 :goto_4

    nop

    nop

    :goto_4
    iget-object p5, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->J:Lfbv;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz p3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :cond_0
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Lnan;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_7
    goto/16 :goto_60

    nop

    nop

    :goto_8
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->W:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    int-to-float v0, v0

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

    :goto_b
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->da190e616797844b591057d0190e7728m()F

    move-result p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_c
    invoke-virtual {p2, p5}, Lezm;->v(Lezb;)Z

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1, p4, p3}, Lfdc;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :goto_e
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget p3, p2, Lezm;->l:I

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

    :goto_12
    move v3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_13
    iget-object v5, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->S:Lffl;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_14
    add-float/2addr p5, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_15
    iget-object p3, p2, Lezm;->a:Lezb;

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

    :goto_16
    sub-float/2addr p5, v0

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    :goto_18
    goto/32 :goto_80

    nop

    nop

    :goto_19
    iget-boolean p3, p2, Lezm;->m:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1e
    iget v1, p3, Landroid/graphics/RectF;->left:F

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v4, Lezr;->l:Landroid/graphics/PointF;

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

    :goto_21
    iget-object p5, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->O:Lezb;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p2, v3}, Lnan;->equals(Ljava/lang/Object;)Z

    move-result p2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_23
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->da190e616797844b591057d0190e7728m()F

    move-result p4

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_24
    iget-object p2, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->g:Lnan;

    nop

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

    nop

    :goto_25
    iget p0, p3, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_26
    move v0, v2

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p5, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->K:Lfbv;

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p2, p5, v4, v5}, Lezm;->g(Lfbv;Ljava/lang/Object;Lffl;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    :goto_2b
    iget p5, p5, Landroid/util/DisplayMetrics;->density:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_2c
    iget-object p5, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->N:Lezb;

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p5, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->I:Lfbv;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2f
    const/4 v1, 0x1

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_30
    invoke-virtual {p1, p4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_31
    if-ne v1, p4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->W:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_33
    div-float p5, v0, p5

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_34
    invoke-virtual {p2}, Lmzf;->a()Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->3fd9578e124c68aa49885b22b61b4ec8m()V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-nez p5, :cond_4

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

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

    :goto_38
    sget-object v4, Lezr;->k:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p2, p5, v4, v5}, Lezm;->g(Lfbv;Ljava/lang/Object;Lffl;)V

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_3a
    add-float/2addr v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v3, :cond_5

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_5
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3c
    if-eqz p2, :cond_6

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_6
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_66

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object p5, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->J:Lfbv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

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

    :goto_41
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_42
    invoke-direct {p2}, Lezm;-><init>()V

    goto/32 :goto_84

    nop

    nop

    :goto_43
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_45
    new-instance p2, Lezm;

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-ne v1, p4, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_47
    iget-object p5, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->Q:Lezb;

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

    :goto_48
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    :cond_8
    :goto_49
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_4a
    iput-boolean v2, p2, Lezm;->n:Z

    nop

    nop

    :goto_4b
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p2, v0}, Lezm;->r(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v5, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->R:Lffl;

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object p5, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->I:Lfbv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_4f
    invoke-virtual {p2, p5, v4, v5}, Lezm;->g(Lfbv;Ljava/lang/Object;Lffl;)V

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object p5, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->p:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_53
    div-float/2addr p5, v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_55
    const/high16 v0, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_56
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->g:Lnan;

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

    :goto_57
    invoke-virtual {p4, p5, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    goto/32 :goto_52

    nop

    nop

    :goto_58
    invoke-virtual {p2, p5, v4, v5}, Lezm;->g(Lfbv;Ljava/lang/Object;Lffl;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_59
    sget-object v1, Lnan;->e:Lnan;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5a
    sget-object v1, Lnan;->d:Lnan;

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

    :goto_5b
    sget-object v4, Lezr;->k:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    goto :goto_60

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p2, p5}, Lezm;->v(Lezb;)Z

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {p2, v0}, Lezm;->r(I)V

    :goto_60
    goto/32 :goto_74

    nop

    nop

    :goto_61
    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result p5

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_62
    move v3, v1

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_63
    if-nez v0, :cond_9

    nop

    goto/32 :goto_87

    nop

    :cond_9
    :goto_64
    goto/32 :goto_86

    nop

    nop

    nop

    :goto_65
    move v3, v2

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_67
    sget-object v4, Lezr;->l:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_68
    sub-float/2addr v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_69
    invoke-virtual {p4, p5, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/32 :goto_97

    nop

    nop

    :goto_6a
    iget-object v5, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->S:Lffl;

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

    :goto_6b
    sget-object v4, Lezr;->s:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_6c
    if-nez p0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :cond_a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_6d
    if-nez p2, :cond_b

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_b
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_6e
    div-float/2addr v0, v1

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/16 :goto_4b

    nop

    :goto_70
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    new-instance p2, Lezm;

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

    :goto_72
    sget-object v4, Lezr;->s:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_73
    iget-object p5, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->P:Lezb;

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

    :goto_74
    new-instance p4, Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    move v3, v2

    nop

    :goto_76
    goto/32 :goto_c

    nop

    nop

    :goto_77
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iput-object p3, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->p:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_79
    goto :goto_76

    nop

    nop

    :goto_7a
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {p2, p4}, Lezm;->s(F)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7f
    iget-object p5, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->K:Lfbv;

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_80
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_81
    invoke-virtual {p2, p5, v4, v5}, Lezm;->g(Lfbv;Ljava/lang/Object;Lffl;)V

    goto/32 :goto_3f

    nop

    nop

    :goto_82
    int-to-float p0, p0

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

    :goto_83
    invoke-virtual {p2, p4}, Lezm;->s(F)V

    goto/32 :goto_7

    nop

    nop

    :goto_84
    if-nez p5, :cond_c

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_85
    const v1, 0xb

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_86
    return-void

    nop

    nop

    nop

    nop

    :goto_87
    goto/32 :goto_78

    nop

    nop

    nop

    :goto_88
    if-nez p3, :cond_d

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {p2}, Lezm;->j()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_8a
    div-float/2addr v1, v0

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_8b
    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {p2, p1, p0}, Lezm;->p(Landroid/graphics/Canvas;Lfdd;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object v5, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->R:Lffl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8e
    iget-object v5, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->T:Lffl;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_8f
    goto :goto_94

    nop

    nop

    nop

    :goto_90
    goto/32 :goto_93

    nop

    nop

    :goto_91
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->p:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_92
    sget-object v3, Lnan;->e:Lnan;

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_93
    move v0, v2

    nop

    nop

    nop

    nop

    :goto_94
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_95
    invoke-direct {p2}, Lezm;-><init>()V

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_96
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->W:Landroid/graphics/Rect;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_97
    iget-object p0, p2, Lezm;->k:Lfdd;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_98
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_99
    invoke-virtual {v0, v1}, Lnan;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_9a
    const/4 v2, 0x0

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

    :goto_9b
    const/16 v0, 0x14

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

    :goto_9c
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->g:Lnan;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_9d
    if-nez v3, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    iget-object v5, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->T:Lffl;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop
.end method

.method private final 19e596a3e324281407eb5c11093c0152m(Landroid/graphics/Canvas;)V
    .locals 8

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_62

    nop

    :goto_1
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, v1, Lmzd;->d:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :cond_0
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v2, v1, Lmzd;->f:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->y:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    :cond_1
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v2, v4}, Lmzf;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_b
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v2, v3}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->o(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_d
    iget-object v6, v6, Lmzf;->al:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->v:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    :goto_10
    iget v1, v1, Landroid/graphics/Point;->y:I

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v2, v1, Lmzd;->d:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v3

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v2, v5}, Lnan;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v5, Lnan;->c:Lnan;

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

    nop

    :goto_16
    if-nez v1, :cond_2

    nop

    goto/32 :goto_6d

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->n:Ljava/util/List;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

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

    :goto_1a
    invoke-static {v2, v3, p1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->m(Landroid/graphics/PointF;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v4}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->p(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v4

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_1c
    iget v5, v4, Landroid/graphics/RectF;->left:F

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_1f
    invoke-static {v2, v4, p1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->m(Landroid/graphics/PointF;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1, v2, v5, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v5, v5, Lmzf;->al:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_4

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_27

    nop

    :goto_24
    check-cast v1, Lmzd;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_25
    iget-object v6, v1, Lmzd;->a:Lmzf;

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

    :goto_26
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

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

    :goto_27
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_18

    nop

    nop

    :goto_29
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->g:Lnan;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v7, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->B:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_2b
    invoke-static {v2, v3, p1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->m(Landroid/graphics/PointF;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {p0, v3, v2}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->33b3102b6558811a7b7629a1e8e59bd2m(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

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

    :goto_2d
    if-eqz v5, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    :cond_5
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2e
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_2f
    const v3, 0x3f4ccccd    # 0.8f

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_30
    iget v6, v4, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->23ce148e54b083367f51e25c7971761em(FF)Landroid/graphics/PointF;

    move-result-object v2

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

    :goto_32
    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->23ce148e54b083367f51e25c7971761em(FF)Landroid/graphics/PointF;

    move-result-object v2

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    check-cast v1, Landroid/hardware/camera2/params/Face;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->y:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const v0, 0xf

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_39
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->y:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_3a
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->w:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_3b
    return-void

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_20

    nop

    nop

    :goto_3d
    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->23ce148e54b083367f51e25c7971761em(FF)Landroid/graphics/PointF;

    move-result-object v2

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->n:Ljava/util/List;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_3f
    iget v5, v4, Landroid/graphics/RectF;->left:F

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

    nop

    :goto_40
    invoke-direct {p0, v2, v1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->23ce148e54b083367f51e25c7971761em(FF)Landroid/graphics/PointF;

    move-result-object v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_87

    nop

    nop

    :goto_45
    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_47
    if-nez v2, :cond_6

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

    :cond_6
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_49
    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

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

    :goto_4a
    int-to-float v3, v3

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_4b
    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

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

    :goto_4c
    invoke-direct {p0, v4, v2}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->33b3102b6558811a7b7629a1e8e59bd2m(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-static {v2, v3, p1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->m(Landroid/graphics/PointF;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget v2, v2, Landroid/graphics/Point;->x:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_4f
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    :cond_7
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_50
    invoke-direct {p0, v2}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->1a36313b7ed15ba14e0acb4da569b8b7m(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_51
    const-string v6, "%s(%s)"

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_52
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v2, v1, Lmzd;->f:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget v2, v2, Landroid/graphics/Point;->x:I

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_55
    invoke-static {v1, v2, p1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->m(Landroid/graphics/PointF;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_58
    iget v3, v3, Landroid/graphics/Point;->y:I

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    add-int v0, v0, v1

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v2, v5}, Lnan;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_5b
    invoke-virtual {p0, v4, v3}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v3

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_5c
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_5d
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->g:Lnan;

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v5, v1, Lmzd;->a:Lmzf;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_60
    sget-object v4, Lmzf;->b:Lmzf;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v2, v2, Lmzf;->al:Ljava/lang/String;

    nop

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v1, v1, Lmzd;->j:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_64
    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v2

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

    :goto_65
    iget-object v2, v1, Lmzd;->a:Lmzf;

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget v3, v3, Landroid/graphics/Point;->y:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_68
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_69
    iget v2, v2, Landroid/graphics/Point;->x:I

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_6a
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->y:Landroid/graphics/Paint;

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

    nop

    nop

    :goto_6b
    iget-object v6, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->B:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    goto/16 :goto_36

    nop

    :goto_6d
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget-object v4, v1, Lmzd;->d:Landroid/graphics/RectF;

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_70
    invoke-direct {p0, v2, v4}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->23ce148e54b083367f51e25c7971761em(FF)Landroid/graphics/PointF;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_71
    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_72
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->w:Landroid/graphics/Paint;

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
    iget-object v2, v1, Lmzd;->f:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v2

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

    :goto_75
    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v2

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_76
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_77
    int-to-float v2, v2

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

    :goto_78
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {p1, v2, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_7b
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_7c
    if-nez v2, :cond_8

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

    :cond_8
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_7d
    invoke-static {v5, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    :goto_7e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {p0, v4, v3}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v4

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

    :goto_80
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_81
    iget-object v2, v1, Lmzd;->a:Lmzf;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_82
    sget-object v5, Lnan;->c:Lnan;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_83
    goto/16 :goto_6d

    nop

    nop

    :goto_84
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_85
    iget-object v4, v1, Lmzd;->d:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_87
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->t:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    :goto_88
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_89
    iget-object v4, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->y:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 1a36313b7ed15ba14e0acb4da569b8b7m(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    new-instance v0, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_4

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

    :goto_4
    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object p0

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
.end method

.method private final 23ce148e54b083367f51e25c7971761em(FF)Landroid/graphics/PointF;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aput p1, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    new-instance p0, Landroid/graphics/PointF;

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

    :goto_2
    aget p2, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    new-instance p0, Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_6
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_8
    aget p1, v0, p1

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

    :goto_9
    const v0, 0x8

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lpdl;->f()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_1b

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lhsd;->a()Landroid/graphics/Matrix;

    move-result-object p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_10
    aput p2, v0, p1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lhsd;->e:Lpdl;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_11

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    :goto_15
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p1, 0x1

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

    :goto_18
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop

    :goto_1a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x0

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

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method private final 33b3102b6558811a7b7629a1e8e59bd2m(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 7

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v5, p1, Landroid/graphics/RectF;->top:F

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_1
    sub-float/2addr v3, v5

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

    :goto_2
    add-float/2addr v0, p0

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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
    if-lez p2, :cond_0

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

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

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
    iget-boolean p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->q:Z

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

    :goto_7
    if-gtz p1, :cond_1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v0, p2, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_9
    iget v2, p1, Landroid/graphics/RectF;->right:F

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_a
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x12

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    div-float/2addr v2, v3

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    :goto_10
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_2

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3e

    nop

    :goto_12
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

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

    :goto_13
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

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

    :goto_14
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_15
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

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

    :goto_16
    goto/32 :goto_3f

    nop

    nop

    :goto_17
    sub-float/2addr p2, p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    cmpl-float v0, v0, v2

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v0, p2, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1b
    sub-float/2addr v4, p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1c
    sub-float/2addr v5, v6

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

    :goto_1d
    cmpl-float v0, v0, v2

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1e
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez p0, :cond_3

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :cond_3
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_10

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_22
    iget v4, p1, Landroid/graphics/RectF;->left:F

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

    :goto_23
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_24
    iget v6, p1, Landroid/graphics/RectF;->right:F

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_25
    return v1

    nop

    nop

    :goto_26
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

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

    :goto_28
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_29
    const/high16 v3, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    nop

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
    iget v2, p1, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_2c
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2d
    if-gtz p0, :cond_5

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_51

    nop

    nop

    :goto_2f
    const p1, 0x3ccccccd    # 0.025f

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_30
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_31
    const/high16 p0, -0x40c00000    # -0.75f

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v1, 0x1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_35
    iget v3, p2, Landroid/graphics/RectF;->left:F

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_36
    cmpl-float p1, p1, v3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_37
    div-float/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_38
    cmpl-float p2, p2, v3

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_39
    const/high16 p2, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget v4, p2, Landroid/graphics/RectF;->top:F

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

    :goto_3b
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

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

    :goto_3c
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3d
    iget v5, p2, Landroid/graphics/RectF;->right:F

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

    :goto_3e
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_40
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_41
    sub-float/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_43
    cmpl-float v0, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_44
    iget v1, p1, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_45
    return v1

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_47
    sub-float/2addr v2, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_48
    cmpg-float p0, p0, p1

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-lez p0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :cond_8
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    cmpl-float p0, p0, p1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_4b
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const/high16 p2, 0x3f400000    # 0.75f

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_47

    nop

    nop

    :goto_4e
    cmpl-float v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_4f
    sub-float/2addr v4, v5

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_50
    if-eqz v0, :cond_9

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

    :cond_9
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget v0, p2, Landroid/graphics/RectF;->top:F

    nop

    goto/32 :goto_2b

    nop

    nop
.end method

.method private final 3fd9578e124c68aa49885b22b61b4ec8m()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

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

    :goto_5
    iput v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->V:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    :goto_9
    const v1, 0x2

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

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    iput-wide v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->U:J

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
.end method

.method private final 51550bab6b6440a4fd45f825c221b363m(F)V
    .locals 4

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->M:Lezb;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p0}, Lezm;->setBounds(Landroid/graphics/Rect;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v2, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1, v2}, Lezm;->setBounds(Landroid/graphics/Rect;)V

    goto/32 :goto_c

    nop

    nop

    :goto_8
    int-to-float v3, v3

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

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->M:Lezb;

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

    :goto_b
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->F:Lezm;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->G:Lezm;

    nop

    nop

    goto/32 :goto_18

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

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_e
    invoke-virtual {p0}, Lezm;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x10

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

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    div-float/2addr p1, v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

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

    :goto_14
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, v0, Lezb;->g:Landroid/graphics/Rect;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->F:Lezm;

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

    :goto_19
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    mul-float/2addr v3, p1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    div-float/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x14

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

    :goto_1e
    return-void

    nop

    :goto_1f
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v2, v3, v3, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_7

    nop

    nop

    :goto_21
    const/4 v3, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/high16 v0, 0x43960000    # 300.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_23
    float-to-int p1, v3

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

    :goto_24
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_25
    mul-float/2addr v0, p1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_26
    float-to-int v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop
.end method

.method private final 7ecc92917e9c4556cc19f457ddc41af8m(Lnan;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v2, v4, p0, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1
    const/high16 v0, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4
    add-float/2addr p2, p0

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

    :goto_5
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

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

    :goto_6
    sub-float/2addr v1, p0

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_7
    div-float/2addr p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_8
    div-float/2addr v1, v0

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_a
    mul-float/2addr p1, v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v0}, Lnan;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_e
    move v3, p1

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    sub-float/2addr v0, p0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_11
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_12
    sub-float/2addr v2, v3

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_13
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_14
    sub-float/2addr v4, p1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x15

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p1, v0, v1, v2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v0, Lnan;->e:Lnan;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_18
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_19
    mul-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x3f5c6a7f    # 0.861f

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1b
    add-float/2addr p2, p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1c
    return-object v0

    nop

    nop

    :goto_1d
    goto/32 :goto_2c

    nop

    nop

    :goto_1e
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v2, 0x3f824dd3    # 1.018f

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

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

    :goto_21
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

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

    :goto_22
    move v3, v1

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

    :goto_23
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

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

    :goto_24
    div-float/2addr p1, v0

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

    :goto_25
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_26
    rem-int/lit16 p0, p0, 0xb4

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p0

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

    nop

    :goto_28
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

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
    iget p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2a
    new-instance p1, Landroid/graphics/RectF;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2d
    add-float/2addr p0, v3

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_37

    nop

    :goto_30
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_e

    nop

    nop

    :goto_32
    add-float/2addr v2, p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_35
    return-object p1

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move p1, v1

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3c
    new-instance v0, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_3d
    const v0, 0xe

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

    :goto_3e
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v1, 0x2e

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    sput v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->r:I

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

    :goto_2
    sput-object v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->a:Lsdb;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v0, 0x36

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

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

    :goto_6
    const/16 v1, 0x6b

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_7
    const/16 v3, 0xe8

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v3, 0xdc

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    const-string v0, "com.google.android.apps.camera.ui.hotshot.HotshotView"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

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

    :goto_b
    const v1, 0xf

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    const/16 v2, 0x80

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    goto/32 :goto_15

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_14
    return-void

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    const/16 v0, 0xc8

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_17
    sput v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->s:I

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

    :goto_18
    const/16 v2, 0xff

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Landroid/graphics/Paint;

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

    :goto_1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->q:Z

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->B:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_4
    new-instance p1, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_5
    new-instance p1, Lezm;

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

    :goto_6
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->d:Z

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->n:Ljava/util/List;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->A:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_a
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_b
    new-instance p1, Landroid/graphics/Rect;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "mainSize"

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_d
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_e
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->m:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->J:Lfbv;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_11
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p1, p2}, Lfbv;-><init>([Ljava/lang/String;)V

    goto/32 :goto_63

    nop

    nop

    :goto_13
    new-instance p1, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p1, p2}, Lnpb;-><init>(I)V

    goto/32 :goto_31

    nop

    nop

    :goto_17
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->l:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_18
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_19
    new-instance p1, Lnpb;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v0, v1}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v1, "main"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_1e
    iput-wide v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->U:J

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->o:Lnai;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_21
    new-instance p1, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_22
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->k:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_23
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->x:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_24
    new-instance p1, Landroid/graphics/Paint;

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

    :goto_25
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_26
    new-instance p1, Lfbv;

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

    :goto_27
    sget-object v0, Lsbh;->a:Lryb;

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

    :goto_28
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_29
    const-string v0, "pulse"

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->t:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2c
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->I:Lfbv;

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_2d
    new-instance p2, Landroid/graphics/Rect;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput p2, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->V:F

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_2f
    invoke-direct {p1, p2}, Lfbv;-><init>([Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->f:F

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

    :goto_31
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->H:Lnpb;

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

    :goto_32
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->c:Lnac;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_72

    nop

    nop

    :goto_34
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_36
    rem-int v0, v0, v1

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_37
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->v:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_38
    const-string p2, "mainShape"

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_39
    invoke-direct {p0, p1, p2}, Lhsd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_3a
    new-instance p1, Landroid/graphics/Paint;

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

    :goto_3b
    invoke-direct {p1, p2}, Lfbv;-><init>([Ljava/lang/String;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    filled-new-array {v1, p2, v0}, [Ljava/lang/String;

    move-result-object p2

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_3d
    iput p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->i:I

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    sget-object v0, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3f
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->G:Lezm;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    new-instance v0, Landroid/graphics/RectF;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_41
    new-instance v0, Loxv;

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

    :goto_42
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->C:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_44
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->c()V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_47
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->z:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_48
    sget-object v0, Lsbh;->a:Lryb;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_49
    sget v0, Lryb;->d:I

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_4a
    filled-new-array {v0, v1, p2}, [Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    new-instance p1, Landroid/graphics/Paint;

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

    :goto_4c
    const/4 p2, 0x3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4d
    new-instance p1, Lezm;

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

    nop

    :goto_4e
    invoke-direct {p1}, Lezm;-><init>()V

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_4f
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->h:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_50
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->y:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_51
    const-string p2, "pulseStroke"

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_52
    invoke-direct {p2, p1, p1, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    :cond_0
    goto/32 :goto_45

    nop

    :goto_54
    invoke-static {v0}, Lnai;->a(Lryb;)Lnai;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_55
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_56
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_57

    nop

    nop

    :goto_57
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->u:Landroid/graphics/Paint;

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const/4 p2, 0x0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->g:Lnan;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5a
    filled-new-array {v0, v1, p2}, [Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5b
    sget-object p1, Lnan;->a:Lnan;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_5c
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->w:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5d
    const/high16 p1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_5e
    new-array v1, p1, [Lnak;

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

    :goto_5f
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->p:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_60
    new-instance p1, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_61
    const v0, 0x10

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_62
    invoke-direct {v0, p2, p2, p2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->K:Lfbv;

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_64
    new-instance p1, Landroid/graphics/Paint;

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

    :goto_65
    new-instance p1, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_66
    const-string p2, "pulseSize"

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_67
    new-instance p1, Landroid/graphics/Paint;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    new-instance p1, Lfbv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_69
    new-instance p1, Landroid/graphics/Paint;

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

    :goto_6a
    const v1, 0x1d

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

    :goto_6b
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->F:Lezm;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_6c
    new-instance p1, Lfbv;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-direct {p1}, Lezm;-><init>()V

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    sget-object p1, Lnac;->f:Lnac;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_6f
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->W:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_70
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_71
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_72
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->E:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_73
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->D:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_74
    new-instance p1, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_75
    const-string v1, "pulseShape"

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

    :goto_76
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->j:Z

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm(Lnaj;)Landroid/graphics/RectF;
    .locals 5

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v3, 0xb4

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

    :goto_5
    check-cast p0, Lnpb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lmzd;->d:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p1, Lnaj;->a:Lmzd;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v0, v0, Lmzd;->b:I

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p1, Lnaj;->a:Lmzd;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_10
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->m:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    const v1, 0x1a

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
    goto/16 :goto_7

    nop

    nop

    :goto_15
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    if-nez p0, :cond_1

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

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v3, p0, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_18
    check-cast p0, Landroid/graphics/RectF;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m()F
    .locals 4

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->V:F

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    :goto_3
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_d

    nop

    :goto_4
    iget-wide v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->U:J

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

    :goto_5
    long-to-float v0, v0

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

    :goto_6
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    sub-long/2addr v0, v2

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

    :goto_8
    const v1, 0x1a

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_9
    iget v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->V:F

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    iput v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->V:F

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_e

    nop

    :goto_10
    return v0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_13
    cmpl-float v2, v0, v1

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

    :goto_14
    iput-wide v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->U:J

    nop

    nop

    :goto_15
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16
    cmp-long v0, v0, v2

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

    :goto_17
    return v1

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_19
    cmpl-float v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v2}, Lezb;->a()F

    move-result v2

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

    nop

    :goto_1b
    add-int v0, v0, v1

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

    nop

    :goto_1c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

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

    :goto_1d
    div-float/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1e
    iget-wide v2, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->U:J

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1f
    if-gez v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_21
    const v0, 0x1f

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

    :goto_22
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->Q:Lezb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop
.end method

.method private static final m(Landroid/graphics/PointF;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 16

    goto/32 :goto_19

    nop

    nop

    :goto_0
    move-object/from16 v8, p1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    const/high16 v9, 0x41a00000    # 20.0f

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_3
    iget v13, v0, Landroid/graphics/PointF;->x:F

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

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v11, v0, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_7
    iget v1, v0, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    const v1, 0x1b

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

    :goto_9
    iget v7, v0, Landroid/graphics/PointF;->y:F

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
    iget v5, v0, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_b
    move-object/from16 v10, p2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-float v14, v0, v9

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    add-float v12, v1, v2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    iget v0, v0, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/high16 v2, -0x3e600000    # -20.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-float v6, v1, v9

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move-object/from16 v3, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    :goto_16
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_17
    iget v1, v0, Landroid/graphics/PointF;->y:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_18
    move-object/from16 v15, p1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_19
    const v0, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_4

    nop

    nop

    :goto_1b
    iget v1, v0, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1d
    add-float v4, v1, v2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method private static final o(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    div-float/2addr v1, v2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xf

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    sub-float/2addr p1, v3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    sub-float/2addr p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput p1, v0, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_a
    cmpl-float v1, p1, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    add-float/2addr p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    iput p1, v0, Landroid/graphics/RectF;->top:F

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_0

    nop

    goto/32 :goto_1b

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object v0

    nop

    nop

    :goto_11
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_12
    mul-float/2addr v1, p1

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
    iput p1, v0, Landroid/graphics/RectF;->left:F

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
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_16
    div-float/2addr v3, v2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_17
    mul-float/2addr v3, p1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1a
    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

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

    nop

    nop

    :goto_1d
    add-float/2addr p0, v3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1e
    const/high16 v2, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_20
    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

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

    nop

    :goto_22
    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method private static final p(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-static {v0, p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->o(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

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
    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Landroid/graphics/RectF;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const p0, 0x3fcccccd    # 1.6f

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final b(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;
    .locals 1

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lhsd;->a()Landroid/graphics/Matrix;

    move-result-object p1

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
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b:Landroid/graphics/RectF;

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

    :goto_7
    new-instance v0, Landroid/graphics/RectF;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p0, Landroid/graphics/RectF;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, p1, p1, p1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Lpdl;->f()Z

    move-result v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object v0

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lhsd;->e:Lpdl;

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
.end method

.method public final c()V
    .locals 12

    goto/32 :goto_44

    nop

    nop

    :goto_0
    sget-object v3, Lnac;->d:Lnac;

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

    :goto_1
    new-instance v8, Lnal;

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->z:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    :goto_3
    sget v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->s:I

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v4, Landroid/graphics/Paint;

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->x:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->t:Landroid/graphics/Paint;

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_107

    nop

    nop

    :goto_d
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->g:Lnan;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_f
    sget-object v1, Lnan;->e:Lnan;

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

    :goto_10
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->B:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_cf

    nop

    nop

    :goto_12
    invoke-static {v7}, Lnnr;->b(F)I

    move-result v3

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

    :goto_13
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

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

    :goto_14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_a6

    nop

    nop

    :goto_15
    new-instance v1, Lkzc;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_16
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->A:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_17
    const/4 v9, 0x1

    nop

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

    :goto_18
    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_0

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_0
    goto/32 :goto_3f

    nop

    :goto_1a
    invoke-virtual {v0, v3}, Lnac;->a(Z)F

    move-result v0

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    :cond_1
    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v4, -0x1

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    :goto_1e
    sget-object v10, Lnan;->e:Lnan;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_1f
    new-instance v2, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_f8

    nop

    nop

    :goto_21
    new-instance v8, Lnal;

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

    :goto_22
    if-nez v0, :cond_2

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->D:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->g:Lnan;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_25
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->y:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->y:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_29
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->C:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->u:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/16 v2, 0xb

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

    :goto_2d
    sget-object v10, Lnan;->c:Lnan;

    nop

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

    nop

    :goto_2e
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_30
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->v:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_31
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->w:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {v8, v3, v4}, Lnal;-><init>(Lnac;Landroid/graphics/Paint;)V

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->B:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->C:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0}, Lezm;->j()V

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_38
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->v:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->C:Landroid/graphics/Paint;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->z:Landroid/graphics/Paint;

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

    :goto_3c
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->t:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :goto_3d
    new-instance v4, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->x:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const v0, 0x10

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_45
    sget-object v3, Lnac;->a:Lnac;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_6d

    nop

    nop

    :goto_47
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_10c

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_df

    nop

    nop

    :goto_49
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->t:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v0, v10}, Lnan;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->D:Landroid/graphics/Paint;

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

    :goto_4d
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v0, v1}, Lnan;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->F:Lezm;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_50
    invoke-virtual {v0, v1}, Lnan;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    return-void

    nop

    nop

    :goto_52
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_aa

    nop

    nop

    :goto_54
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_55
    const/high16 v3, -0x10000

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_56
    sget-object v0, Lnac;->c:Lnac;

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->u:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_65

    nop

    nop

    :goto_5a
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->t:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_5b
    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const/high16 v6, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const/high16 v2, 0x42200000    # 40.0f

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_5e
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-direct {v8, v3, v4}, Lnal;-><init>(Lnac;Landroid/graphics/Paint;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->w:Landroid/graphics/Paint;

    nop

    nop

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

    :goto_61
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->G:Lezm;

    nop

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

    :goto_62
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_65
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->B:Landroid/graphics/Paint;

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    new-instance v11, Lnal;

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_30

    nop

    nop

    :goto_69
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_b9

    nop

    nop

    :goto_6a
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-static {v6}, Lnnr;->b(F)I

    move-result v2

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

    :goto_6c
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->D:Landroid/graphics/Paint;

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

    :goto_6e
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_6f
    goto/16 :goto_b5

    nop

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_71
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->L:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_72
    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_73
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->E:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_74
    sget-object v0, Lnac;->d:Lnac;

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_76
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_77
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_78
    int-to-float v2, v2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->t:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_7b
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4f

    nop

    nop

    :goto_7c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_7d
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7e
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {p0}, Lezm;->j()V

    :goto_80
    goto/32 :goto_9a

    nop

    nop

    :goto_81
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->E:Landroid/graphics/Paint;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->w:Landroid/graphics/Paint;

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_83
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->B:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->L:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_85
    invoke-static {v0, v1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_86
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_87
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->t:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    :goto_88
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    :cond_4
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_89
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->z:Landroid/graphics/Paint;

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

    :goto_8a
    cmpl-float v0, v0, v4

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    if-eqz v0, :cond_5

    nop

    goto/32 :goto_b5

    nop

    :cond_5
    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_8d
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->g:Lnan;

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_8e
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->D:Landroid/graphics/Paint;

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

    :goto_8f
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->w:Landroid/graphics/Paint;

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

    :goto_90
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_91
    invoke-static {v6}, Lnnr;->b(F)I

    move-result v0

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->B:Landroid/graphics/Paint;

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_93
    const/16 v4, -0x100

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_94
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->B:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_95
    sget-object v10, Lnan;->d:Lnan;

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->L:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_99
    new-instance v3, Lkzc;

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

    nop

    :goto_9a
    return-void

    nop

    nop

    :goto_9b
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9d
    goto/32 :goto_74

    nop

    nop

    :goto_9e
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->B:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

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

    nop

    :goto_a1
    cmpl-float v0, v0, v4

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_a8

    nop

    nop

    :goto_a3
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    const v3, -0xffff01

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_a5
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->L:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_a7
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->g:Lnan;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_a8
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->A:Landroid/graphics/Paint;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_aa
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->x:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-direct {v1, v2}, Lkzc;-><init>(I)V

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_ac
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->B:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_ad
    sget v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->r:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b0
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    new-instance v11, Lnal;

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-direct {v3, v1, v2}, Lnal;-><init>(Lnac;Landroid/graphics/Paint;)V

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-virtual {v0, v3}, Lnac;->a(Z)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    return-void

    nop

    nop

    :goto_b5
    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-virtual {v0, v10}, Lnan;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_b7
    invoke-static {v7}, Lnnr;->b(F)I

    move-result v2

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_b8
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b9
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->B:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    sget-object v1, Lnac;->b:Lnac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_bc
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_57

    nop

    nop

    :goto_bd
    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_b4

    nop

    nop

    :goto_be
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->x:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_bf
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->v:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_c0
    sget-object v1, Lnan;->b:Lnan;

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

    :goto_c1
    const/16 v4, 0xa

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_c2
    add-int v0, v0, v1

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

    :goto_c3
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->B:Landroid/graphics/Paint;

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

    :goto_c4
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->L:Ljava/util/List;

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_c6
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->B:Landroid/graphics/Paint;

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

    :goto_c8
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->w:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_c9
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_ca
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_cb
    sget-object v8, Lnac;->c:Lnac;

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_cc
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_cd
    invoke-static {v0, v3}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_ce
    sget v3, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->r:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->v:Landroid/graphics/Paint;

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

    :goto_d0
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->w:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_d1
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->t:Landroid/graphics/Paint;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d3
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

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

    :goto_d4
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_d5
    invoke-virtual {p0, v0, v1, v2, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->t:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    :goto_d7
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_5a

    nop

    nop

    :goto_d8
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_da
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_db
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->z:Landroid/graphics/Paint;

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    const/high16 v8, 0x40c00000    # 6.0f

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_de
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_df
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->D:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e0
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->B:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_e2
    const/high16 v1, 0x42a00000    # 80.0f

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_e3
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->A:Landroid/graphics/Paint;

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

    :goto_e4
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_89

    nop

    nop

    :goto_e5
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->B:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    const/high16 v7, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_e7
    const/high16 v3, 0x40a00000    # 5.0f

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_e8
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_e9
    new-instance v10, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_ea
    const/high16 v4, 0x4f000000

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_ec
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_ed
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->w:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    invoke-direct {v3, v4}, Lkzc;-><init>(I)V

    goto/32 :goto_cd

    nop

    nop

    :goto_ef
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f1
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_f2
    sget-object v8, Lnac;->b:Lnac;

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    int-to-float v3, v3

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

    nop

    :goto_f4
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_73

    nop

    nop

    :goto_f6
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->A:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    new-instance v3, Lnal;

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_f8
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->t:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    new-instance v10, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_fa
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    invoke-virtual {v0, v3}, Lnac;->a(Z)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->L:Ljava/util/List;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_fe
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_ff
    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_100
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->w:Landroid/graphics/Paint;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_101
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_102
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->g:Lnan;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_103
    const/high16 v4, 0x41200000    # 10.0f

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_104
    const/high16 v5, -0x1000000

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_105
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->L:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_106
    cmpl-float v0, v0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    :goto_107
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->E:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    :goto_108
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->t:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_109
    const/4 v1, 0x0

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->x:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_10b
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_10c
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->y:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_10d
    invoke-direct {v11, v8, v10}, Lnal;-><init>(Lnac;Landroid/graphics/Paint;)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_10e
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->y:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_10f
    sget-object v0, Lnac;->b:Lnac;

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_110
    invoke-virtual {v0, v10}, Lnan;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_111
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->C:Landroid/graphics/Paint;

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

    :goto_112
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_113
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_2b

    nop

    nop

    :goto_114
    if-nez v0, :cond_7

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_115
    if-nez v0, :cond_8

    nop

    nop

    goto/32 :goto_7e

    nop

    :cond_8
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_116
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    :goto_117
    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_118
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->B:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_119
    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11a
    invoke-direct {v11, v8, v10}, Lnal;-><init>(Lnac;Landroid/graphics/Paint;)V

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_11b
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->u:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    goto/32 :goto_58

    nop

    nop
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v3, v4}, Lkzr;-><init>(I)V

    goto/32 :goto_7a

    nop

    nop

    :goto_1
    if-lt v13, v9, :cond_0

    nop

    goto/32 :goto_1c

    nop

    :cond_0
    goto/32 :goto_119

    nop

    nop

    nop

    :goto_2
    move v2, v8

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Lnaj;

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move v2, v8

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_100

    nop

    nop

    :goto_8
    sget-object v1, Lnac;->a:Lnac;

    nop

    goto/32 :goto_126

    nop

    nop

    :goto_9
    if-nez v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    :cond_1
    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_130

    nop

    nop

    nop

    :goto_b
    sget-object v1, Lnac;->a:Lnac;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->19e596a3e324281407eb5c11093c0152m(Landroid/graphics/Canvas;)V

    goto/32 :goto_15c

    nop

    nop

    :goto_d
    iget-object v0, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->E:Landroid/graphics/Paint;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move v1, v12

    nop

    nop

    :goto_f
    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->k:Loyn;

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    div-float/2addr v9, v10

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_12
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v9, :cond_3

    nop

    nop

    goto/32 :goto_58

    nop

    :cond_3
    goto/32 :goto_f1

    nop

    nop

    :goto_14
    if-ne v0, v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Lnac;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_16
    iget-object v3, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->l:Ljava/util/List;

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Lmze;->c()Z

    move-result v4

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    :goto_18
    invoke-interface {v2}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    :goto_19
    move v13, v8

    nop

    :goto_1a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_1a

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_6d

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_a1

    nop

    nop

    :goto_20
    iget-object v5, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->E:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_1a3

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-ge v0, v9, :cond_6

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_181

    nop

    nop

    nop

    :goto_23
    iget-object v3, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->m:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    :goto_24
    iget-object v0, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->l:Ljava/util/List;

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v2, v2, Lmzd;->a:Lmzf;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-eqz v2, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v2, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->L:Ljava/util/List;

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v5, :cond_8

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_120

    nop

    nop

    nop

    nop

    :goto_29
    move-object v0, p0

    nop

    goto/32 :goto_f8

    nop

    nop

    :goto_2a
    goto/16 :goto_b0

    nop

    nop

    :goto_2b
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v5, v5, Lnaj;->a:Lmzd;

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

    :goto_2d
    check-cast v5, Lnaj;

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    :goto_2f
    goto/16 :goto_e5

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_14d

    nop

    nop

    nop

    :goto_31
    if-lt v4, v3, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    :cond_9
    goto/32 :goto_1ac

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0, v12}, Lryh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {v2, v12, v12, v12, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_3

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_36
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_37
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_38
    div-float/2addr v2, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    div-float v1, v0, v10

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-direct {p0, v2, v1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->7ecc92917e9c4556cc19f457ddc41af8m(Lnan;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_3d
    if-lez v0, :cond_a

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_c3

    nop

    :goto_3e
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_3f
    iget-boolean v5, v3, Lmze;->s:Z

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_40
    aput-object v11, v0, v2

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_41
    if-gt v2, v1, :cond_b

    nop

    goto/32 :goto_d9

    nop

    :cond_b
    goto/32 :goto_95

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v12}, Lezm;->n()V

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    :goto_43
    iget v5, v5, Lmzd;->b:I

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_44
    if-eqz v12, :cond_c

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_45
    check-cast v12, Lnpb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v9}, Lezm;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

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

    :goto_47
    if-eqz v12, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v11}, Lryb;->size()I

    move-result v2

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_49
    const/16 v4, 0x10

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v2}, Lmzf;->a()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    nop

    goto/32 :goto_13a

    nop

    nop

    :goto_4d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v12, v8}, Lezm;->r(I)V

    :goto_4f
    goto/32 :goto_1a7

    nop

    nop

    nop

    :goto_50
    iget-object v0, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->o:Lnai;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v1, v1, Lmzd;->a:Lmzf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    :goto_52
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_f

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    sub-float v4, v0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    :goto_56
    sget-object v12, Lnac;->a:Lnac;

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_128

    nop

    :goto_58
    goto/32 :goto_c5

    nop

    nop

    :goto_59
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    int-to-float v3, v3

    nop

    nop

    :goto_5b
    goto/32 :goto_195

    nop

    nop

    nop

    nop

    :goto_5c
    iget v12, v12, Lffc;->f:F

    nop

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    :goto_5d
    iget-object v3, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->E:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-direct {v11, v3, v9}, Lnak;-><init>(Lprf;Z)V

    goto/32 :goto_40

    nop

    nop

    :goto_5f
    const/high16 v5, 0x40400000    # 3.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_60
    move-object/from16 v0, p1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    sub-float v1, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_180

    nop

    nop

    nop

    nop

    :goto_62
    sub-float v3, v2, v3

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_63
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_64
    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    :goto_65
    move-object/from16 v7, p1

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v0, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->l:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    :goto_67
    invoke-static {v0}, Lryh;->m(Ljava/util/Map;)Lryh;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_68
    iget-object v2, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->H:Lnpb;

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    nop

    nop

    :goto_69
    add-int/lit8 v13, v13, 0x1

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_6a
    if-nez v0, :cond_e

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    new-instance v3, Lnae;

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

    :goto_6c
    return-void

    nop

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_6e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_6f
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_70
    invoke-direct {v12, v2}, Lnpb;-><init>(I)V

    :goto_71
    goto/32 :goto_de

    nop

    nop

    nop

    :goto_72
    if-ne v0, v9, :cond_f

    nop

    goto/32 :goto_142

    nop

    :cond_f
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget-boolean v0, v8, Lmze;->t:Z

    nop

    goto/32 :goto_190

    nop

    nop

    :goto_74
    if-nez v1, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    :goto_76
    goto/32 :goto_16a

    nop

    nop

    nop

    :goto_77
    iget v12, v12, Lmzd;->b:I

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_78
    add-float/2addr v1, v14

    nop

    goto/32 :goto_151

    nop

    nop

    :goto_79
    move-object/from16 v0, p1

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v2

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

    :goto_7b
    iget-object v2, v0, Lnaj;->a:Lmzd;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {p0, v1, v8}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v5, v7}, Lezm;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget v0, v0, Lnai;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    :goto_7f
    if-nez v2, :cond_11

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_80
    iget-object v0, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    :goto_81
    invoke-static {v11}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    nop

    :goto_82
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    :goto_83
    iget-object v13, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->m:Ljava/util/Map;

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

    :goto_84
    iget-object v12, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->G:Lezm;

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    :goto_85
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_86
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    goto/16 :goto_5b

    nop

    nop

    :goto_88
    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_8a
    invoke-direct {v3, p0, v7, v1, v0}, Lnae;-><init>(Lcom/google/android/apps/camera/ui/hotshot/HotshotView;Landroid/graphics/Canvas;FF)V

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object v1, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->E:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {p0, v9, v1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v9

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

    :goto_8d
    if-nez v3, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    :cond_12
    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_8e
    sub-float/2addr v3, v9

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iget-boolean v0, v8, Lmze;->r:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    :goto_90
    iget-object v0, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->E:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_91
    move v3, v0

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v2, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    :goto_93
    move-object v3, v1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_94
    invoke-virtual {p0, v4, v8}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v4

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iget-object v2, v0, Lnaj;->a:Lmzd;

    nop

    nop

    goto/32 :goto_1a5

    nop

    nop

    :goto_96
    check-cast v0, Lnaj;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_97
    invoke-direct {p0, v5}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->51550bab6b6440a4fd45f825c221b363m(F)V

    goto/32 :goto_197

    nop

    nop

    nop

    nop

    :goto_98
    iget-object v2, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->E:Landroid/graphics/Paint;

    nop

    goto/32 :goto_1a4

    nop

    nop

    :goto_99
    iget-object v9, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->F:Lezm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    :goto_9a
    iget v5, v1, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    :goto_9b
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_9d
    iget-boolean v0, v8, Lmze;->q:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-static {v9}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->p(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-interface {v13, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_a0
    iget-object v13, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    :goto_a1
    iget-object v0, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->m:Ljava/util/Map;

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    iget-object v0, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->c:Lnac;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a3
    iget-object v0, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->E:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {v2}, Lmzf;->a()Z

    move-result v2

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_a5
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_a6
    goto/32 :goto_73

    nop

    nop

    :goto_a7
    iget-object v5, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->E:Landroid/graphics/Paint;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_a8
    new-array v1, v8, [Lnak;

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_a9
    iget-object v12, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->G:Lezm;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    if-nez v0, :cond_13

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->d5484163cd8d335e6b17663474ff5f2bm(Lnaj;)Landroid/graphics/RectF;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_af
    iget v2, v1, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    goto/32 :goto_ec

    nop

    nop

    :goto_b1
    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    div-float v3, v0, v10

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-virtual {v11}, Lryb;->isEmpty()Z

    move-result v0

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

    :goto_b4
    iget-boolean v3, v3, Lmze;->t:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b5
    int-to-float v9, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    :goto_b6
    iget-object v5, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->E:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    new-instance v4, Landroid/graphics/RectF;

    nop

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

    nop

    :goto_b8
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    :goto_b9
    invoke-virtual {v11}, Lryb;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :goto_ba
    iget-object v4, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->E:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_bb
    iget-object v0, v0, Lnaj;->e:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    :goto_bc
    move v1, v12

    nop

    :goto_bd
    goto/32 :goto_153

    nop

    nop

    nop

    nop

    :goto_be
    if-nez v3, :cond_14

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :cond_14
    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    if-eqz v2, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_c0
    if-nez v2, :cond_16

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_16
    goto/32 :goto_12d

    nop

    nop

    nop

    :goto_c1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->1478a1c7833aac5e360e0ba4b0c0c568m(Landroid/graphics/Canvas;Lmzf;Landroid/graphics/RectF;ZZ)V

    :goto_c2
    goto/32 :goto_69

    nop

    nop

    :goto_c3
    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    :goto_c4
    goto/32 :goto_110

    nop

    nop

    nop

    :goto_c5
    if-nez v11, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_17f

    nop

    nop

    nop

    :goto_c6
    return-void

    nop

    :goto_c7
    goto/32 :goto_173

    nop

    nop

    nop

    nop

    :goto_c8
    move v4, v8

    nop

    nop

    :goto_c9
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    :goto_cb
    iget-object v0, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->o:Lnai;

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_cc
    add-float/2addr v5, v14

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-direct {p0, v3, v1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->7ecc92917e9c4556cc19f457ddc41af8m(Lnan;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    const v1, 0x20

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    :goto_cf
    iget-object v3, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->g:Lnan;

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_d0
    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_d1
    add-float/2addr v13, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    const/4 v3, 0x4

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_d3
    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    :goto_d4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    iget-boolean v0, v8, Lmze;->q:Z

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    if-nez v13, :cond_18

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_a0

    nop

    nop

    :goto_d7
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    check-cast v0, Lnaj;

    nop

    nop

    nop

    nop

    :goto_d9
    goto/32 :goto_199

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    iget-object v2, v1, Lmzd;->a:Lmzf;

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    :goto_db
    if-gtz v0, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v9

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-direct {p0, v11}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->1a36313b7ed15ba14e0acb4da569b8b7m(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    :goto_de
    iget-object v13, v5, Lnaj;->a:Lmzd;

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    nop

    nop

    :goto_df
    goto/16 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    iget v13, v1, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    iget-object v0, v0, Lnaj;->b:Lmze;

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    :goto_e4
    move-object v3, v4

    nop

    nop

    :goto_e5
    goto/32 :goto_147

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->1478a1c7833aac5e360e0ba4b0c0c568m(Landroid/graphics/Canvas;Lmzf;Landroid/graphics/RectF;ZZ)V

    :goto_e7
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    iget-object v0, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->E:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    :goto_e9
    iget-object v5, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->E:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_ea
    move v1, v0

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

    :goto_eb
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_188

    nop

    nop

    nop

    nop

    :goto_ec
    iget-boolean v13, v3, Lmze;->r:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    iget-object v12, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->G:Lezm;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    iget-object v2, v2, Lmzd;->a:Lmzf;

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    if-nez v11, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_166

    nop

    nop

    nop

    :goto_f0
    const/high16 v14, -0x3fc00000    # -3.0f

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

    :goto_f1
    move v9, v8

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_f2
    iget-object v1, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->k:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    :goto_f3
    goto/16 :goto_128

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    goto/16 :goto_135

    nop

    nop

    :goto_f7
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    invoke-static {v2, v3}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_fc
    invoke-virtual {v12}, Lezm;->l()V

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_fd
    invoke-virtual {v11, v8}, Lryb;->get(I)Ljava/lang/Object;

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

    :goto_fe
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_ff
    goto/32 :goto_159

    nop

    nop

    :goto_100
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_101
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    nop

    :goto_102
    iget-object v11, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->c:Lnac;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_103
    iget-object v3, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->E:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_104
    invoke-virtual {v5}, Lezm;->u()Z

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_105
    if-gtz v0, :cond_1b

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_106
    const/4 v1, 0x1

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

    :goto_107
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_108
    goto/16 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_109
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_10a
    move v1, v0

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    iget-boolean v0, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->j:Z

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    :goto_10c
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_10d
    iget-object v0, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->m:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_10e
    iget-object v8, v0, Lnai;->b:Lmze;

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_10f
    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_110
    move-object v6, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_111
    div-float/2addr v3, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :goto_112
    invoke-virtual {p0, v1, v8}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v1

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    :goto_113
    invoke-virtual {v0}, Lmze;->c()Z

    move-result v4

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_114
    if-ne v0, v3, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_24

    nop

    nop

    :goto_115
    int-to-float v9, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_116
    iget-object v4, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->E:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_117
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

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

    :goto_118
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    :goto_119
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    new-instance v12, Lnpb;

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    iget v0, v0, Lnai;->c:I

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_11c
    iget-object v3, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->l:Ljava/util/List;

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

    :goto_11d
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_187

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_11f
    invoke-virtual {p0, v2, v1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_120
    iget-object v5, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_191

    nop

    nop

    :goto_121
    if-ne v0, v2, :cond_1d

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    :cond_1d
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_122
    if-eq v0, v1, :cond_1e

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :cond_1e
    :goto_123
    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    :goto_124
    iget-object v0, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->E:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    nop

    :goto_125
    iget-object v0, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->E:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_126
    invoke-virtual {v0, v1}, Lnac;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_127
    const/16 v9, 0x14

    nop

    nop

    nop

    nop

    :goto_128
    goto/32 :goto_1ab

    nop

    nop

    nop

    :goto_129
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    iget-object v2, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->H:Lnpb;

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    nop

    :goto_12b
    invoke-interface {v1, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_12c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    nop

    :goto_12d
    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->d5484163cd8d335e6b17663474ff5f2bm(Lnaj;)Landroid/graphics/RectF;

    move-result-object v1

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_12e
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

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

    :goto_12f
    iget-object v12, v5, Lezm;->b:Lffc;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_130
    iput-boolean v8, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->j:Z

    nop

    nop

    goto/32 :goto_1af

    nop

    nop

    nop

    nop

    :goto_131
    invoke-virtual {v1}, Lmzf;->a()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_132
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    :goto_133
    invoke-virtual {v11, v12}, Lnac;->equals(Ljava/lang/Object;)Z

    move-result v11

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_134
    int-to-float v0, v0

    nop

    :goto_135
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_136
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    nop

    nop

    goto/32 :goto_194

    nop

    nop

    nop

    nop

    :goto_137
    if-lt v2, v3, :cond_1f

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_1f
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_138
    goto/16 :goto_4f

    nop

    nop

    nop

    :goto_139
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_13a
    div-float/2addr v4, v10

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_13b
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    :goto_13c
    iget-object v3, v0, Lnaj;->b:Lmze;

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    iget-object v2, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->h:Landroid/graphics/Rect;

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    if-ne v0, v1, :cond_20

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    :cond_20
    goto/32 :goto_161

    nop

    nop

    :goto_13f
    if-nez v0, :cond_21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_d

    nop

    nop

    :goto_140
    sub-float/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_141
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_142
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_143
    float-to-int v12, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_144
    sub-float/2addr v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    :goto_145
    new-instance v11, Lnak;

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

    :goto_146
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    :goto_147
    iget-object v1, v0, Lnaj;->a:Lmzd;

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_148
    invoke-virtual {v0}, Lnan;->ordinal()I

    move-result v0

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    :goto_149
    iget v2, v2, Landroid/graphics/RectF;->left:F

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    iget-object v0, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->o:Lnai;

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    :goto_14b
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->19e596a3e324281407eb5c11093c0152m(Landroid/graphics/Canvas;)V

    goto/32 :goto_80

    nop

    nop

    :goto_14c
    iget-object v0, v0, Lnaj;->b:Lmze;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_14d
    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->d5484163cd8d335e6b17663474ff5f2bm(Lnaj;)Landroid/graphics/RectF;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_14f
    int-to-float v4, v4

    nop

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

    :goto_150
    invoke-static {v3}, Lprf;->a(Landroid/hardware/camera2/params/Face;)Lprf;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    :goto_151
    goto/16 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_152
    goto/32 :goto_75

    nop

    nop

    :goto_153
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    nop

    :goto_154
    move-object/from16 v0, p1

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_155
    invoke-virtual {v12, v13}, Lnpb;->b(Landroid/graphics/RectF;)V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_156
    if-nez v0, :cond_22

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_107

    nop

    nop

    nop

    :goto_157
    sub-float/2addr v4, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a9

    nop

    nop

    nop

    nop

    nop

    :goto_158
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    :goto_159
    iget-boolean v0, v8, Lmze;->s:Z

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    :goto_15a
    goto/16 :goto_e2

    nop

    nop

    nop

    :goto_15b
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_15c
    return-void

    nop

    nop

    nop

    nop

    :goto_15d
    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    :goto_15e
    iget-object v1, v0, Lnaj;->a:Lmzd;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_15f
    invoke-virtual {v11, v8}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_160
    invoke-virtual {v2}, Lj$/util/Optional;->isPresent()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_161
    iget-object v0, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->o:Lnai;

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_162
    goto/16 :goto_c9

    nop

    :goto_163
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_164
    iget-object v11, v0, Lnai;->a:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    :goto_165
    iget v13, v13, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_166
    iget-object v5, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->G:Lezm;

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    :goto_167
    const/high16 v10, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    :goto_168
    div-float/2addr v5, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    :goto_169
    const/4 v9, 0x2

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_16a
    invoke-direct {v4, v2, v13, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_16b
    new-instance v3, Lkzr;

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

    :goto_16c
    return-void

    nop

    nop

    nop

    nop

    :goto_16d
    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_16e
    invoke-direct {p0, v9, v11}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->33b3102b6558811a7b7629a1e8e59bd2m(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v9

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    :goto_16f
    if-nez v0, :cond_23

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_170
    iget-object v0, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->c:Lnac;

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

    :goto_171
    if-nez v0, :cond_24

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_172
    iget v0, v0, Lnai;->c:I

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_173
    iget-object v0, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->o:Lnai;

    nop

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    :goto_174
    iget-object v13, v13, Lmzd;->d:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    :goto_175
    goto/16 :goto_64

    nop

    nop

    :goto_176
    goto/32 :goto_1b1

    nop

    nop

    nop

    :goto_177
    iget-object v0, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->g:Lnan;

    nop

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    :goto_178
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_179
    iget-boolean v0, v8, Lmze;->s:Z

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    nop

    :goto_17a
    iget-object v2, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->g:Lnan;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_17b
    int-to-float v2, v2

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_17c
    if-nez v0, :cond_25

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    :goto_17d
    check-cast v3, Landroid/hardware/camera2/params/Face;

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_17e
    invoke-static {v5, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    nop

    goto/32 :goto_168

    nop

    nop

    :goto_17f
    const/16 v9, 0x28

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

    :goto_180
    const/4 v2, 0x0

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_181
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_182
    iget-object v2, v0, Lnaj;->a:Lmzd;

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_183
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    goto/32 :goto_178

    nop

    nop

    nop

    :goto_184
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    :goto_185
    div-float v2, v0, v10

    nop

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_186
    div-float/2addr v9, v10

    nop

    goto/32 :goto_157

    nop

    nop

    :goto_187
    move-object/from16 v1, p1

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_188
    int-to-float v4, v0

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_189
    int-to-float v0, v0

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_18a
    invoke-static {v4}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->p(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_18b
    invoke-virtual {v2, v4}, Lnpb;->b(Landroid/graphics/RectF;)V

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_18d
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    check-cast v0, Lnaj;

    nop

    nop

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    :goto_18f
    iget-object v12, v5, Lnaj;->a:Lmzd;

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_190
    if-nez v0, :cond_26

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_191
    iget v5, v5, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_192
    if-eqz v12, :cond_27

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :cond_27
    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_193
    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_194
    div-float/2addr v1, v10

    nop

    goto/32 :goto_184

    nop

    nop

    nop

    nop

    :goto_195
    sub-float v2, v0, v2

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_196
    add-float/2addr v2, v5

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

    :goto_197
    iget-object v5, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->F:Lezm;

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_198
    div-float v4, v0, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_199
    new-instance v2, Landroid/graphics/RectF;

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

    :goto_19a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    :goto_19b
    iget-object v9, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->F:Lezm;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19c
    invoke-virtual {v9}, Lezm;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

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

    nop

    :goto_19d
    move-object/from16 v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_19e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_19f
    iget-object v1, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_1a0
    if-nez v0, :cond_28

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :cond_28
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a1
    iget-boolean v0, v8, Lmze;->q:Z

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1a3
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a4
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

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

    :goto_1a5
    iget-object v2, v2, Lmzd;->a:Lmzf;

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_1a6
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_1a7
    iget-object v12, v6, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->F:Lezm;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1a8
    iget-boolean v2, v3, Lmze;->q:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_1a9
    invoke-virtual {v7, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_1aa
    invoke-virtual {v2}, Lnpb;->a()Landroid/graphics/RectF;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1ab
    invoke-virtual {v12, v9}, Lezm;->r(I)V

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_1ac
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

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

    nop

    :goto_1ad
    new-array v0, v0, [Lnak;

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

    :goto_1ae
    iget-boolean v3, v8, Lmze;->s:Z

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_1af
    return-void

    nop

    nop

    nop

    nop

    :goto_1b0
    goto/32 :goto_177

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b1
    invoke-virtual {v11}, Lryb;->size()I

    move-result v0

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onFinishInflate()V
    .locals 6

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->Q:Lezb;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_51

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v1}, Lezg;->c(Landroid/content/Context;I)Lezs;

    move-result-object v0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v1, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_8
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->O:Lezb;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1}, Lezg;->c(Landroid/content/Context;I)Lezs;

    move-result-object v0

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

    :goto_a
    const v1, 0x7f13005e

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

    :goto_b
    iget-object v0, v0, Lezs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v4, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->N:Lezb;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_49

    nop

    nop

    :goto_f
    const v1, 0xa

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
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_12
    const v1, 0x7f130065

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->getContext()Landroid/content/Context;

    move-result-object v0

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

    :goto_14
    new-instance v0, Lnaf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_15
    div-float/2addr v4, v0

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v5, v5, Lezb;->g:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_17
    const/high16 v0, 0x43960000    # 300.0f

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_18
    div-float/2addr v2, v0

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

    nop

    :goto_19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->M:Lezb;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1d
    check-cast v0, Lezb;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0, v1}, Lezg;->c(Landroid/content/Context;I)Lezs;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1d

    nop

    nop

    :goto_20
    iget-object v0, v0, Lezs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    div-float/2addr v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_22
    iget-object v4, v4, Lezb;->g:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_23
    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->51550bab6b6440a4fd45f825c221b363m(F)V

    goto/32 :goto_13

    nop

    nop

    :goto_24
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_25
    new-instance v0, Lnah;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_26
    iget v2, v2, Landroid/graphics/Rect;->left:I

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

    :goto_27
    invoke-direct {v0, p0}, Lnaf;-><init>(Lcom/google/android/apps/camera/ui/hotshot/HotshotView;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_29
    invoke-static {v0, v1}, Lezg;->c(Landroid/content/Context;I)Lezs;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2a
    iget v3, v3, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_2b
    const v1, 0x7f130059

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_2c
    div-float/2addr v5, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_2d
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->N:Lezb;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->F:Lezm;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_2f
    int-to-float v4, v4

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

    :goto_30
    invoke-static {v0, v1}, Lezg;->c(Landroid/content/Context;I)Lezs;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_31
    float-to-int v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_33
    invoke-super {p0}, Lhsd;->onFinishInflate()V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, v0, Lezs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_35
    iget-object v3, v3, Lezb;->g:Landroid/graphics/Rect;

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

    :goto_36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {v0, p0}, Lnag;-><init>(Lcom/google/android/apps/camera/ui/hotshot/HotshotView;)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->P:Lezb;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_39
    invoke-static {v0, v1}, Lezg;->c(Landroid/content/Context;I)Lezs;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_3a
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

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

    :goto_3b
    float-to-int v0, v2

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

    :goto_3c
    const v1, 0x7f130058

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->getContext()Landroid/content/Context;

    move-result-object v0

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

    :goto_3e
    iget-object v0, v0, Lezs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3f
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->R:Lffl;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v0, v0, Lezs;->a:Ljava/lang/Object;

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

    :goto_43
    float-to-int v4, v5

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

    :goto_44
    check-cast v0, Lezb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_45
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->W:Landroid/graphics/Rect;

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

    :goto_46
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->N:Lezb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_47
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    check-cast v0, Lezb;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_49
    check-cast v0, Lezb;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_4b
    new-instance v0, Lnag;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v1, v0}, Lezm;->v(Lezb;)Z

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-direct {v0}, Lnah;-><init>()V

    goto/32 :goto_59

    nop

    nop

    :goto_4e
    const v1, 0x7f130066

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_4f
    iget-object v2, v2, Lezb;->g:Landroid/graphics/Rect;

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

    :goto_50
    invoke-virtual {v1, v0}, Lezm;->v(Lezb;)Z

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_1

    nop

    nop

    :goto_52
    check-cast v0, Lezb;

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

    :goto_53
    iget-object v5, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->N:Lezb;

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

    :goto_54
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->G:Lezm;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_55
    float-to-int v3, v4

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_56
    int-to-float v5, v5

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

    :goto_57
    const v1, 0x7f13005a

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_58
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_59
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->T:Lffl;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5b
    iget-object v3, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->N:Lezb;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_5d
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->S:Lffl;

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

    :goto_5e
    iget v4, v4, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_60
    check-cast v0, Lezb;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop
.end method
