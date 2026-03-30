.class public Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;
.super Landroid/view/View;
.source "PG"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Landroid/view/GestureDetector;

.field public b:Landroid/view/View$OnTouchListener;

.field public c:Z

.field public d:Z

.field public e:Loiq;

.field private final f:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x1

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
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->a:Landroid/view/GestureDetector;

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

    :goto_3
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->f:[I

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

    :goto_4
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x0

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

    :goto_6
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_5

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
    filled-new-array {p1, p1}, [I

    move-result-object p1

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

    :goto_9
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->b:Landroid/view/View$OnTouchListener;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->d:Z

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
.end method


# virtual methods
.method protected final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->getLocationInWindow([I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->f:[I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_42

    nop

    :goto_1
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v0, p0, Lnsn;->k:Z

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_3
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_4
    iget-object p0, p0, Lnsn;->c:Landroid/view/GestureDetector;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->a:Landroid/view/GestureDetector;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_6
    iput v2, v0, Lnsn;->n:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_d

    nop

    nop

    :goto_8
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_9
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_17

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lnsn;->d:Landroid/view/ScaleGestureDetector;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_e
    goto :goto_17

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_46

    nop

    nop

    :goto_10
    iput v2, v0, Lnsn;->n:I

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

    :goto_11
    goto :goto_17

    nop

    nop

    :goto_12
    goto/32 :goto_55

    nop

    nop

    :goto_13
    new-instance v2, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_14
    check-cast v0, Lnsn;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_15
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_1
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0, v2}, Lnsh;->a(Landroid/graphics/PointF;)V

    :goto_17
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v0, p0, Lnsn;->p:I

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_44

    nop

    nop

    :goto_1a
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Lnms;->a:Lnso;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1d
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->d:Z

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

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

    :goto_1f
    goto/16 :goto_31

    nop

    nop

    :goto_20
    goto/32 :goto_5

    nop

    nop

    :goto_21
    iget-object p0, v0, Loiq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_22
    check-cast p0, Lnsn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_23
    goto :goto_17

    nop

    :goto_24
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-ne v0, v2, :cond_2

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

    :cond_2
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_26
    iget-object v3, v0, Lnsn;->e:Lnsh;

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_27
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sget-object v3, Lnsg;->x:Lnsg;

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0}, Lnsn;->a()Lnsg;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->b:Landroid/view/View$OnTouchListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/32 :goto_33

    nop

    nop

    :goto_2e
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_30
    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :goto_31
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {v3}, Lnsg;->c()V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_33
    goto :goto_31

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput-boolean v2, v0, Lnsn;->k:Z

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_36
    goto :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_38
    iget v2, v0, Lnsn;->n:I

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_39
    iget v2, v0, Lnsn;->n:I

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v0, p0, Lnsn;->d:Landroid/view/ScaleGestureDetector;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_3c
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_1d

    nop

    nop

    :goto_3e
    iget-boolean v0, p0, Lnsn;->j:Z

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3f
    add-int v0, v0, v1

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

    :goto_40
    iput v3, v0, Lnsn;->l:F

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_41
    add-int/2addr v2, v1

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_43
    return v1

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const/4 v2, 0x0

    nop

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

    :goto_46
    move-object v0, p0

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

    :goto_47
    invoke-virtual {p0, p1}, Lnso;->a(Landroid/view/MotionEvent;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v0}, Lnsn;->a()Lnsg;

    move-result-object v3

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

    :goto_49
    iget-object v0, v0, Lnsn;->e:Lnsh;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4a
    check-cast v0, Lnsn;

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

    :goto_4b
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->e:Loiq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_4c
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_3d

    nop

    :cond_4
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_18

    nop

    nop

    :goto_4f
    iget-boolean v3, v0, Lnsn;->k:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iput-boolean v2, v0, Lnsn;->j:Z

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_73

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

    :goto_53
    invoke-interface {v3}, Lnsh;->b()V

    goto/32 :goto_2f

    nop

    nop

    :goto_54
    if-eq v0, v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2

    nop

    nop

    :goto_55
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_56
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    if-eqz p0, :cond_8

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

    :cond_8
    goto/32 :goto_21

    nop

    nop

    :goto_58
    check-cast v0, Lnsn;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_59
    check-cast v0, Lnsn;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object p0, p0, Lnsn;->c:Landroid/view/GestureDetector;

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

    :goto_5b
    iget-object v3, v0, Lnsn;->e:Lnsh;

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

    :goto_5c
    if-nez v0, :cond_9

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_9
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-nez v0, :cond_a

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_a
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-interface {v3}, Lnsg;->c()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iput v1, v0, Lnsn;->p:I

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

    :goto_60
    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

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

    :goto_62
    move-object v0, p0

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object p0, v0, Loiq;->a:Ljava/lang/Object;

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

    :goto_64
    const/4 v2, 0x6

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_65
    const v0, 0x8

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

    nop

    :goto_66
    iput v3, v0, Lnsn;->m:F

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_67
    if-ne v0, v3, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_68
    const/4 v3, 0x3

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

    :goto_69
    check-cast v0, Lnsn;

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

    :goto_6a
    if-lez v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_19

    nop

    :goto_6b
    if-ne v0, v2, :cond_d

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

    :cond_d
    goto/32 :goto_e

    nop

    nop

    :goto_6c
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6d
    check-cast p0, Lnms;

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

    nop

    :goto_6e
    if-ne v0, v1, :cond_e

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_e
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_6f
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->c:Z

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_70
    const v1, 0x4

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_71
    invoke-interface {v3}, Lnsg;->b()V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_34

    nop

    :goto_73
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_75
    rem-int v0, v0, v1

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

    :goto_76
    const/4 v2, 0x5

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

    :goto_77
    if-nez v3, :cond_f

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

    :cond_f
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_78
    iput v2, v0, Lnsn;->n:I

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop
.end method
