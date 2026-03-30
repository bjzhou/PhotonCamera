.class public Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;
.super Lcom/google/android/apps/camera/ui/layout/GcaLayout;
.source "PG"

# interfaces
.implements Lnbg;


# instance fields
.field private final n:[I

.field private o:Lnbe;

.field private p:Lnbh;

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_3

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
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->o:Lnbe;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-array p1, p1, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->n:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->p:Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p1, Lnbh;->a:Lnbh;

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
    sget-object p1, Lnbe;->b:Lnbe;

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic dI(Lnbh;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final dP(Lnbe;Lnbh;)V
    .locals 2

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne p1, p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->o:Lnbe;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->setRotation(F)V

    :goto_5
    goto/32 :goto_13

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->setRotation(F)V

    :goto_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_9
    const/4 v0, 0x1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_21

    nop

    nop

    :goto_c
    int-to-float v0, v0

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_e
    if-ne v0, p1, :cond_2

    nop

    goto/32 :goto_14

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->getRotation()F

    move-result v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    :goto_11
    invoke-interface {p1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_12
    if-nez p1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->o:Lnbe;

    nop

    :goto_14
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->p:Lnbh;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->l:Loyn;

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

    :goto_17
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->p:Lnbh;

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x14

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1b
    cmpl-float p1, p1, v0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1c
    iput-boolean v0, p0, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->q:Z

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

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

    :goto_1f
    cmpl-float v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->l:Loyn;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget v0, p2, Lnbh;->e:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

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

    :goto_25
    const v1, 0xa

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_26
    check-cast v0, Ljava/lang/Boolean;

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

    :goto_27
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_5

    nop

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

    :goto_28
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->getRotation()F

    move-result p1

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

    :goto_29
    if-nez p1, :cond_6

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 7

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v2, Landroid/app/Activity;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    :goto_2
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    check-cast v0, Ljava/lang/Boolean;

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

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->getX()F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_6
    cmpl-float v0, v0, v2

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
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->getRotation()F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v5, v5, Lnbh;->e:I

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_a
    iput-boolean v1, p0, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->q:Z

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_f
    aget v4, v4, v5

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_2f

    nop

    :cond_1
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_11
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sub-float v1, v2, v1

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_13
    cmpl-float v0, v0, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_15
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    :goto_16
    invoke-virtual {p0, v2}, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->setX(F)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, v2}, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->setX(F)V

    goto/32 :goto_33

    nop

    nop

    :goto_18
    iget-object v4, p0, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->n:[I

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

    :goto_19
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->getRotation()F

    move-result v0

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
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->setX(F)V

    :goto_1b
    goto/32 :goto_2c

    nop

    nop

    :goto_1c
    int-to-float v0, v0

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

    :goto_1d
    move v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1f
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :cond_4
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_20
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0, v2}, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->setY(F)V

    goto/32 :goto_22

    nop

    nop

    :goto_22
    goto/16 :goto_b

    nop

    :goto_23
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_55

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_26
    iget v6, v6, Lnbh;->e:I

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_27
    cmpl-float v0, v2, v1

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

    :goto_28
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

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

    :goto_29
    const v1, 0x15

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

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->getRotation()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_2c
    cmpl-float v0, v3, v4

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2d
    add-float/2addr v4, v0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->getWidth()I

    move-result v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->l:Loyn;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_32
    aget v1, v4, v1

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0, v2}, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->setY(F)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_34
    const/4 v2, 0x0

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

    :goto_35
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_6
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_36
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_b

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_53

    nop

    nop

    :goto_39
    add-float/2addr v4, v0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_3a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->getY()F

    move-result v3

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

    :goto_3b
    add-int v0, v0, v1

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_3c
    if-eqz v5, :cond_7

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    int-to-float v1, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3e
    int-to-float v6, v6

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_52

    nop

    nop

    :goto_40
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

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

    :goto_42
    invoke-super/range {p0 .. p5}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;->onLayout(ZIIII)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->n:[I

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

    :goto_44
    sget-object v5, Lnbh;->c:Lnbh;

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

    :goto_45
    int-to-float v4, v4

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_46
    const v0, 0x18

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_47
    cmpl-float v5, v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_36

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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_17

    nop

    nop

    :goto_49
    iget v0, v0, Landroid/graphics/Insets;->top:I

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4b
    sget-object v6, Lnbh;->b:Lnbh;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->getLocationInWindow([I)V

    goto/32 :goto_28

    nop

    nop

    :goto_4d
    sub-float v4, v3, v4

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4e
    int-to-float v5, v5

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4f
    const/4 v1, 0x0

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

    :goto_50
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_51
    add-float/2addr v1, v0

    nop

    nop

    :goto_52
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_53
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->q:Z

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

    :goto_54
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->getHeight()I

    move-result v0

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

    :goto_55
    invoke-virtual {p0, v4}, Lcom/google/android/apps/camera/ui/layout/RotatingGcaLayout;->setY(F)V

    goto/32 :goto_37

    nop

    nop

    :goto_56
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method
