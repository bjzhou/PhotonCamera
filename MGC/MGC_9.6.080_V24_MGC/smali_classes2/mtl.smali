.class Lmtl;
.super Lmtk;
.source "PG"


# instance fields
.field final synthetic a:Lmtn;


# direct methods
.method public constructor <init>(Lmtn;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lmtk;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Lmtl;->a:Lmtn;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 7

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, v0, Lrrg;->b:I

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_1
    iget-object v1, v0, Lrrg;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v2}, Lglm;->e(Lgln;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v0, Lkol;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/high16 v3, 0x3f800000    # 1.0f

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

    nop

    nop

    :goto_5
    iget-object v1, v0, Lrrg;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/32 :goto_35

    nop

    nop

    :goto_7
    invoke-interface {v0, v1}, Lndu;->v(Z)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v2, Lgln;->b:Lgln;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, v0, Lrrg;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_a
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->b(IIII)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    iget-object v2, v1, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->c:Landroid/view/View$OnLayoutChangeListener;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, v0, Lrrg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_f
    check-cast v1, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v2, v1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->q(Z)V

    :goto_11
    goto/32 :goto_50

    nop

    nop

    :goto_12
    iget-object v0, v0, Lmtn;->c:Lngo;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Lmyc;->d(Z)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_15
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-boolean v2, v0, Lglm;->g:Z

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_17
    const-string v0, "Cannot transition to CAPTURING from %s"

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

    nop

    :goto_18
    iget-object v0, p0, Lmtl;->a:Lmtn;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1}, Lrtk;->e()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lmtl;->a:Lmtn;

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

    :goto_1b
    invoke-virtual {v1}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->getTop()I

    move-result v3

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

    nop

    nop

    :goto_1c
    iget-object v2, v1, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->f:Landroid/view/ViewPropertyAnimator;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_1d
    if-eqz v2, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v3}, Lj$/time/Duration;->toMillis()J

    move-result-wide v5

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

    :goto_20
    iput v1, v0, Lrrg;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_21
    iget-object v0, v0, Lmtn;->a:Lndu;

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_22
    iget-object v0, p0, Lmhf;->g:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_23
    invoke-direct {v3, v1}, Lglf;-><init>(Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;)V

    goto/32 :goto_6f

    nop

    nop

    :goto_24
    iget-object v0, p0, Lmtl;->a:Lmtn;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_25
    invoke-interface {v0, v1}, Lndu;->j(Z)V

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_29

    nop

    nop

    :goto_27
    invoke-virtual {v1}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->getLeft()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_2a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    :goto_2b
    invoke-virtual {p0, v0}, Lmhf;->c(I)V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v2, 0x0

    nop

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

    :goto_2d
    iget-object v3, p0, Lmhf;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_2e
    iput-boolean v4, v0, Lkol;->b:Z

    nop

    nop

    :goto_2f
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_30
    iget-object v0, v0, Lmtn;->h:Lkyf;

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1}, Lrtk;->d()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/bottombar/BottomBar;->o(Lryh;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {}, Lnsn;->b()V

    goto/32 :goto_5c

    nop

    nop

    :goto_35
    iget-object p0, p0, Lmhf;->h:Ljava/lang/Object;

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v0, p0, Lmtl;->a:Lmtn;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v0, p0, Lmhf;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_38
    if-eq v0, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :cond_2
    goto/32 :goto_65

    nop

    nop

    :goto_39
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3a
    invoke-static {v2}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v2, v0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

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

    :goto_3c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object v0, Lgkt;->c:Lgkt;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_3e
    check-cast v0, Loxv;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast v3, Loxv;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {v2}, Lndu;->p()Z

    move-result v2

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_41
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/32 :goto_e

    nop

    nop

    :goto_42
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_43
    invoke-virtual {p0, v0}, Lmhf;->j(Lgkt;)V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_44
    sget-object v3, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->a:Lj$/time/Duration;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v0, p0, Lmtl;->a:Lmtn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_46
    iget-object v0, p0, Lmtl;->a:Lmtn;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_47
    if-nez v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_48
    add-int/2addr v1, v4

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v0, v0, Lmtn;->d:Lmyc;

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

    :goto_4a
    check-cast v1, Lrtk;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4b
    invoke-static {v1, v0, v3}, Lrrf;->A(ZLjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_4c
    iget-object v2, v0, Lmtn;->a:Lndu;

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

    nop

    :goto_4d
    iget-object v1, v0, Lkol;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v3, v3, Loxv;->d:Ljava/lang/Object;

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

    :goto_4f
    iget-object v3, v0, Lglm;->c:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_50
    iget-object v2, v0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iput-boolean v2, v0, Lmtn;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v1}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

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

    :goto_53
    iget-object v0, v0, Lmtn;->b:Lglm;

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

    :goto_54
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_55
    const v1, 0x2

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-static {v3}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v3

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    new-instance v3, Lglf;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_58
    iget-object v0, p0, Lmtl;->a:Lmtn;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_59
    check-cast v0, Lrrg;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-interface {v0}, Lngo;->Q()V

    goto/32 :goto_45

    nop

    nop

    :goto_5b
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_5c
    iget-object p0, p0, Lmtl;->a:Lmtn;

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v0}, Lkyf;->m()V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_5e
    iget-object v0, p0, Lmtl;->a:Lmtn;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_5f
    iget-object v0, v0, Lmtn;->a:Lndu;

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

    :goto_60
    iput-object v2, v1, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->f:Landroid/view/ViewPropertyAnimator;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const v0, 0x7f130086

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iget-object v0, p0, Lmhf;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_63
    sget-object v2, Lgkt;->b:Lgkt;

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

    :goto_64
    check-cast v1, Lrtk;

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

    :goto_65
    move v1, v4

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_17

    nop

    nop

    :goto_67
    iget-object v0, v0, Lmtn;->f:Lmrp;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v1}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->getRight()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_69
    check-cast p0, Lmhf;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_6a
    invoke-static {v4, v3}, Lryh;->n(Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object v3

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_6b
    iput-object v2, v1, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->f:Landroid/view/ViewPropertyAnimator;

    nop

    nop

    :goto_6c
    goto/32 :goto_52

    nop

    nop

    :goto_6d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_70
    sget-object v4, Lglk;->b:Lglk;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_71
    iget-object p0, p0, Lmtn;->i:Lmhf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v0, v1}, Lmrp;->b(Z)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v1}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->getBottom()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_74
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop
.end method

.method public final b()V
    .locals 10

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Lmtn;->f:Lmrp;

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_1
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_2
    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v1, Liof;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4
    if-eqz v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_66

    nop

    :goto_6
    div-long/2addr v6, v3

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

    :goto_7
    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v3}, Ltkg;->m()Ltkb;

    move-result-object v3

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_9
    iput v4, v3, Lsos;->e:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_a
    move-object v7, v6

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

    nop

    nop

    :goto_b
    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v8, Lrrg;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_d
    iget-object v3, v2, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->f:Landroid/view/ViewPropertyAnimator;

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_65

    nop

    :goto_10
    iget-object v0, p0, Lmtl;->a:Lmtn;

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

    :goto_11
    if-gtz v1, :cond_2

    nop

    goto/32 :goto_51

    nop

    :cond_2
    goto/32 :goto_98

    nop

    nop

    :goto_12
    iget-object v6, v3, Ltkb;->b:Ltkg;

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

    :goto_13
    iget-object v3, v1, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_14
    iget v3, v3, Lrrg;->b:I

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
    iget-object v3, v3, Lrrg;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v0, Lmhf;

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    :goto_17
    iget v6, v3, Lsos;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1}, Lmhf;->j(Lgkt;)V

    goto/32 :goto_bb

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

    nop

    :goto_1a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v1, Lmjv;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_1c
    iget-boolean v1, v0, Lglm;->h:Z

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v3, v1, Liof;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

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

    :goto_1f
    iget-object v3, v0, Lmhf;->g:Ljava/lang/Object;

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lmtl;->a:Lmtn;

    nop

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

    :goto_21
    sub-long/2addr v6, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v3, v1, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v3, Lrtk;

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_24
    iget-object v6, v2, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_25
    sget-object v2, Lsos;->a:Lsos;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_26
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_27
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v8, v8, Lrrg;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_29
    invoke-interface {v1, v0}, Lndu;->v(Z)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v1, v0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_2c
    sget-object v3, Lglk;->b:Lglk;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast v1, Lrrg;

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_2f
    const/4 v4, 0x0

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

    :goto_30
    iget-object v6, v1, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_31
    check-cast v1, Lrtk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    :goto_32
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_34
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v1, v0, Lmhf;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v2

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    :goto_37
    or-int/lit8 v4, v4, 0x20

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast v3, Ljava/util/UUID;

    nop

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

    :goto_39
    goto/16 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iput v8, v3, Lsos;->b:I

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast v6, Lsos;

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_3e
    sget-object v2, Lgkt;->c:Lgkt;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3f
    check-cast v2, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;

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

    :goto_40
    iput v4, v3, Lsos;->b:I

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

    :goto_41
    if-eq v1, v2, :cond_4

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_4
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_42
    sget-object v3, Lskd;->a:Lskd;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_43
    const/4 v6, 0x0

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

    :goto_44
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

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

    nop

    :goto_45
    iget-object v0, p0, Lmtl;->a:Lmtn;

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    check-cast v6, Lrrg;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v0, p0, Lmtl;->a:Lmtn;

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {v1, v2, v3}, Lrrf;->A(ZLjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_90

    nop

    nop

    :goto_4a
    if-eqz v4, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    :cond_5
    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_dd

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    move v1, v5

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    new-instance v6, Lglg;

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_4f
    check-cast v6, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v1, v3}, Lmjv;->J(Ltkb;)V

    :goto_51
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_52
    or-int/2addr v4, v5

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_53
    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-boolean v0, v0, Lmtn;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_55
    check-cast v7, Lsos;

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

    nop

    :goto_56
    rem-int v0, v0, v1

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

    :goto_57
    invoke-static {}, Lnsn;->c()V

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget v4, v3, Lsos;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_59
    const/4 v3, 0x0

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

    :goto_5a
    sget-object v6, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->a:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_5b
    iget-object v1, v0, Lmtn;->a:Lndu;

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v6}, Lj$/time/Duration;->toMillis()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_5d
    if-gt v3, v5, :cond_6

    nop

    goto/32 :goto_84

    nop

    nop

    :cond_6
    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    if-eqz v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_f9

    nop

    nop

    :goto_5f
    or-int/lit8 v6, v6, 0x4

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

    nop

    :goto_60
    sget-object v4, Lskc;->H:Lskc;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_61
    iget v8, v7, Lsos;->b:I

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

    nop

    :goto_62
    iget-object v0, p0, Lmtl;->a:Lmtn;

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v0, v5}, Lmyc;->d(Z)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v6, v2, Ltkb;->b:Ltkg;

    nop

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

    :goto_65
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_67
    or-int/lit8 v7, v7, 0x10

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_68
    if-eqz v6, :cond_8

    nop

    nop

    goto/32 :goto_73

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

    nop

    nop

    :goto_69
    iput v3, v6, Lsos;->g:I

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v3, v3, Lrrg;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iput-object v3, v2, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->f:Landroid/view/ViewPropertyAnimator;

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object v2, v1, Lkol;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_6d
    invoke-interface {v0, v1}, Lnxc;->ae(Lnne;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v6, v6, Lrrg;->c:Ljava/lang/Object;

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

    nop

    :goto_6f
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_6b

    nop

    nop

    :goto_70
    invoke-interface {v0}, Lnxc;->af()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_71
    iget-object v6, v3, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v3}, Ltkb;->o()V

    :goto_73
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_74
    check-cast v3, Lrrg;

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

    :goto_75
    check-cast v4, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_76
    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_77
    iget-object v0, v0, Lmtn;->h:Lkyf;

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_78
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_79
    int-to-long v3, v3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_7c
    iget-object v1, v0, Lmtn;->a:Lndu;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_7d
    iget-object v0, p0, Lmtl;->a:Lmtn;

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_7e
    iget-object v0, v0, Lmtn;->c:Lngo;

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_7f
    invoke-interface {p0}, Lnxc;->s()V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_80
    iget-object v1, v0, Lmhf;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_81
    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_82
    if-eqz v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_83
    iput-wide v6, v3, Lsos;->h:J

    nop

    :goto_84
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_86
    iput v8, v7, Lsos;->b:I

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_87
    if-eqz v6, :cond_a

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_a
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iput v6, v3, Lsos;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    check-cast v1, Lkol;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_8a
    iput-object v3, v2, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->f:Landroid/view/ViewPropertyAnimator;

    nop

    nop

    :goto_8b
    goto/32 :goto_106

    nop

    nop

    nop

    nop

    :goto_8c
    move-object v7, v6

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

    :goto_8d
    if-eqz v6, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iget-object v0, p0, Lmtl;->a:Lmtn;

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iget v8, v3, Lsos;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_90
    sget-object v1, Lgkt;->b:Lgkt;

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

    :goto_91
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

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

    nop

    :goto_93
    iget-object v1, v1, Liof;->b:Ljava/lang/Object;

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

    :goto_94
    iget-object v0, v0, Lmtn;->b:Lglm;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iput v8, v7, Lsos;->b:I

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    iget-object v0, p0, Lmtl;->a:Lmtn;

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_97
    iget-object v0, v0, Lmhf;->h:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_98
    iget-object v1, v0, Lmhf;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_99
    iput v4, v7, Lskd;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    if-eqz v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    :cond_c
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_9c
    iget-object v0, v0, Lmtn;->e:Lnxc;

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_9d
    check-cast v2, Lsos;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_9e
    iget v4, v7, Lskd;->b:I

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    check-cast v0, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_a1
    iget v7, v6, Lsos;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_a2
    move-object v7, v6

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iput v4, v7, Lskd;->b:I

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_a4
    iget-object v2, v0, Lglm;->c:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_a5
    iget-object p0, p0, Lmtn;->e:Lnxc;

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_a6
    iget-object v3, v3, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_a7
    check-cast v7, Lsos;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_a8
    iget-object v0, p0, Lmtl;->a:Lmtn;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v0}, Lkyf;->l()V

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_aa
    check-cast v3, Lsos;

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-interface {v0}, Lngo;->am()V

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_ac
    check-cast v3, Lsos;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    iput-object v2, v4, Lskd;->I:Lsos;

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

    :goto_ae
    iput-object v3, v7, Lsos;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    iget-object v3, v3, Lrrg;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b1
    iget-object v0, v0, Lmtn;->i:Lmhf;

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

    :goto_b2
    if-eqz v3, :cond_d

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_33

    nop

    nop

    :goto_b3
    invoke-direct {v6, v2}, Lglg;-><init>(Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;)V

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_b4
    const v1, 0x5

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_b5
    if-eqz v6, :cond_e

    nop

    goto/32 :goto_f2

    nop

    :cond_e
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    check-cast v3, Lrrg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_b7
    iget-object v0, v0, Lmtn;->d:Lmyc;

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

    :goto_b8
    iget-object v0, p0, Lmtl;->a:Lmtn;

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-virtual {v0}, Lmrp;->f()V

    :goto_ba
    goto/32 :goto_96

    nop

    nop

    nop

    :goto_bb
    iget-object v1, v0, Lmhf;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_bc
    check-cast v7, Lskd;

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_be
    const-string v2, "Cannot transition to IDLE from %s"

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

    :goto_bf
    iget-object v0, v0, Lmhz;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    or-int/lit8 v8, v8, 0x8

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    check-cast v3, Lsos;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c2
    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    :goto_c3
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_c4
    goto/32 :goto_fe

    nop

    nop

    nop

    :goto_c5
    invoke-virtual {v1}, Lrtk;->f()V

    :goto_c6
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_c8
    iget-object v0, v0, Lmtn;->e:Lnxc;

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    if-nez v2, :cond_f

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    iget v8, v7, Lsos;->b:I

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_cd
    sget-object v1, Lgln;->b:Lgln;

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_ce
    or-int/2addr v8, v5

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

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

    :goto_d0
    if-nez v3, :cond_10

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/bottombar/BottomBar;->o(Lryh;)V

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_d2
    check-cast v1, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_d3
    iget-object v1, v1, Lrrg;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_d4
    iget-object v0, p0, Lmtl;->a:Lmtn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_d5
    iget-object v3, v2, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->c:Landroid/view/View$OnLayoutChangeListener;

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_d6
    invoke-static {v3}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

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

    :goto_d8
    iget v4, v4, Lskc;->aG:I

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {v3}, Ltkb;->o()V

    :goto_da
    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_db
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

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

    :goto_dc
    return-void

    nop

    nop

    :goto_dd
    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_de
    check-cast v3, Lrrg;

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

    :goto_df
    iput v2, v4, Lskd;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_e0
    iget-object v8, v1, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e1
    invoke-virtual {v0, v1}, Lglm;->f(Lgln;)V

    :goto_e2
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_e3
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_e4
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_e6
    iget-object v6, v2, Ltkb;->b:Ltkg;

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

    :goto_e7
    iget-object v0, v0, Lmtn;->j:Lmhz;

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_e8
    sget-object v6, Lglk;->c:Lglk;

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_e9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_ea
    iget-boolean v0, v0, Lmtn;->g:Z

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    check-cast v1, Lrrg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_ec
    if-nez v2, :cond_11

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

    :cond_11
    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_ed
    or-int/lit8 v8, v8, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_ee
    invoke-virtual {v2}, Ltkg;->m()Ltkb;

    move-result-object v2

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

    :goto_ef
    iput v7, v6, Lsos;->b:I

    nop

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

    :goto_f0
    invoke-virtual {v3, v6}, Lrtk;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_f1
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_f2
    goto/32 :goto_105

    nop

    nop

    nop

    :goto_f3
    add-int/lit8 v3, v3, -0x1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_f4
    invoke-static {v4}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    :goto_f5
    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    iget v1, v1, Lrrg;->b:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f7
    or-int/lit16 v2, v2, 0x200

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_f8
    invoke-interface {v1, v0}, Lndu;->j(Z)V

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_fa
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    iget-object p0, p0, Lmtl;->a:Lmtn;

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_fc
    check-cast v3, Lrrg;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_fd
    iget-boolean v2, v1, Lrtk;->a:Z

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    iget-object v6, v2, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

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

    nop

    :goto_100
    iput-boolean v4, v1, Lkol;->b:Z

    nop

    nop

    nop

    nop

    :goto_101
    goto/32 :goto_111

    nop

    nop

    nop

    :goto_102
    iget-object v4, v0, Lglm;->b:Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :goto_103
    const v0, 0x1f

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

    nop

    :goto_104
    invoke-virtual {v0, v1}, Lmhf;->c(I)V

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_105
    iget-object v6, v2, Ltkb;->b:Ltkg;

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

    :goto_106
    invoke-virtual {v2}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_107
    if-nez v0, :cond_12

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_a8

    nop

    nop

    :goto_108
    invoke-static {v3, v2, v6, v4}, Lryh;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_109
    move v1, v4

    nop

    nop

    nop

    nop

    :goto_10a
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_10b
    check-cast v4, Lskd;

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_10c
    sget-object v1, Lnne;->b:Lnne;

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_10d
    iget v2, v4, Lskd;->c:I

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

    :goto_10e
    check-cast v3, Loxv;

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_10f
    const v1, 0x7f130087

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    iget-object v3, v1, Liof;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_111
    iget-object v1, v0, Lmhf;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_112
    iput v3, v7, Lsos;->d:I

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_113
    iput-wide v6, v3, Lsos;->f:J

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public d()V
    .locals 0

    goto/32 :goto_0

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
.end method
