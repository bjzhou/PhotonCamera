.class public Lhva;
.super Lhuv;
.source "PG"


# instance fields
.field public final a:Lcom/google/android/apps/camera/evcomp/EvCompView;

.field public final b:Landroid/widget/CheckBox;

.field public final c:Landroid/animation/ObjectAnimator;

.field public final d:Lhvf;

.field public final e:Loyn;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/evcomp/EvCompView;Landroid/widget/CheckBox;Landroid/animation/ObjectAnimator;Lhvf;Lhon;)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Lhva;->d:Lhvf;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-object p1, p0, Lhva;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

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

    :goto_2
    iget-object p2, p5, Lhon;->a:Ljava/lang/Object;

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
    invoke-direct {p0, p1}, Lhuw;-><init>(Lcom/google/android/apps/camera/evcomp/EvCompView;)V

    goto/32 :goto_6

    nop

    nop

    :goto_4
    iput-object p2, p0, Lhva;->e:Loyn;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lhva;->b:Landroid/widget/CheckBox;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p3, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Lhuv;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p0, Lhuw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    iput-object p3, p0, Lhva;->c:Landroid/animation/ObjectAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final h(ZZ)V
    .locals 0

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhva;->c:Landroid/animation/ObjectAnimator;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/high16 p1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto/32 :goto_6

    nop

    nop

    :goto_5
    iget-object p2, p0, Lhva;->d:Lhvf;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    :goto_8
    iget-object p1, p0, Lhva;->c:Landroid/animation/ObjectAnimator;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lhva;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->setAlpha(F)V

    goto/32 :goto_3

    nop

    nop

    :goto_b
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2}, Lhvf;->j()V

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez p2, :cond_1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

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
.end method
