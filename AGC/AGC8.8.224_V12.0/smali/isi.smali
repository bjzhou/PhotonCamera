.class public final Lisi;
.super Ljava/lang/Object;

# interfaces
.implements Litm;
.implements Lheh;
.implements Lkad;


# static fields
.field private static final al:Lnak;


# instance fields
.field public final A:Lgzm;

.field public final B:Ljvs;

.field public final C:Ljwb;

.field public D:Litf;

.field public E:Lita;

.field public F:Lklv;

.field public G:Landroid/widget/ImageButton;

.field public H:Landroid/widget/ImageButton;

.field public I:Lmqp;

.field public J:Landroid/content/res/Resources;

.field public K:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

.field public L:Landroid/widget/SeekBar;

.field public M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

.field public N:Landroid/widget/TextView;

.field public O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

.field public P:Lirs;

.field public Q:Landroid/graphics/PointF;

.field public R:Z

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:Z

.field public final Y:Z

.field public Z:F

.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public aa:F

.field public ab:F

.field public ac:I

.field public ad:I

.field public final ae:Landroid/animation/AnimatorListenerAdapter;

.field public final af:Landroid/animation/AnimatorListenerAdapter;

.field public ag:D

.field public ah:D

.field public ai:I

.field public final aj:Lnom;

.field public final ak:Ljew;

.field private final am:Ldna;

.field private final an:Ljava/util/Set;

.field private final ao:Ljwb;

.field private final ap:Landroid/view/WindowManager;

.field private aq:Lmqp;

.field private ar:Ljava/util/List;

.field private as:Z

.field private final at:Z

.field private final au:Lklx;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Ldbx;

.field public final d:Ldhi;

.field public final e:Ljuf;

.field public final f:Ljwb;

.field public final g:Ljwb;

.field public final h:Ljwb;

.field public final i:Ljava/util/Set;

.field public final j:Ljava/util/Set;

.field public final k:Lell;

.field public final l:Lfbz;

.field public final m:Z

.field public final n:Lkog;

.field public final o:Ljvs;

.field public final p:F

.field public final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final r:Ljava/lang/Runnable;

.field public final s:Ljava/lang/Runnable;

.field public final t:Ljwb;

.field public final u:Ljwb;

.field public final v:Lmqp;

.field public final w:Ljava/util/concurrent/Executor;

.field public final x:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final y:Lmqp;

.field public final z:Lirt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/zoomui/ZoomUiControllerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lisi;->al:Lnak;

    return-void
.end method

.method public constructor <init>(Ljwb;Ljwb;Ljava/util/Set;Ljew;Lfbz;Ldhi;Lell;Ljew;Lklx;Ldna;Ldbx;Lkog;Ljwb;FLnom;Ljava/util/concurrent/Executor;Landroid/view/WindowManager;Lmqp;Lgzm;Ljvs;Ljwb;Ljwb;[B[B[B[B[B)V
    .locals 6

    move-object v0, p0

    move-object v1, p6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, v0, Lisi;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, v0, Lisi;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljvk;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v4}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lisi;->f:Ljwb;

    new-instance v2, Ljvk;

    invoke-direct {v2, v4}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lisi;->g:Ljwb;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v0, Lisi;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Liqg;

    const/16 v5, 0x11

    invoke-direct {v2, p0, v5}, Liqg;-><init>(Lisi;I)V

    iput-object v2, v0, Lisi;->r:Ljava/lang/Runnable;

    new-instance v2, Liqg;

    const/16 v5, 0x12

    invoke-direct {v2, p0, v5}, Liqg;-><init>(Lisi;I)V

    iput-object v2, v0, Lisi;->s:Ljava/lang/Runnable;

    new-instance v2, Ljvk;

    invoke-direct {v2, v4}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lisi;->u:Ljwb;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v0, Lisi;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v2, Lklv;->b:Lklv;

    iput-object v2, v0, Lisi;->F:Lklv;

    sget-object v2, Lmpx;->a:Lmpx;

    iput-object v2, v0, Lisi;->aq:Lmqp;

    iput-object v2, v0, Lisi;->I:Lmqp;

    new-instance v2, Lisa;

    invoke-direct {v2, p0}, Lisa;-><init>(Lisi;)V

    iput-object v2, v0, Lisi;->ae:Landroid/animation/AnimatorListenerAdapter;

    new-instance v2, Lisb;

    invoke-direct {v2, p0}, Lisb;-><init>(Lisi;)V

    iput-object v2, v0, Lisi;->af:Landroid/animation/AnimatorListenerAdapter;

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v0, Lisi;->ag:D

    iput-wide v4, v0, Lisi;->ah:D

    new-instance v2, Ljuf;

    invoke-direct {v2}, Ljuf;-><init>()V

    iput-object v2, v0, Lisi;->e:Ljuf;

    move-object v2, p1

    iput-object v2, v0, Lisi;->h:Ljwb;

    move-object v2, p2

    iput-object v2, v0, Lisi;->t:Ljwb;

    invoke-virtual {p4}, Ljew;->L()Z

    move-result v2

    iput-boolean v2, v0, Lisi;->m:Z

    move-object v4, p5

    iput-object v4, v0, Lisi;->l:Lfbz;

    iput-object v1, v0, Lisi;->d:Ldhi;

    new-instance v4, Ljava/util/HashSet;

    move-object v5, p3

    invoke-direct {v4, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v4, v0, Lisi;->i:Ljava/util/Set;

    new-instance v5, Lish;

    invoke-direct {v5, p0, v3}, Lish;-><init>(Lisi;I)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v0, Lisi;->an:Ljava/util/Set;

    move-object v4, p7

    iput-object v4, v0, Lisi;->k:Lell;

    move-object v4, p8

    iput-object v4, v0, Lisi;->ak:Ljew;

    move-object v4, p9

    iput-object v4, v0, Lisi;->au:Lklx;

    move-object/from16 v4, p10

    iput-object v4, v0, Lisi;->am:Ldna;

    move-object/from16 v4, p11

    iput-object v4, v0, Lisi;->c:Ldbx;

    move-object/from16 v4, p12

    iput-object v4, v0, Lisi;->n:Lkog;

    move-object/from16 v4, p13

    iput-object v4, v0, Lisi;->o:Ljvs;

    move/from16 v4, p14

    iput v4, v0, Lisi;->p:F

    sget-object v4, Ldho;->aj:Ldhj;

    invoke-interface {p6, v4}, Ldhi;->l(Ldhj;)Z

    move-result v4

    iput-boolean v4, v0, Lisi;->S:Z

    move-object/from16 v4, p15

    iput-object v4, v0, Lisi;->aj:Lnom;

    move-object/from16 v4, p16

    iput-object v4, v0, Lisi;->w:Ljava/util/concurrent/Executor;

    sget-object v4, Ldho;->b:Ldhk;

    invoke-interface {p6, v4}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v4

    iput-object v4, v0, Lisi;->v:Lmqp;

    sget-object v4, Ldho;->ai:Ldhj;

    invoke-interface {p6, v4}, Ldhi;->l(Ldhj;)Z

    move-result v4

    iput-boolean v4, v0, Lisi;->at:Z

    move-object/from16 v4, p17

    iput-object v4, v0, Lisi;->ap:Landroid/view/WindowManager;

    move-object/from16 v4, p18

    iput-object v4, v0, Lisi;->y:Lmqp;

    new-instance v4, Lirt;

    invoke-direct {v4, p6}, Lirt;-><init>(Ldhi;)V

    iput-object v4, v0, Lisi;->z:Lirt;

    move-object/from16 v4, p19

    iput-object v4, v0, Lisi;->A:Lgzm;

    move-object/from16 v4, p20

    iput-object v4, v0, Lisi;->B:Ljvs;

    sget-object v4, Ldho;->am:Ldhj;

    invoke-interface {p6, v4}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    iput-boolean v3, v0, Lisi;->Y:Z

    move-object/from16 v1, p21

    iput-object v1, v0, Lisi;->C:Ljwb;

    move-object/from16 v1, p22

    iput-object v1, v0, Lisi;->ao:Ljwb;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lisi;->j:Ljava/util/Set;

    return-void
.end method

.method private final af(I)V
    .locals 1

    iget-object v0, p0, Lisi;->H:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lisi;->G:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method private final ag()V
    .locals 5

    iget v0, p0, Lisi;->aa:F

    iget-object v1, p0, Lisi;->d:Ldhi;

    sget-object v2, Ldgu;->y:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lisi;->aq:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lisi;->d:Ldhi;

    sget-object v2, Ldgu;->A:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lisi;->o:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lika;

    sget-object v2, Lika;->t:Lika;

    invoke-virtual {v1, v2}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :cond_0
    sget-object v2, Lika;->f:Lika;

    invoke-virtual {v1, v2}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lisi;->d:Ldhi;

    sget-object v2, Ldgu;->D:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto/16 :goto_0

    :cond_1
    sget-object v1, Ljws;->a:Ljws;

    iget-object v1, p0, Lisi;->aq:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljws;

    invoke-virtual {v1}, Ljws;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lisi;->d:Ldhi;

    sget-object v2, Ldgu;->D:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-boolean v1, p0, Lisi;->as:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lisi;->d:Ldhi;

    sget-object v2, Ldgu;->B:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-boolean v1, p0, Lisi;->as:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lisi;->d:Ldhi;

    sget-object v2, Ldgu;->B:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lisi;->d:Ldhi;

    sget-object v2, Ldgu;->C:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_3
    :goto_0
    iget-object v1, p0, Lisi;->d:Ldhi;

    sget-object v2, Ldib;->O:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lisi;->o:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lika;

    sget-object v2, Lika;->g:Lika;

    invoke-virtual {v1, v2}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lklv;->b:Lklv;

    iget-object v2, p0, Lisi;->F:Lklv;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lisi;->d:Ldhi;

    sget-object v2, Ldib;->M:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_4
    sget-object v1, Lklv;->a:Lklv;

    iget-object v2, p0, Lisi;->F:Lklv;

    if-ne v1, v2, :cond_5

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_5
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0}, Lisi;->g()F

    move-result v2

    div-float v2, v0, v2

    iget-object v3, p0, Lisi;->h:Ljwb;

    invoke-interface {v3}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0}, Lisi;->g()F

    move-result v4

    div-float/2addr v3, v4

    cmpl-float v3, v3, v2

    if-lez v3, :cond_6

    iget-object v3, p0, Lisi;->h:Ljwb;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v3, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v3, p0, Lisi;->t:Ljwb;

    invoke-interface {v3, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_6
    iget-object v2, p0, Lisi;->E:Lita;

    iput v0, v2, Lita;->E:F

    iget-object v2, v2, Lita;->t:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->k(F)V

    iget-object v0, p0, Lisi;->f:Ljwb;

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lisi;->P()V

    invoke-virtual {p0}, Lisi;->t()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final ah()Z
    .locals 2

    iget-boolean v0, p0, Lisi;->at:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lisi;->c:Ldbx;

    invoke-interface {v0}, Ldbx;->d()Lklv;

    move-result-object v0

    sget-object v1, Lklv;->a:Lklv;

    invoke-virtual {v0, v1}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final ai()Z
    .locals 2

    iget-object v0, p0, Lisi;->o:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    sget-object v1, Lika;->c:Lika;

    if-eq v0, v1, :cond_1

    sget-object v1, Lika;->n:Lika;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final aj()Lfuz;
    .locals 4

    iget-object v0, p0, Lisi;->au:Lklx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lisi;->am:Ldna;

    iget-object v2, p0, Lisi;->d:Ldhi;

    iget-object v3, p0, Lisi;->F:Lklv;

    invoke-virtual {v1, v0, v2, v3}, Ldna;->b(Lklj;Ldhi;Lklv;)Lkll;

    move-result-object v0

    invoke-direct {p0}, Lisi;->ah()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lisi;->c:Ldbx;

    invoke-interface {v1}, Ldbx;->d()Lklv;

    move-result-object v1

    sget-object v2, Lklv;->a:Lklv;

    invoke-virtual {v1, v2}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lisi;->au:Lklx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lklx;->f(Lkll;)Lfuz;

    move-result-object v0

    iget-object v1, p0, Lisi;->au:Lklx;

    invoke-static {v0, v1}, Lgky;->i(Lkli;Lklj;)Lfuz;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lisi;->au:Lklx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lklx;->f(Lkll;)Lfuz;

    move-result-object v0

    return-object v0
.end method

.method private final ak(Lfuz;)Z
    .locals 2

    iget-object v0, p0, Lisi;->F:Lklv;

    sget-object v1, Lklv;->a:Lklv;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lklw;->C()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final A()V
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lisi;->Q:Landroid/graphics/PointF;

    return-void
.end method

.method public final B(Z)V
    .locals 3

    iget-object v0, p0, Lisi;->K:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setAccessibilityLiveRegion(I)V

    iget-object v0, p0, Lisi;->o:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    invoke-virtual {p0, p1, v0}, Lisi;->c(ZLika;)F

    move-result p1

    iget-object v0, p0, Lisi;->P:Lirs;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lirs;->e:Z

    iget-object v0, p0, Lisi;->h:Ljwb;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lisi;->d:Ldhi;

    sget-object v2, Ldho;->aj:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lisi;->t:Ljwb;

    invoke-interface {v0, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lisi;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lisi;->y()V

    iget-object p1, p0, Lisi;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method

.method public final C()V
    .locals 2

    iget-object v0, p0, Lisi;->K:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    iget-object v0, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Litj;->b:Litj;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lisi;->P:Lirs;

    iget-object v0, v0, Lirs;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Litj;->b:Litj;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lisi;->M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    iget-object v0, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Litj;->b:Litj;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final D(F)V
    .locals 1

    iget-object v0, p0, Lisi;->h:Ljwb;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lisi;->t:Ljwb;

    invoke-interface {v0, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void
.end method

.method public final E(F)V
    .locals 0

    iput p1, p0, Lisi;->aa:F

    invoke-direct {p0}, Lisi;->ag()V

    return-void
.end method

.method public final F(F)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lisi;->E:Lita;

    iput p1, v1, Lita;->F:F

    iget-object v1, v1, Lita;->t:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    iput p1, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->e:F

    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->m()V

    iget-object p1, p0, Lisi;->g:Ljwb;

    invoke-interface {p1, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lisi;->P()V

    invoke-virtual {p0}, Lisi;->t()V

    return-void
.end method

.method public final G()V
    .locals 2

    invoke-virtual {p0}, Lisi;->f()F

    move-result v0

    invoke-virtual {p0, v0}, Lisi;->F(F)V

    iget-object v1, p0, Lisi;->h:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    invoke-virtual {p0, v0}, Lisi;->D(F)V

    :cond_0
    return-void
.end method

.method public final H(Landroid/widget/ImageButton;Z)V
    .locals 1

    new-instance v0, Lirv;

    invoke-direct {v0, p0, p2}, Lirv;-><init>(Lisi;Z)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lirw;

    invoke-direct {v0, p0, p2}, Lirw;-><init>(Lisi;Z)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance p2, Lirz;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lirz;-><init>(Lisi;I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final I(Z)V
    .locals 1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lisi;->W:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lisi;->E:Lita;

    invoke-virtual {p1}, Lisk;->u()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lisi;->D:Litf;

    invoke-virtual {p1}, Litc;->a()V

    :goto_0
    iget-boolean p1, p0, Lisi;->m:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lisi;->d:Ldhi;

    sget-object v0, Ldho;->aj:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lisi;->af(I)V

    :cond_1
    invoke-virtual {p0}, Lisi;->p()V

    return-void

    :cond_2
    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lisi;->af(I)V

    iget-object p1, p0, Lisi;->d:Ldhi;

    sget-object v0, Ldho;->aj:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lisi;->h:Ljwb;

    invoke-interface {p1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lisi;->g:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lisi;->n()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lisi;->p()V

    return-void

    :cond_4
    iget-object p1, p0, Lisi;->D:Litf;

    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lisi;->W:Z

    if-eqz v0, :cond_5

    iget-object p1, p0, Lisi;->E:Lita;

    invoke-virtual {p1}, Lisk;->r()V

    return-void

    :cond_5
    invoke-virtual {p1}, Litc;->b()V

    return-void

    :cond_6
    return-void
.end method

.method public final J(Litj;)V
    .locals 1

    iget-object v0, p0, Lisi;->K:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    iget-object v0, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lisi;->P:Lirs;

    iget-object v0, v0, Lirs;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lisi;->M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    iget-object v0, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final K(Z)V
    .locals 1

    iget-object v0, p0, Lisi;->E:Lita;

    iput-boolean p1, v0, Lita;->I:Z

    return-void
.end method

.method public final L()V
    .locals 1

    iget-boolean v0, p0, Lisi;->S:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lisi;->m()V

    iget-object v0, p0, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lisi;->E:Lita;

    invoke-virtual {v0}, Lisk;->a()V

    :cond_0
    iget-object v0, p0, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lisi;->E:Lita;

    invoke-virtual {v0}, Lisk;->k()V

    :cond_1
    return-void
.end method

.method public final M()V
    .locals 1

    invoke-virtual {p0}, Lisi;->m()V

    iget-object v0, p0, Lisi;->E:Lita;

    invoke-virtual {v0}, Lita;->F()V

    return-void
.end method

.method public final N(I)V
    .locals 0

    iput p1, p0, Lisi;->ad:I

    const/4 p1, 0x0

    iput p1, p0, Lisi;->ac:I

    return-void
.end method

.method public final O(Lmqp;Z)V
    .locals 1

    iput-object p1, p0, Lisi;->aq:Lmqp;

    iput-boolean p2, p0, Lisi;->as:Z

    iget-object v0, p0, Lisi;->P:Lirs;

    iput-boolean p2, v0, Lirs;->d:Z

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljws;

    iput-object p2, v0, Lirs;->f:Ljws;

    :cond_0
    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lisi;->ag()V

    :cond_1
    return-void
.end method

.method public final P()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lisi;->g:Ljwb;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0}, Lisi;->aj()Lfuz;

    move-result-object v2

    invoke-direct {p0, v2}, Lisi;->ak(Lfuz;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lisi;->am:Ldna;

    invoke-direct {p0}, Lisi;->aj()Lfuz;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldna;->a(Lkli;)F

    move-result v2

    goto :goto_0

    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    :goto_0
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    if-lez v4, :cond_2

    iget-object v4, p0, Lisi;->f:Ljwb;

    check-cast v4, Ljvk;

    iget-object v4, v4, Ljvk;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    cmpg-float v4, v1, v3

    if-gez v4, :cond_1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_1
    mul-float v1, v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lisi;->f:Ljwb;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lisi;->ar:Ljava/util/List;

    return-void
.end method

.method public final Q(I)V
    .locals 7

    iget-object v0, p0, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lisi;->P:Lirs;

    invoke-virtual {v0, p1}, Lirs;->a(I)F

    move-result p1

    iget-object v0, p0, Lisi;->ao:Ljwb;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lisi;->C:Ljwb;

    sget-object v2, Lgdi;->b:Ljava/lang/Byte;

    invoke-interface {v0, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lisi;->P:Lirs;

    iget-object v2, p0, Lisi;->h:Ljwb;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lisi;->af:Landroid/animation/AnimatorListenerAdapter;

    iget-object v4, v0, Lirs;->b:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v2, v5, v6

    const/4 v2, 0x1

    aput p1, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v2, v0, Lirs;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v0, Lirs;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lisi;->t:Ljwb;

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lisi;->P:Lirs;

    iget-object v1, p0, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v0, p1}, Lirs;->d(F)Litn;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lirs;->e(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Litn;)V

    iget-object v0, p0, Lisi;->E:Lita;

    iget-object v1, p0, Lisi;->h:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1, p1}, Lita;->J(IFF)V

    :cond_0
    return-void
.end method

.method public final R()V
    .locals 1

    iget-object v0, p0, Lisi;->M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lisi;->M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final S()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lisi;->ac(Z)F

    move-result v0

    iget-object v1, p0, Lisi;->d:Ldhi;

    sget-object v2, Ldho;->cc:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lisi;->M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    iget v1, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->f:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    move v0, v1

    :cond_0
    iget-object v1, p0, Lisi;->E:Lita;

    const/16 v2, 0x9

    invoke-virtual {v1, v0, v2}, Lisk;->d(FI)V

    return-void
.end method

.method public final T()V
    .locals 3

    iget-object v0, p0, Lisi;->E:Lita;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lisi;->ac(Z)F

    move-result v1

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lisk;->d(FI)V

    return-void
.end method

.method public final U(F)V
    .locals 2

    iget-object v0, p0, Lisi;->E:Lita;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lisk;->d(FI)V

    iget-object v0, p0, Lisi;->t:Ljwb;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lisi;->ao:Ljwb;

    invoke-interface {v0, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void
.end method

.method public final V()Z
    .locals 4

    iget-object v0, p0, Lisi;->o:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    invoke-virtual {p0}, Lisi;->e()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lisi;->c:Ldbx;

    invoke-interface {v1}, Ldbx;->d()Lklv;

    move-result-object v1

    sget-object v2, Lklv;->b:Lklv;

    invoke-virtual {v1, v2}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lisi;->d:Ldhi;

    sget-object v2, Ldho;->ah:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lika;->b:Lika;

    invoke-virtual {v0, v2}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lika;->m:Lika;

    invoke-virtual {v0, v2}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lika;->l:Lika;

    invoke-virtual {v0, v2}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lika;->h:Lika;

    invoke-virtual {v0, v2}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lika;->c:Lika;

    invoke-virtual {v0, v2}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lika;->n:Lika;

    invoke-virtual {v0, v2}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lika;->i:Lika;

    invoke-virtual {v0, v2}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return v3

    :cond_2
    :goto_1
    return v1
.end method

.method public final W()Z
    .locals 5

    iget-object v0, p0, Lisi;->P:Lirs;

    invoke-virtual {p0}, Lisi;->e()F

    move-result v1

    invoke-virtual {p0}, Lisi;->e()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lirs;->c(FF)F

    move-result v0

    iget-object v1, p0, Lisi;->n:Lkog;

    iget-boolean v1, v1, Lkog;->h:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    cmpl-float v0, v0, v4

    if-gez v0, :cond_2

    invoke-virtual {p0}, Lisi;->e()F

    move-result v0

    cmpl-float v0, v0, v4

    if-gez v0, :cond_2

    iget-object v0, p0, Lisi;->o:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    sget-object v1, Lika;->g:Lika;

    invoke-virtual {v0, v1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lisi;->o:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    sget-object v1, Lika;->f:Lika;

    invoke-virtual {v0, v1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lisi;->o:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    sget-object v1, Lika;->c:Lika;

    invoke-virtual {v0, v1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lisi;->as:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lisi;->aq:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljws;->d:Ljws;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lisi;->aq:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljws;->e:Ljws;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lisi;->aq:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljws;->f:Ljws;

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lisi;->c:Ldbx;

    invoke-interface {v0}, Ldbx;->d()Lklv;

    move-result-object v0

    sget-object v1, Lklv;->a:Lklv;

    invoke-virtual {v0, v1}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v3

    :cond_3
    cmpl-float v0, v0, v4

    if-gez v0, :cond_5

    invoke-virtual {p0}, Lisi;->e()F

    move-result v0

    cmpl-float v0, v0, v4

    if-gez v0, :cond_5

    iget-object v0, p0, Lisi;->o:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    sget-object v1, Lika;->g:Lika;

    invoke-virtual {v0, v1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lisi;->o:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    sget-object v1, Lika;->t:Lika;

    invoke-virtual {v0, v1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lisi;->c:Ldbx;

    invoke-interface {v0}, Ldbx;->d()Lklv;

    move-result-object v0

    sget-object v1, Lklv;->a:Lklv;

    invoke-virtual {v0, v1}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    return v2

    :cond_5
    :goto_1
    return v3
.end method

.method public final X()Z
    .locals 2

    iget-object v0, p0, Lisi;->d:Ldhi;

    sget-object v1, Ldho;->ar:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    return v0
.end method

.method public final Y()Z
    .locals 2

    iget-boolean v0, p0, Lisi;->R:Z

    if-eqz v0, :cond_0

    sget-object v0, Lklv;->a:Lklv;

    iget-object v1, p0, Lisi;->F:Lklv;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final Z(Lika;)Z
    .locals 2

    iget-object v0, p0, Lisi;->K:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setAccessibilityLiveRegion(I)V

    invoke-virtual {p0}, Lisi;->h()F

    move-result v0

    invoke-virtual {p0, v1, p1}, Lisi;->c(ZLika;)F

    move-result p1

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final a(Lmqp;)V
    .locals 3

    iget-object v0, p0, Lisi;->w:Ljava/util/concurrent/Executor;

    new-instance v1, Lioi;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, v2}, Lioi;-><init>(Lisi;Lmqp;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final aa()Z
    .locals 4

    iget-boolean v0, p0, Lisi;->S:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lisi;->h()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_0

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_0

    const v3, 0x3f1d70a4    # 0.615f

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_0

    const/high16 v3, 0x3fc00000    # 1.5f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lisi;->h()F

    move-result v0

    iget-object v3, p0, Lisi;->o:Ljvs;

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lika;

    invoke-virtual {p0, v2, v3}, Lisi;->c(ZLika;)F

    move-result v3

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public final ab()V
    .locals 2

    iget-object v0, p0, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    iget-boolean v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f:Z

    iget-object v0, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final ac(Z)F
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lisi;->ar:Ljava/util/List;

    new-instance v0, Liru;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Liru;-><init>(Lisi;I)V

    invoke-static {p1, v0}, Llkj;->q(Ljava/util/Collection;Lmqs;)Ljava/util/Collection;

    move-result-object p1

    iget-object v0, p0, Lisi;->f:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-static {p1, v0}, Llyh;->R(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lisi;->ar:Ljava/util/List;

    new-instance v0, Liru;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Liru;-><init>(Lisi;I)V

    invoke-static {p1, v0}, Llkj;->q(Ljava/util/Collection;Lmqs;)Ljava/util/Collection;

    move-result-object p1

    iget-object v0, p0, Lisi;->g:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-static {p1, v0}, Llyh;->T(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_0
    iget-object v0, p0, Lisi;->h:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    return p1
.end method

.method public final ad(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lisi;->d:Ldhi;

    sget-object v0, Ldho;->aj:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lisi;->n()V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lisi;->B(Z)V

    :cond_1
    return-void
.end method

.method public final ae(F)V
    .locals 6

    iget-object v0, p0, Lisi;->M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->e(F)F

    move-result p1

    iget-object v0, p0, Lisi;->M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    iget v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->c:F

    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->d:F

    cmpl-float v3, v1, v2

    if-gtz v3, :cond_0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_0

    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    :cond_0
    sget-object v1, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x1164

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->c:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->d:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "The currentGradationValue of %f is out of range: [%f, %f]"

    invoke-interface {v1, v5, v2, v3, v4}, Lnah;->B(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->c:F

    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->d:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->d:F

    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h:F

    iget v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->c:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    move v1, v3

    :cond_1
    iput v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h:F

    :cond_2
    iget-boolean v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->q:Z

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iget-object v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->o:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object p1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->o:Landroid/widget/Scroller;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void

    :cond_4
    iput p1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h:F

    iget p1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->c:F

    iget p1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->d:F

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->p:Z

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->g()V

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->invalidate()V

    return-void
.end method

.method public final b()F
    .locals 2

    iget-object v0, p0, Lisi;->F:Lklv;

    sget-object v1, Lklv;->a:Lklv;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lisi;->S:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lisi;->P:Lirs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lirs;->a(I)F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final c(ZLika;)F
    .locals 3

    sget-object v0, Lika;->g:Lika;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lisi;->F:Lklv;

    sget-object v1, Lklv;->a:Lklv;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lisi;->d:Ldhi;

    sget-object v1, Ldib;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->c()V

    :cond_0
    invoke-direct {p0}, Lisi;->aj()Lfuz;

    move-result-object v0

    iget v1, p0, Lisi;->p:F

    invoke-direct {p0, v0}, Lisi;->ak(Lfuz;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    iget-object p1, p0, Lisi;->am:Ldna;

    invoke-virtual {p1, v0}, Ldna;->a(Lkli;)F

    move-result v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lisi;->ah()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lisi;->F:Lklv;

    sget-object v2, Lklv;->a:Lklv;

    if-ne p1, v2, :cond_3

    invoke-direct {p0}, Lisi;->ai()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lisi;->P:Lirs;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lirs;->a(I)F

    move-result v1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lisi;->P:Lirs;

    invoke-virtual {p1, v0}, Lirs;->a(I)F

    move-result v1

    goto :goto_0

    :cond_3
    sget-object p1, Lika;->g:Lika;

    if-eq p2, p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lisi;->f()F

    move-result p1

    return p1

    :cond_5
    sget-object p1, Lika;->g:Lika;

    if-ne p2, p1, :cond_7

    iget-object p1, p0, Lisi;->F:Lklv;

    sget-object p2, Lklv;->a:Lklv;

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Lisi;->d:Ldhi;

    sget-object p2, Ldib;->N:Ldhj;

    invoke-interface {p1, p2}, Ldhi;->l(Ldhj;)Z

    move-result p1

    xor-int/2addr p1, v0

    iget-object p2, p0, Lisi;->P:Lirs;

    invoke-virtual {p2, p1}, Lirs;->a(I)F

    move-result v1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lisi;->f()F

    move-result v1

    goto :goto_0

    :cond_7
    :goto_0
    return v1
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lisi;->y:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lisi;->y:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhei;

    invoke-interface {v0, p0}, Lhei;->h(Lheh;)V

    :cond_0
    iget-object v0, p0, Lisi;->e:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    return-void
.end method

.method public final d()F
    .locals 1

    iget-object v0, p0, Lisi;->f:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final e()F
    .locals 1

    iget-object v0, p0, Lisi;->g:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method final f()F
    .locals 5

    invoke-direct {p0}, Lisi;->aj()Lfuz;

    move-result-object v0

    iget-object v1, p0, Lisi;->am:Ldna;

    invoke-virtual {v1, v0}, Ldna;->a(Lkli;)F

    move-result v1

    iget-object v2, p0, Lisi;->F:Lklv;

    sget-object v3, Lklv;->b:Lklv;

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lisi;->d:Ldhi;

    sget-object v2, Ldib;->f:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float v4, v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lklw;->C()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lisi;->S:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x3f99999a    # 1.2f

    mul-float v4, v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lisi;->ah()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    return v4

    :cond_3
    invoke-virtual {p0}, Lisi;->e()F

    move-result v0

    return v0
.end method

.method public final g()F
    .locals 3

    iget-object v0, p0, Lisi;->K:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    iget-object v1, p0, Lisi;->g:Ljwb;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0}, Lisi;->b()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->a(FF)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final h()F
    .locals 1

    iget-object v0, p0, Lisi;->h:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final i(Landroid/view/MotionEvent;)F
    .locals 2

    iget-object v0, p0, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v0, Liko;->a:Liko;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Liko;->b(Landroid/view/Display;Landroid/content/Context;)Liko;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lisi;->Q:Landroid/graphics/PointF;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-static {v0}, Liko;->e(Liko;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lisi;->Q:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    goto :goto_1

    :cond_2
    sget-object v1, Liko;->c:Liko;

    invoke-virtual {v0, v1}, Liko;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lisi;->Q:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object p1, p0, Lisi;->Q:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    :goto_1
    sub-float/2addr p1, v0

    return p1
.end method

.method public final j(F)I
    .locals 4

    iget-object v0, p0, Lisi;->g:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    iget-object p1, p0, Lisi;->f:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v2, p0, Lisi;->g:Ljwb;

    check-cast v2, Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr p1, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float p1, v0

    const v0, 0x47c35000    # 100000.0f

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v0, p0, Lisi;->L:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->D()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lisi;->L:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return p1
.end method

.method public final k(Litl;)V
    .locals 1

    iget-object v0, p0, Lisi;->an:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final l(Z)V
    .locals 2

    iget-object v0, p0, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->C(ZLandroid/animation/Animator$AnimatorListener;)Z

    return-void
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lisi;->E:Lita;

    invoke-virtual {v0}, Lita;->z()V

    return-void
.end method

.method public final n()V
    .locals 1

    iget-boolean v0, p0, Lisi;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lisi;->E:Lita;

    invoke-virtual {v0}, Lisk;->a()V

    invoke-virtual {p0}, Lisi;->m()V

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 8

    iget-object v0, p0, Lisi;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lisi;->T:Z

    iput-boolean v0, p0, Lisi;->U:Z

    iget-object v1, p0, Lisi;->M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    iget-object v1, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->o:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object v0, p0, Lisi;->M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    invoke-virtual {p0}, Lisi;->g()F

    move-result v1

    iput v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->n:F

    iget-object v0, p0, Lisi;->M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i()V

    iget-object v0, p0, Lisi;->t:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lisi;->j(F)I

    move-result v0

    iget-object v1, p0, Lisi;->K:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    iget-object v2, p0, Lisi;->t:Ljwb;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lisi;->g:Ljwb;

    check-cast v3, Ljvk;

    iget-object v3, v3, Ljvk;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0}, Lisi;->b()F

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->e(IFFF)V

    iget-object v1, p0, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v1, Liko;->a:Liko;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v2, v1}, Liko;->b(Landroid/view/Display;Landroid/content/Context;)Liko;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lisi;->Q:Landroid/graphics/PointF;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v2, p0, Lisi;->ap:Landroid/view/WindowManager;

    if-eqz v2, :cond_3

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v4, p0, Lisi;->ap:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lisi;->J:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lisi;->J:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_1
    iget-object v5, p0, Lisi;->K:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    invoke-virtual {v5}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v1}, Liko;->e(Liko;)Z

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v6, :cond_4

    iget-object v1, p0, Lisi;->Q:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    int-to-float v2, v4

    div-float/2addr v2, v7

    sub-float v3, v1, v2

    goto :goto_2

    :cond_4
    sget-object v4, Liko;->c:Liko;

    invoke-virtual {v1, v4}, Liko;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lisi;->Q:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_5

    iget-object v1, p0, Lisi;->Q:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    int-to-float v2, v2

    div-float/2addr v2, v7

    sub-float v3, v1, v2

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lisi;->Q:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    int-to-float v2, v2

    div-float/2addr v2, v7

    sub-float v3, v1, v2

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lisi;->Q:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_7

    int-to-float v1, v2

    iget-object v2, p0, Lisi;->Q:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v1

    iget v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v3, v3

    div-float/2addr v1, v7

    sub-float/2addr v2, v3

    sub-float v3, v2, v1

    goto :goto_2

    :cond_7
    int-to-float v1, v2

    iget-object v2, p0, Lisi;->Q:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v2, v1, v2

    iget v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v3, v3

    div-float/2addr v1, v7

    sub-float/2addr v2, v3

    sub-float v3, v2, v1

    :goto_2
    iput v3, p0, Lisi;->ab:F

    iget-object v1, p0, Lisi;->E:Lita;

    invoke-virtual {v1}, Lisk;->s()V

    iget-boolean v1, p0, Lisi;->V:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lisi;->aj:Lnom;

    invoke-virtual {v1}, Lnom;->d()V

    :cond_8
    iget-object v1, p0, Lisi;->L:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lisi;->t:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lisi;->ae(F)V

    return-void
.end method

.method public final p()V
    .locals 3

    invoke-static {}, Ljuh;->d()Z

    move-result v0

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Lisi;->L:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isEnabled()Z

    iget-boolean v0, p0, Lisi;->S:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lisi;->m:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lisi;->e()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lisi;->o:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lika;->f:Lika;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lisi;->o:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lika;->g:Lika;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lisi;->o:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lika;->t:Lika;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lisi;->W()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lisi;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lisi;->W()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    :goto_0
    iget-object v0, p0, Lisi;->E:Lita;

    invoke-virtual {v0, v2}, Lisk;->l(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lisi;->E:Lita;

    invoke-virtual {v0}, Lisk;->k()V

    iget-boolean v0, p0, Lisi;->m:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lisi;->aa()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lisi;->M()V

    return-void

    :cond_4
    invoke-virtual {p0}, Lisi;->m()V

    return-void
.end method

.method public final q(Z)V
    .locals 1

    iget-object v0, p0, Lisi;->E:Lita;

    iput-boolean p1, v0, Lita;->H:Z

    return-void
.end method

.method public final r(Z)V
    .locals 1

    iget-boolean v0, p0, Lisi;->Y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lisi;->M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    iput-boolean p1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->r:Z

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 2

    iget-boolean v0, p0, Lisi;->S:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lisi;->d:Ldhi;

    sget-object v1, Ldho;->ai:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lisi;->c:Ldbx;

    invoke-interface {v0}, Ldbx;->d()Lklv;

    move-result-object v0

    sget-object v1, Lklv;->a:Lklv;

    invoke-virtual {v0, v1}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lisi;->C()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lisi;->ah()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lisi;->ai()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lisi;->C()V

    goto :goto_0

    :cond_2
    sget-object v0, Litj;->c:Litj;

    invoke-virtual {p0, v0}, Lisi;->J(Litj;)V

    :goto_0
    invoke-virtual {p0}, Lisi;->p()V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, Lisi;->an:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Litl;

    invoke-interface {v1}, Litl;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final u(F)V
    .locals 2

    iget-object v0, p0, Lisi;->d:Ldhi;

    sget-object v1, Ldho;->cc:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lisi;->h()F

    move-result v0

    invoke-static {p1, v0}, Lkba;->q(FF)F

    move-result v0

    invoke-virtual {p0}, Lisi;->d()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lisi;->M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    iget v1, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->f:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lisi;->E:Lita;

    invoke-virtual {v0, p1}, Lisk;->t(F)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lisi;->E:Lita;

    invoke-virtual {v0, p1}, Lisk;->t(F)V

    return-void
.end method

.method public final v()V
    .locals 1

    iget-object v0, p0, Lisi;->h:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lisi;->Z:F

    iget-object v0, p0, Lisi;->E:Lita;

    invoke-virtual {v0}, Lisk;->c()V

    return-void
.end method

.method public final w()V
    .locals 4

    iget-object v0, p0, Lisi;->E:Lita;

    invoke-virtual {v0}, Lisk;->p()V

    iget-boolean v0, p0, Lisi;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lisi;->E:Lita;

    invoke-virtual {v0}, Lita;->F()V

    :cond_0
    iget-object v0, p0, Lisi;->E:Lita;

    iget v1, p0, Lisi;->Z:F

    iget-object v2, p0, Lisi;->h:Ljwb;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v1, v2}, Lita;->J(IFF)V

    return-void
.end method

.method public final x()V
    .locals 1

    invoke-virtual {p0}, Lisi;->y()V

    invoke-direct {p0}, Lisi;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lisi;->z()V

    :cond_0
    return-void
.end method

.method public final y()V
    .locals 4

    invoke-direct {p0}, Lisi;->aj()Lfuz;

    move-result-object v0

    invoke-virtual {v0}, Lklw;->b()F

    move-result v1

    iput v1, p0, Lisi;->aa:F

    invoke-direct {p0}, Lisi;->ag()V

    invoke-direct {p0, v0}, Lisi;->ak(Lfuz;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lisi;->am:Ldna;

    invoke-virtual {v1, v0}, Ldna;->a(Lkli;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    mul-float v0, v0, v0

    invoke-virtual {p0, v0}, Lisi;->E(F)V

    return-void

    :cond_0
    sget-object v1, Lisi;->al:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "unable to set zoom max with zoomValue <= 1: %g"

    const/16 v3, 0x1149

    invoke-static {v1, v2, v0, v3}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :cond_1
    return-void
.end method

.method public final z()V
    .locals 1

    invoke-direct {p0}, Lisi;->aj()Lfuz;

    move-result-object v0

    invoke-virtual {v0}, Lklw;->c()F

    move-result v0

    invoke-virtual {p0, v0}, Lisi;->F(F)V

    return-void
.end method
