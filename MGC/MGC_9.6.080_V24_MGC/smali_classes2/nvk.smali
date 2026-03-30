.class public final synthetic Lnvk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lnvu;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic d:Landroid/view/GestureDetector;


# direct methods
.method public synthetic constructor <init>(Lnvu;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/view/GestureDetector;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lnvk;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-object p1, p0, Lnvk;->a:Lnvu;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p4, p0, Lnvk;->d:Landroid/view/GestureDetector;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lnvk;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    goto/32 :goto_31

    nop

    nop

    :goto_0
    invoke-virtual {v0, p2}, Lnvu;->ao(Landroid/view/MotionEvent;)F

    move-result p0

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

    :goto_1
    const/high16 v9, 0x40000000    # 2.0f

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v4, v0, Lnvu;->M:F

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v3, 0x2

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

    :goto_5
    if-nez v4, :cond_0

    nop

    nop

    goto/32 :goto_74

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

    nop

    :goto_6
    invoke-virtual {p0}, Lnvf;->f()V

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_7
    iget-boolean v4, v0, Lnvu;->G:Z

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

    :goto_8
    new-instance p2, Lnii;

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_9
    const/high16 v3, 0x41f00000    # 30.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v3, v0, p0, v8, v4}, Lnii;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v4, v0, Lnvu;->t:Lnwp;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v4, v0, Lnvu;->x:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

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

    :goto_11
    iget-object p0, p0, Lnvk;->d:Landroid/view/GestureDetector;

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_14
    cmpl-float p0, p0, v3

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

    nop

    :goto_15
    const/4 v5, 0x1

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_4a

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lnvf;->f()V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_1a
    iget v1, v0, Lnvu;->M:F

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, p0, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1c
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1d
    iget-boolean p0, v0, Lnvu;->F:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_1e
    iget-object p0, v0, Lnvu;->m:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    cmpl-float p0, p0, v3

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

    :goto_21
    const/4 v4, 0x0

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p0, v0, Lnvu;->m:Ljava/lang/Runnable;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/16 v8, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {p0, v0, p2, v1, v4}, Lnii;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v1, p0, Lnvk;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_26
    iget-object v3, p0, Lnvk;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_27
    new-instance p0, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_28
    const/4 v2, 0x0

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

    :goto_29
    iget-object p0, v0, Lnvu;->q:Lrss;

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_2a
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4e

    nop

    nop

    :goto_2b
    iget-object p0, v0, Lnvu;->m:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_5a

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_2f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_31
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_32
    iget-object p0, v0, Lnvu;->B:Lnvf;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_33
    cmpl-float p0, p0, v8

    nop

    nop

    nop

    goto/32 :goto_54

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

    nop

    :goto_35
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_2
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-gtz p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_3
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_39
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0}, Lnvu;->aq()V

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_3c
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v4, v0, Lnvu;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_3e
    if-nez p0, :cond_4

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_af

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p1, p0, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v8, v0, Lnvu;->x:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

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

    :goto_42
    move v2, v5

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_43
    if-nez p0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p0, v5}, Landroid/view/MotionEvent;->setAction(I)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

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

    :goto_46
    iget-boolean p0, v0, Lnvu;->K:Z

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v8}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->getWidth()I

    move-result v8

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-boolean p0, v0, Lnvu;->F:Z

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object p0, v0, Lnvu;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v0, p2}, Lnvu;->ao(Landroid/view/MotionEvent;)F

    move-result p0

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-nez p0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4d
    div-float/2addr v8, v9

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_4e
    invoke-virtual {v0, p2}, Lnvu;->ao(Landroid/view/MotionEvent;)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_4f
    const-wide/16 v6, 0x64

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-direct {p2, v0, p0, v2, v4}, Lnii;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_52
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_53
    neg-float v8, v8

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_54
    if-lez p0, :cond_7

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_0

    nop

    nop

    :goto_55
    invoke-virtual {v4, v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->c(Z)V

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_8c

    nop

    nop

    :goto_57
    invoke-virtual {p1, v3, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_58
    iget-object v0, p0, Lnvk;->a:Lnvu;

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_59
    iget-boolean v2, v0, Lnvu;->F:Z

    nop

    nop

    :goto_5a
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget p1, v0, Lnvu;->M:F

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_5c
    invoke-virtual {p2, p0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto/32 :goto_a2

    nop

    nop

    :goto_5d
    if-nez v4, :cond_8

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v4, v0, Lnvu;->m:Ljava/lang/Runnable;

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v0}, Lnvu;->as()V

    goto/32 :goto_9e

    nop

    nop

    :goto_60
    goto/16 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_49

    nop

    nop

    :goto_62
    invoke-virtual {v4}, Lnvw;->h()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    if-eq p0, v3, :cond_9

    nop

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

    :cond_9
    goto/32 :goto_1d

    nop

    nop

    :goto_64
    sub-float/2addr p0, v1

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

    :goto_65
    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->G()Z

    move-result v1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v1, v0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_67
    iget-object p0, v0, Lnvu;->B:Lnvf;

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

    :goto_68
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    if-eqz p0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_6a
    if-eq p0, v3, :cond_b

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/32 :goto_46

    nop

    nop

    :goto_6c
    int-to-float v8, v8

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

    :goto_6d
    iget-boolean v1, v0, Lnvu;->F:Z

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    if-nez p0, :cond_c

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :cond_c
    goto/32 :goto_29

    nop

    nop

    :goto_6f
    iget-object p0, v0, Lnvu;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_70
    goto/32 :goto_a1

    nop

    :goto_71
    sub-float/2addr p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v4, v0, Lnvu;->l:Ljava/lang/Runnable;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_73
    iput-boolean v2, v0, Lnvu;->G:Z

    nop

    nop

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_72

    nop

    nop

    :goto_75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_76
    if-eqz p0, :cond_d

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_78
    invoke-direct {p0, v3, v8}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_79
    invoke-virtual {p1, p0, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    goto/16 :goto_2d

    nop

    nop

    :goto_7b
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object p0, v0, Lnvu;->q:Lrss;

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_7d
    if-eq v4, v5, :cond_e

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_e
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {p0}, Lrss;->h()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_7f
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_80
    const/16 v2, 0xd

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_81
    div-float/2addr v8, v9

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

    :goto_82
    invoke-virtual {v8}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->getWidth()I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_83
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_85
    iget-object v8, v0, Lnvu;->x:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

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

    :goto_86
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p0

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

    :goto_87
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_88
    check-cast p0, Ljava/lang/Integer;

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

    nop

    :goto_89
    invoke-virtual {p2, p0, p1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_8b
    const/4 v4, 0x0

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

    :goto_8c
    new-instance v3, Lnii;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    int-to-long v8, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {v0}, Lnvu;->as()V

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_91
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

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

    :goto_92
    if-nez v4, :cond_f

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_93
    goto/16 :goto_a4

    nop

    nop

    nop

    nop

    :goto_94
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_95
    const-wide/16 v6, 0x1

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_96
    cmpg-float p0, p0, v8

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_97
    int-to-float v8, v8

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

    :goto_98
    if-lez v0, :cond_10

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_a0

    nop

    :goto_99
    iput-object p0, v0, Lnvu;->C:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9b
    goto/16 :goto_5a

    nop

    nop

    :goto_9c
    goto/32 :goto_1f

    nop

    nop

    :goto_9d
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto/32 :goto_19

    nop

    nop

    :goto_9e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {p1, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_a1
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_a2
    new-instance p0, Lnii;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a3
    const-wide/16 v8, 0x190

    nop

    nop

    nop

    nop

    :goto_a4
    goto/32 :goto_22

    nop

    nop

    :goto_a5
    invoke-virtual {p0, v2, p2}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto/32 :goto_8

    nop

    nop

    :goto_a6
    invoke-virtual {p1, p2, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {v0, p2}, Lnvu;->ao(Landroid/view/MotionEvent;)F

    move-result p0

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_a9
    goto/16 :goto_1c

    nop

    nop

    nop

    :goto_aa
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_ac
    if-ltz p0, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    :cond_11
    :goto_ad
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {p1, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_af
    iget-boolean p0, v0, Lnvu;->K:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_b1
    if-gtz p0, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_12
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_b2
    if-eqz v1, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_13
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method
