.class public Lnvu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnxc;
.implements Lmes;
.implements Lpci;


# static fields
.field private static final X:Lsdb;


# instance fields
.field public A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

.field public B:Lnvf;

.field public C:Landroid/graphics/PointF;

.field public final D:Loyn;

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public final K:Z

.field public L:F

.field public M:F

.field public N:I

.field public O:I

.field public P:Lgvn;

.field public final Q:Landroid/animation/AnimatorListenerAdapter;

.field public R:D

.field public S:D

.field public final T:Lixe;

.field public final U:Lhoh;

.field public final V:Lkjj;

.field public final W:Lfdo;

.field private final Y:Lhdd;

.field private final Z:Lhsp;

.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final aA:Lpoi;

.field private aB:I

.field private final aC:Lmjv;

.field private final aa:Ljava/util/Set;

.field private final ab:Ljava/util/Set;

.field private final ac:Ljava/util/Set;

.field private final ad:Ljava/util/Set;

.field private final ae:Loyn;

.field private final af:Ljava/util/concurrent/Executor;

.field private final ag:Landroid/view/WindowManager;

.field private final ah:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final ai:Lrss;

.field private final aj:Lnpa;

.field private final ak:Loyd;

.field private final al:Loyd;

.field private final am:Loyd;

.field private an:Lnwu;

.field private ao:Landroid/widget/ImageButton;

.field private ap:Landroid/widget/ImageButton;

.field private aq:Lrss;

.field private ar:Ljava/util/List;

.field private as:Landroid/widget/TextView;

.field private at:Z

.field private au:Z

.field private final av:Z

.field private aw:F

.field private final ax:Landroid/animation/AnimatorListenerAdapter;

.field private final ay:Llyv;

.field private final az:Ljqb;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Lows;

.field public final d:Loyn;

.field public final e:Loyn;

.field public final f:Loyn;

.field public final g:Z

.field public final h:Lprb;

.field public final i:Loyd;

.field public final j:F

.field public final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final l:Ljava/lang/Runnable;

.field public final m:Ljava/lang/Runnable;

.field public final n:Loyn;

.field public final o:Loyn;

.field public final p:Loyd;

.field public final q:Lrss;

.field public final r:Lnvg;

.field public final s:Loyn;

.field public t:Lnwp;

.field public u:Lpog;

.field public v:Lrss;

.field public w:Landroid/content/res/Resources;

.field public x:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

.field public y:Landroid/widget/SeekBar;

.field public z:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;


# direct methods
.method private final 073cd2a2b853ff356a6fb957fea59891m(I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnvu;->ao:Landroid/widget/ImageButton;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lnvu;->ap:Landroid/widget/ImageButton;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method private final 1938725685c818b36d8cfe92893912eem(Landroid/widget/ImageButton;Z)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, p2}, Lnvi;-><init>(Lnvu;Z)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {v0, p0, p2}, Lnvh;-><init>(Lnvu;Z)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p2, p0, v0}, Lnvj;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/32 :goto_7

    nop

    nop

    :goto_6
    new-instance v0, Lnvi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    new-instance p2, Lnvj;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lnvh;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method private final 5589e4eb73ece40e04898bd529bec884m(Lkog;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnvu;->u:Lpog;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

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
    if-eq p0, v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Lpoh;->D()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v0, Lpog;->a:Lpog;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method private final 58bf383f6ef88b4ebf94ecfc8585b901m()Z
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lpog;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lnvu;->Y:Lhdd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-boolean v0, p0, Lnvu;->av:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v0, Lpog;->a:Lpog;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0}, Lhdd;->a()Lpog;

    move-result-object p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method private final 967db76ff980688139725c54cdc5cd82m()V
    .locals 5

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

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

    :goto_1
    invoke-direct {p0}, Lnvu;->a9c0e2a10240ff88f3c458fdb6f177b3m()Lkog;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v4, v4, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_16

    nop

    :goto_5
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v4, Loxv;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_9
    iget-object v1, p0, Lnvu;->e:Loyn;

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

    :goto_a
    invoke-direct {p0, v2}, Lnvu;->5589e4eb73ece40e04898bd529bec884m(Lkog;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xd

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

    :goto_c
    const v0, 0x12

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

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/high16 v3, 0x3f800000    # 1.0f

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

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_11
    cmpg-float v4, v1, v3

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

    :goto_12
    check-cast v1, Loxv;

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

    :goto_13
    invoke-virtual {v2, v3}, Lhsp;->a(Lpnu;)F

    move-result v2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_15
    const/high16 v2, 0x40000000    # 2.0f

    nop

    :goto_16
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v0, p0, Lnvu;->ar:Ljava/util/List;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1a
    const/4 v3, 0x0

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

    :goto_1b
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-gtz v4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v1, Loxv;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1e
    goto :goto_16

    nop

    nop

    :goto_1f
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_20
    check-cast v4, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_21
    if-ltz v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-ltz v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_3
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {p0}, Lnvu;->a9c0e2a10240ff88f3c458fdb6f177b3m()Lkog;

    move-result-object v3

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2b
    iget-object v4, p0, Lnvu;->d:Loyn;

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

    :goto_2c
    if-gtz v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v1, p0, Lnvu;->d:Loyn;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move v1, v3

    nop

    nop

    :goto_2f
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_30
    cmpl-float v3, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_31
    cmpl-float v4, v2, v3

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_32
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_33
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-lez v0, :cond_5

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_24

    nop

    :goto_35
    cmpg-float v4, v1, v4

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_36
    mul-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_37
    iget-object v2, p0, Lnvu;->Z:Lhsp;

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_38
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const-string v0, "nvu"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    sput-object v0, Lnvu;->X:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>(Loyn;Loyn;Ljava/util/Set;Lfdo;Lmjv;Lhoh;Lixe;Lfdo;Lpoi;Lhsp;Lhdd;Lprb;Loyn;FLkjj;Ljava/util/concurrent/Executor;Landroid/view/WindowManager;Lrss;Llyv;Loyn;Loyn;Loyd;Loyd;Ljqb;Loyd;Loyd;)V
    .locals 6

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v2, v0, Lnvu;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_1
    iput-object v2, v0, Lnvu;->n:Loyn;

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v4, v0, Lnvu;->ai:Lrss;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_4
    iput-object v4, v0, Lnvu;->T:Lixe;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object/from16 v1, p22

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v4, Lhnz;->g:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v2, v4}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object/from16 v4, p15

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_9
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v1, v0, Lnvu;->ad:Ljava/util/Set;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v2, p0}, Lnvn;-><init>(Lnvu;)V

    goto/32 :goto_7d

    nop

    nop

    :goto_c
    iput-object v2, v0, Lnvu;->aq:Lrss;

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_d
    move-object v4, p8

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    iput-object v2, v0, Lnvu;->o:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v4, v0, Lnvu;->W:Lfdo;

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

    :goto_10
    new-instance v1, Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    iput-object v4, v0, Lnvu;->Z:Lhsp;

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v2, Loxv;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v2, v0, Lnvu;->ah:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_15
    iput-object v1, v0, Lnvu;->ac:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    move-object/from16 v4, p12

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move-object v2, p2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object/from16 v4, p18

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_19
    iput-object v4, v0, Lnvu;->aC:Lmjv;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_1a
    move-object v4, p5

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

    :goto_1b
    invoke-direct {v4, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_57

    nop

    nop

    :goto_1c
    move-object/from16 v1, p20

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

    :goto_1d
    invoke-direct {v2, v4}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_1e
    move-object/from16 v1, p24

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_1f
    iput-wide v4, v0, Lnvu;->S:D

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_36

    nop

    nop

    :goto_21
    sget-object v4, Lhnz;->d:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-instance v1, Ljava/util/HashSet;

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v1, v0, Lnvu;->s:Loyn;

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

    nop

    :goto_24
    sget-object v4, Lhnz;->c:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_26
    invoke-direct {v2}, Lows;-><init>()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v5, 0x5

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v2, v0, Lnvu;->f:Loyn;

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

    :goto_29
    move-object/from16 v4, p17

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_2a
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2b
    iput-object v2, v0, Lnvu;->c:Lows;

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput-object v2, v0, Lnvu;->m:Ljava/lang/Runnable;

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

    :goto_2d
    if-nez v1, :cond_0

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

    :cond_0
    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p6, v4}, Lhoh;->p(Lhmn;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object v4, v0, Lnvu;->r:Lnvg;

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_30
    move-object v4, p7

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_31
    iput-object v2, v0, Lnvu;->l:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_32
    move/from16 v4, p14

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_33
    iput-object v1, v0, Lnvu;->p:Loyd;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_34
    iput-object v4, v0, Lnvu;->V:Lkjj;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_35
    invoke-direct {v2, p0, v5}, Lnue;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_31

    nop

    nop

    :goto_36
    iput-object v4, v0, Lnvu;->ab:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_37
    new-instance v4, Lnvg;

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

    :goto_38
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_39
    invoke-static {v4}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v4

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v5, 0x6

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

    :goto_3b
    iput-wide v4, v0, Lnvu;->R:D

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3c
    return-void

    nop

    nop

    :goto_3d
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iput-object v1, v0, Lnvu;->U:Lhoh;

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_40
    new-instance v2, Loxv;

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

    nop

    :goto_41
    invoke-virtual {p6, v4}, Lhoh;->p(Lhmn;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_42
    move-object/from16 v4, p10

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_43
    iput-object v4, v0, Lnvu;->aA:Lpoi;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_44
    sget-object v2, Lgvn;->a:Lgvn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_45
    const v0, 0x3

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_46
    iput-object v4, v0, Lnvu;->q:Lrss;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-direct {v2, p0, v5}, Lnue;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_48
    new-instance v2, Lows;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v4, v5}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iput-object v1, v0, Lnvu;->az:Ljqb;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_4d
    move-object/from16 v1, p25

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_4e
    iput v4, v0, Lnvu;->j:F

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iput-boolean v4, v0, Lnvu;->E:Z

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_50
    iput-object v2, v0, Lnvu;->D:Loyn;

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

    nop

    :goto_51
    iput-object v4, v0, Lnvu;->i:Loyd;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_52
    iput-object v1, v0, Lnvu;->ae:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_53
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_54
    move-object v4, p9

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_55
    invoke-virtual {p6, v4}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_56
    new-instance v2, Lnue;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_57
    iput-object v4, v0, Lnvu;->aa:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_58
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_59
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5a
    iput-object v4, v0, Lnvu;->ay:Llyv;

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

    :goto_5b
    iput-object v4, v0, Lnvu;->ag:Landroid/view/WindowManager;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    new-instance v2, Loxv;

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    move-object/from16 v4, p16

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_5e
    sget-object v2, Lpog;->b:Lpog;

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    new-instance v1, Lnpa;

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-direct {v2, v4}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_61
    invoke-direct {v4, p6}, Lnvg;-><init>(Lhoh;)V

    goto/32 :goto_2f

    nop

    nop

    :goto_62
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_63
    move-object v5, p3

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_64
    iput-object v2, v0, Lnvu;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_65
    invoke-virtual {p4}, Lfdo;->v()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_66
    sget-object v2, Lrsa;->a:Lrsa;

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

    :goto_67
    move-object/from16 v1, p23

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

    :goto_68
    iput-boolean v3, v0, Lnvu;->K:Z

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    move-object v1, p6

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iput-object v4, v0, Lnvu;->Y:Lhdd;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-direct {v5, p0, v3}, Lnvt;-><init>(Lnvu;I)V

    goto/32 :goto_82

    nop

    nop

    :goto_6c
    goto/32 :goto_98

    nop

    nop

    :goto_6d
    check-cast v4, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_6e
    invoke-virtual {p6, v4}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_6f
    const/4 v3, 0x1

    nop

    nop

    :goto_70
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_71
    new-instance v2, Lnvn;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_72
    move-object/from16 v4, p11

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

    :goto_73
    iput-object v1, v0, Lnvu;->am:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_74
    invoke-direct {v2, v4}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_79

    nop

    nop

    :goto_75
    sget-object v4, Lhnz;->b:Lhmo;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-direct {v2, p0}, Lnvm;-><init>(Lnvu;)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_77
    const/4 v5, 0x0

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_79
    iput-object v2, v0, Lnvu;->e:Loyn;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    new-instance v2, Loxv;

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_7c
    iput-object v4, v0, Lnvu;->h:Lprb;

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iput-object v2, v0, Lnvu;->Q:Landroid/animation/AnimatorListenerAdapter;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_7e
    iput-object v1, v0, Lnvu;->al:Loyd;

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_7f
    iput-object v2, v0, Lnvu;->d:Loyn;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_80
    if-lez v0, :cond_2

    nop

    goto/32 :goto_98

    nop

    :cond_2
    goto/32 :goto_97

    nop

    :goto_81
    move-object/from16 v1, p26

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_83
    iput-boolean v4, v0, Lnvu;->av:Z

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

    :goto_84
    move-object v0, p0

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

    :goto_85
    iput-object v2, v0, Lnvu;->u:Lpog;

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_86
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_87
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_88
    iput-object v1, v0, Lnvu;->ak:Loyd;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_89
    move-object v2, p1

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

    :goto_8a
    new-instance v5, Lnvt;

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

    :goto_8b
    new-instance v2, Lnue;

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_8c
    new-instance v2, Lnvm;

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    new-instance v4, Ljava/util/HashSet;

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_8e
    invoke-direct {v1, v2}, Lnpa;-><init>(I)V

    goto/32 :goto_9d

    nop

    nop

    :goto_8f
    iput-object v2, v0, Lnvu;->ax:Landroid/animation/AnimatorListenerAdapter;

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iput-boolean v2, v0, Lnvu;->g:Z

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iput-object v4, v0, Lnvu;->af:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_92
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_93
    const v1, 0x1e

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_94
    move-object/from16 v4, p19

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iput-object v2, v0, Lnvu;->v:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_96
    move-object/from16 v1, p21

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_97
    goto/32 :goto_3d

    nop

    :goto_98
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_a

    nop

    nop

    :goto_9a
    const/4 v3, 0x0

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

    :goto_9b
    iput-object v2, v0, Lnvu;->a:Ljava/util/concurrent/atomic/AtomicInteger;

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

    :goto_9c
    move-object/from16 v4, p13

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_9d
    iput-object v1, v0, Lnvu;->aj:Lnpa;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_9e
    new-instance v4, Ljava/util/HashSet;

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

    :goto_9f
    iput-object v2, v0, Lnvu;->P:Lgvn;

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop
.end method

.method private final a9c0e2a10240ff88f3c458fdb6f177b3m()Lkog;
    .locals 4

    goto/32 :goto_1e

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnvu;->aA:Lpoi;

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_17

    nop

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

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    invoke-interface {v1}, Lhdd;->a()Lpog;

    move-result-object v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Lnvu;->Y:Lhdd;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_9
    iget-object v2, p0, Lnvu;->u:Lpog;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    :goto_d
    iget-object v0, p0, Lnvu;->aA:Lpoi;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, v2}, Lpog;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    nop

    :goto_f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lnvu;->U:Lhoh;

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

    :goto_11
    sget-object v2, Lpog;->a:Lpog;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_13
    invoke-static {v0, p0}, Llfp;->j(Lpnu;Lpnv;)Lkog;

    move-result-object p0

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

    :goto_14
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lnvu;->aA:Lpoi;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v3, v0, v1, v2}, Lhsp;->b(Lpnv;Lhoh;Lpog;)Lpnx;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1a
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0, v0}, Lpoi;->f(Lpnx;)Lkog;

    move-result-object p0

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

    :goto_1c
    iget-object v3, p0, Lnvu;->Z:Lhsp;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v0}, Lpoi;->f(Lpnx;)Lkog;

    move-result-object v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1e
    const v0, 0x17

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

    :goto_1f
    invoke-direct {p0}, Lnvu;->58bf383f6ef88b4ebf94ecfc8585b901m()Z

    move-result v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop
.end method

.method private final adaea855441dbc84b995b0cb750b08c8m()V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_4

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0}, Lnxa;->a()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v0, Lnxa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lnvu;->ab:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_3

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
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method private final db83966935a355ff6fb2560db8c14e9bm()Z
    .locals 1

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_e

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

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

    :goto_5
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lnvu;->am:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    if-nez p0, :cond_1

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

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lnvu;->p:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method private final e585bb035b957bdb9a7e70df294bf6f4m()V
    .locals 5

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v2, Lhly;->y:Lhmn;

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

    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_2
    goto/32 :goto_4d

    nop

    :goto_3
    if-nez v2, :cond_0

    nop

    goto/32 :goto_94

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iget-boolean v0, p0, Lnvu;->au:Z

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

    :goto_5
    iget-object v0, p0, Lnvu;->U:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    iget-object v3, p0, Lnvu;->f:Loyn;

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

    :goto_7
    iget-object v0, p0, Lnvu;->aq:Lrss;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lnvu;->U:Lhoh;

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/high16 v0, 0x40800000    # 4.0f

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eq v0, v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    :goto_b
    sget-object v2, Lhly;->A:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_c
    iget-object v2, p0, Lnvu;->u:Lpog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v2}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v0

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

    :goto_f
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v0, Loze;->a:Loze;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_13
    if-eq v0, v2, :cond_2

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

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
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_4a

    nop

    nop

    :goto_19
    cmpl-float v3, v3, v2

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

    :goto_1a
    iget-object v0, p0, Lnvu;->aq:Lrss;

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

    :goto_1b
    invoke-virtual {v0, v2}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v0, Ljava/lang/Float;

    nop

    nop

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

    :goto_1d
    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_1f
    const v1, 0xa

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_27

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_71

    nop

    nop

    :goto_23
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v2, Lhly;->y:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_25
    sget-object v2, Lhly;->z:Lhmn;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lnvu;->i:Loyd;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :goto_2b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0, v2}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v0

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

    nop

    :goto_2f
    sget-object v2, Lgvn;->b:Lgvn;

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_30
    iget-object v0, p0, Lnvu;->U:Lhoh;

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

    :goto_31
    iget-object v1, p0, Lnvu;->d:Loyn;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0, v2}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

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

    nop

    :goto_33
    sget-object v2, Lhly;->x:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_27

    nop

    nop

    :goto_35
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0, v2}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_38
    invoke-interface {v3, v2}, Loyn;->a(Ljava/lang/Object;)V

    :goto_39
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_3a
    sget-object v2, Lnne;->f:Lnne;

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast v0, Loze;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3c
    iput v1, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h:F

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3e
    add-int v0, v0, v1

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v0}, Loze;->ordinal()I

    move-result v0

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {v1, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

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

    :goto_42
    invoke-virtual {p0}, Lnvu;->d()F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v0, v2}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_45
    div-float v2, v1, v2

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

    :goto_46
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_47
    iput v1, v2, Lnwp;->G:F

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

    :goto_48
    invoke-direct {p0}, Lnvu;->967db76ff980688139725c54cdc5cd82m()V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_49
    check-cast v0, Lnne;

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    sget-object v0, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_4b
    iget-object v0, p0, Lnvu;->U:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_4c
    goto/32 :goto_2b

    nop

    nop

    :goto_4d
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-direct {p0}, Lnvu;->adaea855441dbc84b995b0cb750b08c8m()V

    goto/32 :goto_2a

    nop

    nop

    :goto_50
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_51
    sget-object v2, Lnne;->n:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_52
    if-nez v0, :cond_3

    nop

    goto/32 :goto_22

    nop

    :cond_3
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_54
    const/high16 v1, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_55
    iget-object v0, p0, Lnvu;->U:Lhoh;

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

    nop

    :goto_56
    invoke-interface {v3, v2}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_57
    if-nez v0, :cond_4

    nop

    goto/32 :goto_18

    nop

    :cond_4
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_59
    div-float/2addr v3, v4

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

    :goto_5a
    iget v1, p0, Lnvu;->L:F

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v0, v2}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v0

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

    :goto_5c
    invoke-virtual {v0, v2}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_5e
    iput v1, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->g:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_5f
    iget-object v0, p0, Lnvu;->U:Lhoh;

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

    :goto_60
    invoke-virtual {v0, v2}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    sget-object v2, Lhly;->v:Lhmn;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_62
    check-cast v0, Lnne;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v2, p0, Lnvu;->t:Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_64
    if-eqz v0, :cond_5

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_5
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v0, p0, Lnvu;->U:Lhoh;

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

    nop

    :goto_66
    rem-int v0, v0, v1

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_68
    invoke-virtual {v0, v2}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_69
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    check-cast v0, Ljava/lang/Float;

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    sget-object v0, Lpog;->b:Lpog;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    nop

    nop

    :goto_6f
    goto/32 :goto_46

    nop

    nop

    :goto_70
    iget-object v0, p0, Lnvu;->i:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_71
    iget-object v0, p0, Lnvu;->P:Lgvn;

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_72
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_73
    sget-object v2, Lhni;->W:Lhmn;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_74
    check-cast v3, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    sget-object v2, Lhly;->A:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_76
    if-lez v0, :cond_7

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

    :cond_7
    goto/32 :goto_4c

    nop

    :goto_77
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_78
    if-nez v0, :cond_8

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

    :cond_8
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_79
    iget-object v2, p0, Lnvu;->u:Lpog;

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

    :goto_7a
    goto/16 :goto_27

    nop

    :pswitch_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7b
    if-eq v0, v2, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_9
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_7d
    iget-object v3, p0, Lnvu;->f:Loyn;

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

    :goto_7e
    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->l()V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_a
    goto/32 :goto_82

    nop

    nop

    nop

    :goto_80
    if-gtz v3, :cond_b

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_b
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_81
    iget-object v3, p0, Lnvu;->n:Loyn;

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

    :goto_82
    iget-object v0, p0, Lnvu;->U:Lhoh;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_84
    iget-object v0, p0, Lnvu;->U:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_85
    invoke-interface {v3}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_86
    iget-object v2, v2, Lnwp;->v:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_87
    sget-object v2, Lnne;->g:Lnne;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {p0}, Lnvu;->d()F

    move-result v4

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    check-cast v0, Ljava/lang/Float;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_8b
    if-nez v0, :cond_c

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_8c
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    sget-object v2, Lhni;->U:Lhmn;

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

    :goto_8e
    iput v1, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->f:F

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_90
    check-cast v0, Ljava/lang/Float;

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

    :goto_91
    check-cast v0, Ljava/lang/Float;

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

    :goto_92
    iget-boolean v0, p0, Lnvu;->au:Z

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_93
    goto/16 :goto_27

    nop

    nop

    nop

    :goto_94
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop
.end method

.method private final ee688a4a54b1e49901189c14a3f1b180m(Z)V
    .locals 3

    goto/32 :goto_3a

    nop

    nop

    :goto_0
    check-cast v2, Ljrw;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v2}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3
    iget-object v2, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_4
    if-eqz v2, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v0, Ljrw;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v2, Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2}, Lj$/util/Optional;->isPresent()Z

    move-result v2

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_8
    iput-boolean v1, v2, Ljrw;->p:Z

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v2, v2, Ljrw;->i:Loyn;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_d
    iget-object v2, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lnvu;->ad:Ljava/util/Set;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_f
    check-cast v0, Ljrw;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_11
    check-cast v2, Ljrw;

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

    :goto_12
    iget-object v2, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v0, v1}, Lnxc;->T(Z)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_1

    nop

    goto/32 :goto_1a

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    :goto_15
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_2
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_16
    iget-object v2, v2, Ljrw;->g:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    invoke-interface {v2}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v2

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

    :goto_18
    invoke-virtual {v2}, Ljrw;->p()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v2, Ljrw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1c
    goto/32 :goto_3f

    nop

    :goto_1d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v2, v2, Ljrw;->i:Loyn;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1f
    check-cast v2, Ljrw;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_20
    check-cast v2, Ljrw;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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

    :goto_22
    iget-object v2, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, v0, Ljrw;->f:Lnxc;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_25
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_2

    nop

    nop

    :goto_27
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    :goto_28
    check-cast v2, Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_29
    goto :goto_26

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_34

    nop

    nop

    :goto_2b
    check-cast v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v2, Ljrw;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v2}, Ljrw;->C()Z

    move-result v2

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    :goto_2f
    invoke-virtual {v2}, Lj$/util/Optional;->isPresent()Z

    move-result v2

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

    :goto_30
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v2}, Ljrw;->p()V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v0, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_33
    iget-object v0, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v2, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

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

    :goto_35
    invoke-interface {v0, v1}, Lnxc;->T(Z)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_36
    check-cast v2, Ljrw;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_37
    iget-object v2, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_38
    iget-object v2, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const v0, 0x13

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

    :goto_3b
    if-nez v2, :cond_6

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v2}, Ljrw;->C()Z

    move-result v2

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

    :goto_3d
    iget-object v0, v0, Ljrw;->f:Lnxc;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-nez v2, :cond_7

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_12

    nop

    nop

    :goto_41
    check-cast v2, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_42
    goto/32 :goto_1d

    nop

    nop
.end method

.method private final fcf625f2784d4de4b2b52af966228b64m()Z
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    if-ne p0, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v0, Lnne;->c:Lnne;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    if-eq p0, v0, :cond_1

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

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_1

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    :goto_9
    iget-object p0, p0, Lnvu;->i:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    sget-object v0, Lnne;->o:Lnne;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p0

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

    :goto_c
    check-cast p0, Lnne;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    if-ne p0, v0, :cond_2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    :goto_f
    sget-object v0, Lnne;->l:Lnne;

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
.end method


# virtual methods
.method public final A()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lnvu;->ai:Lrss;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    check-cast v0, Lnne;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p0, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->o:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_4
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2f

    nop

    :goto_8
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lnvu;->ai:Lrss;

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

    :goto_a
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

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

    :goto_b
    invoke-static {v1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v1

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

    :goto_c
    goto :goto_6

    nop

    :goto_d
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lnvu;->z:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Ljqb;->c()Z

    move-result v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v1, v0}, Lnvu;->a(ZLnne;)F

    move-result v0

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

    :goto_11
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

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
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Lnvu;->i:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Lmep;->i()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lnvu;->d()F

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_18
    iget-object v0, p0, Lnvu;->i:Loyd;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v1, v0, Lmep;->a:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lnvu;->t:Lnwp;

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1b
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1d
    check-cast v1, Lnne;

    nop

    nop

    nop

    goto/32 :goto_b

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

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1f
    sget-object v1, Lhnz;->d:Lhmn;

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

    :goto_20
    check-cast v0, Lmep;

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

    :goto_21
    if-lez v0, :cond_2

    nop

    goto/32 :goto_2f

    nop

    :cond_2
    goto/32 :goto_2e

    nop

    :goto_22
    iget-object v0, p0, Lnvu;->ai:Lrss;

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

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lnvu;->az:Ljqb;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lnvu;->U:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_26
    const v1, 0x19

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Lnvw;->j()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_29
    iput v0, v1, Lnwp;->M:F

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2a
    iget-object v1, p0, Lnvu;->t:Lnwp;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Lnvu;->s()V

    :goto_2c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast v0, Lmep;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop
.end method

.method public final B(F)V
    .locals 3

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lnvw;->t(F)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lnvu;->U:Lhoh;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    mul-float/2addr v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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

    :goto_4
    goto/32 :goto_1b

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lnvu;->b()F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_7
    check-cast v0, Ljava/lang/Float;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_8
    const v1, 0x3ea8f5c3    # 0.33f

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

    :goto_9
    iget-object v0, p0, Lnvu;->f:Loyn;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lnvu;->t:Lnwp;

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

    :goto_e
    add-float/2addr v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, p1}, Lnpa;->a(F)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    sget-object v1, Lhmq;->bF:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_14
    iget-object p1, p0, Lnvu;->aj:Lnpa;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_16
    invoke-virtual {p1, v1}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_17
    const v1, -0x41570a3d    # -0.33f

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lnvu;->b()F

    move-result v1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_19
    iget-object v0, p0, Lnvu;->aj:Lnpa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lnvu;->c()F

    move-result p1

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

    :goto_1b
    invoke-virtual {p0}, Lnvu;->c()F

    move-result p1

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

    :goto_1c
    invoke-static {v0, p1, v1}, Lrrf;->V(FFF)F

    move-result p1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1d
    iget-object v2, p0, Lnvu;->z:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

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

    :goto_1e
    iget v2, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->f:F

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0, p1}, Lnvw;->t(F)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_20
    iget p1, p1, Lnpa;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

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
    invoke-static {v0, p1, v1}, Lrrf;->V(FFF)F

    move-result p1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_23
    mul-float/2addr v0, p1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_24
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

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

    :goto_25
    return-void

    nop

    nop

    :goto_26
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_27
    iget-object p0, p0, Lnvu;->t:Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_28
    const v0, 0x7

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

    :goto_29
    rem-int v0, v0, v1

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

    :goto_2a
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final C()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnvu;->aj:Lnpa;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lnpa;->b()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iget-object v0, p0, Lnvu;->f:Loyn;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, v0}, Lnvu;->ee688a4a54b1e49901189c14a3f1b180m(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Lnvu;->aw:F

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lnvu;->t:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lnvw;->e()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public final D()V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    :goto_0
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p0

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

    :goto_3
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

    :goto_4
    const v1, 0x4

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iget-object v0, p0, Lnvu;->t:Lnwp;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lnwp;->F()V

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_a
    iget-boolean v0, p0, Lnvu;->g:Z

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    check-cast p0, Ljava/lang/Float;

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

    :goto_f
    invoke-virtual {v0}, Lnvw;->p()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v2, v1, p0}, Lnwp;->J(IFF)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    iget v1, p0, Lnvu;->aw:F

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

    :goto_14
    iget-object v0, p0, Lnvu;->t:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_15
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

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

    :goto_16
    iget-object p0, p0, Lnvu;->f:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lnvu;->t:Lnwp;

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
.end method

.method public final E()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnvu;->aj:Lnpa;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lnvu;->t:Lnwp;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Lnvu;->aw:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

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

    :goto_7
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lnpa;->b()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lnvw;->e()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lnvu;->f:Loyn;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, v0}, Lnvu;->ee688a4a54b1e49901189c14a3f1b180m(Z)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public final F()V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnvu;->f:Loyn;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1
    check-cast p0, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    iget-object v0, p0, Lnvu;->t:Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    goto/32 :goto_18

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_a
    iget-object v0, p0, Lnvu;->t:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_b
    invoke-virtual {v0, v2, v1, p0}, Lnwp;->J(IFF)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_c
    iget v1, p0, Lnvu;->aw:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

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

    :goto_e
    iget-boolean v0, p0, Lnvu;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lnvu;->t:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Lnwp;->F()V

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Lnvw;->p()V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_16
    invoke-interface {p0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final G(Lnwz;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnvu;->aa:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final H(Lnxb;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

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

    nop

    :goto_1
    iget-object p0, p0, Lnvu;->ac:Ljava/util/Set;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final I(Lnxd;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    goto/32 :goto_2

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
    iget-object p0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final J()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

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
    invoke-direct {p0}, Lnvu;->58bf383f6ef88b4ebf94ecfc8585b901m()Z

    move-result v0

    nop

    goto/32 :goto_0

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
    invoke-virtual {p0}, Lnvu;->K()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lnvu;->L()V

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final K()V
    .locals 2

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lscz;

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

    :goto_1
    invoke-interface {p0, v1, v0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v0}, Lhsp;->a(Lpnu;)F

    move-result v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    iput v1, p0, Lnvu;->L:F

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

    :goto_6
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    if-gtz v1, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_c
    const-string v1, "unable to set zoom max with zoomValue <= 1: %g"

    nop

    nop

    goto/32 :goto_1

    nop

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

    :goto_e
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_f
    cmpl-float v1, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    mul-float/2addr v0, v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, v0}, Lnvu;->5589e4eb73ece40e04898bd529bec884m(Lkog;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Lpoh;->b()F

    move-result v1

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

    :goto_15
    const v0, 0x19

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

    :goto_16
    invoke-direct {p0}, Lnvu;->a9c0e2a10240ff88f3c458fdb6f177b3m()Lkog;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_17
    invoke-direct {p0}, Lnvu;->e585bb035b957bdb9a7e70df294bf6f4m()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_19
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v0}, Lnvu;->P(F)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object p0, Lnvu;->X:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1f
    const/16 v1, 0x14b0

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

    :goto_20
    const v1, 0x19

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v1, p0, Lnvu;->Z:Lhsp;

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
.end method

.method public final L()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lpoh;->d()F

    move-result v0

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

    :goto_2
    invoke-virtual {p0, v0}, Lnvu;->Q(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lnvu;->a9c0e2a10240ff88f3c458fdb6f177b3m()Lkog;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final M(Z)V
    .locals 3

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, p1}, Loyn;->a(Ljava/lang/Object;)V

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lnvu;->B:Lnvf;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    iget-object p1, p0, Lnvu;->ah:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lnvu;->K()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setAccessibilityLiveRegion(I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lnvu;->f:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_21

    nop

    :goto_a
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lnvu;->U:Lhoh;

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

    :goto_c
    invoke-virtual {v0}, Lnvf;->f()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lnvu;->B:Lnvf;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_f
    iget-object p0, p0, Lnvu;->ah:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    :goto_11
    check-cast v0, Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_12
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_13
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

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

    nop

    :goto_14
    iput-boolean v2, v0, Lnvf;->e:Z

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

    :goto_15
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_16
    goto/32 :goto_20

    nop

    nop

    :goto_17
    invoke-virtual {p0, p1, v0}, Lnvu;->a(ZLnne;)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_18
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

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

    :goto_1a
    add-int v0, v0, v1

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
    invoke-interface {v0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    :goto_1c
    sget-object v2, Lhnz;->d:Lhmn;

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

    :goto_1d
    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lnvu;->x:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    :goto_21
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lnvu;->i:Loyd;

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

    :goto_23
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_25
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Lnvu;->n:Loyn;

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final N()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lnvu;->z:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iget-object v0, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->b:Ljava/util/concurrent/atomic/AtomicReference;

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

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_3
    iput p0, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->o:F

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

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    invoke-virtual {p0}, Lnvu;->d()F

    move-result p0

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
    const v0, 0xc

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    iget-object v0, v0, Lnvf;->c:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_9
    sget-object v1, Lnwy;->b:Lnwy;

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

    :goto_a
    sget-object v1, Lnwy;->b:Lnwy;

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

    :goto_b
    goto/32 :goto_f

    nop

    :goto_c
    iget-object v0, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->e:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lnvu;->x:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/32 :goto_14

    nop

    nop

    :goto_14
    iget-object v0, p0, Lnvu;->B:Lnvf;

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

    :goto_15
    sget-object v1, Lnwy;->b:Lnwy;

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

    :goto_16
    iget-object v0, p0, Lnvu;->z:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    :goto_18
    goto/32 :goto_b

    nop

    nop
.end method

.method public final O(F)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lnvu;->f:Loyn;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnvu;->n:Loyn;

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

    :goto_2
    invoke-interface {v0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final P(F)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lnvu;->e585bb035b957bdb9a7e70df294bf6f4m()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput p1, p0, Lnvu;->L:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final Q(F)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lnvu;->967db76ff980688139725c54cdc5cd82m()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Lnvu;->t:Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Lnvu;->e:Loyn;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iput p1, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->e:F

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, v1, Lnwp;->v:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    :goto_6
    const v0, 0x1d

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

    :goto_7
    goto/32 :goto_10

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    invoke-direct {p0}, Lnvu;->adaea855441dbc84b995b0cb750b08c8m()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    const v1, 0x1f

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    iput p1, v1, Lnwp;->H:F

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

    :goto_12
    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->l()V

    goto/32 :goto_2

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final R()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x15

    nop

    goto/32 :goto_c

    nop

    nop

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

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_5
    rem-int v0, v0, v1

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
    invoke-virtual {p0}, Lnvu;->am()F

    move-result v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Lnvu;->Q(F)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lnvu;->f:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-ltz v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

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

    :goto_e
    check-cast v1, Ljava/lang/Float;

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

    :goto_f
    invoke-virtual {p0, v0}, Lnvu;->O(F)V

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    cmpg-float v1, v1, v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final S(Z)V
    .locals 1

    goto/32 :goto_2e

    nop

    nop

    :goto_0
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Lnvu;->t:Lnwp;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_3
    cmpl-float p1, p1, v0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v0}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Lnvu;->073cd2a2b853ff356a6fb957fea59891m(I)V

    :goto_6
    goto/32 :goto_16

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
    iget-object p1, p0, Lnvu;->U:Lhoh;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_33

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_29

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
    goto/32 :goto_18

    nop

    nop

    :goto_f
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, v0}, Lhoh;->p(Lhmn;)Z

    move-result p1

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

    :goto_11
    invoke-virtual {p0}, Lnvu;->s()V

    goto/32 :goto_9

    nop

    nop

    :goto_12
    invoke-direct {p0, p1}, Lnvu;->073cd2a2b853ff356a6fb957fea59891m(I)V

    goto/32 :goto_1a

    nop

    nop

    :goto_13
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lnvu;->q()V

    goto/32 :goto_23

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lnvu;->s()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lnvu;->t:Lnwp;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_18
    const/16 p1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_19
    iget-object p1, p0, Lnvu;->f:Loyn;

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

    :goto_1a
    iget-object p1, p0, Lnvu;->U:Lhoh;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1c
    iget-boolean p1, p0, Lnvu;->g:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p1, p0, Lnvu;->an:Lnwu;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lnvu;->e:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lnvw;->r()V

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_21
    invoke-virtual {p1}, Lnwr;->d()V

    :goto_22
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v0, Loxv;

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

    nop

    :goto_26
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_27
    const/4 p1, 0x0

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

    :goto_28
    iget-boolean p1, p0, Lnvu;->I:Z

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_29
    iget-object p1, p0, Lnvu;->an:Lnwu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2a
    if-nez p1, :cond_4

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1}, Lnvw;->u()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2c
    sget-object v0, Lhnz;->d:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2d
    iget-boolean v0, p0, Lnvu;->I:Z

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2e
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_5
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2f
    if-eqz p1, :cond_6

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_6
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_31
    if-eqz p1, :cond_7

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_15

    nop

    nop

    :goto_32
    invoke-virtual {p1}, Lnwr;->c()V

    :goto_33
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_35
    sget-object v0, Lhnz;->d:Lhmn;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_36
    return-void

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final T(Z)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    iget-boolean p1, p0, Lnvu;->g:Z

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, v0}, Lnwp;->A(Z)V

    goto/32 :goto_15

    nop

    nop

    :goto_6
    invoke-virtual {v0, p1}, Lcom/CameraLensTogglesRelativeLayout;->L(Z)V

    :goto_7
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_1a

    nop

    nop

    :goto_d
    sget-object v0, Lcom/CameraLensTogglesRelativeLayout;->e:Lcom/CameraLensTogglesRelativeLayout;

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_e
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    :goto_10
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

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lnvu;->s()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lnvu;->aq()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_21

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p1, p0, Lnvu;->t:Lnwp;

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

    :goto_1a
    invoke-virtual {p0, v1}, Lnvu;->u(Z)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1b
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

    :goto_1c
    invoke-virtual {p0, v0}, Lnvu;->u(Z)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0, v1}, Lnvu;->S(Z)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0}, Lnvu;->db83966935a355ff6fb2560db8c14e9bm()Z

    move-result p1

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

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_19

    nop

    nop
.end method

.method public final U(Lnwy;)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput v0, p1, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->o:F

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    iget-object v0, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lnvu;->B:Lnvf;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    iget-object v0, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->e:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lnvu;->z:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lnvu;->x:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lnvu;->d()F

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lnvu;->z:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, v0, Lnvf;->c:Ljava/util/concurrent/atomic/AtomicReference;

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

    :goto_d
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p1, p0, Lnvu;->z:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final V(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnvu;->t:Lnwp;

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

    :goto_1
    iput-boolean p1, p0, Lnwp;->K:Z

    nop

    goto/32 :goto_2

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
.end method

.method public final W()V
    .locals 1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->G()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lnvu;->t:Lnwp;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lnvu;->aq()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

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

    :goto_6
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lnvw;->c()V

    :goto_9
    goto/32 :goto_5

    nop

    nop

    :goto_a
    iget-object p0, p0, Lnvu;->t:Lnwp;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->G()Z

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lnvw;->k()V

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    iget-boolean v0, p0, Lnvu;->E:Z

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
.end method

.method public final X(Lrss;ZLgvn;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, v0, Lnvf;->g:Loze;

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput-object p1, p0, Lnvu;->aq:Lrss;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    check-cast p2, Loze;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p3, p0, Lnvu;->P:Lgvn;

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

    :goto_6
    iput-boolean p2, v0, Lnvf;->d:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p2

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

    :goto_8
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p3, v0, Lnvf;->f:Lgvn;

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
    if-nez p2, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lnvu;->B:Lnvf;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    iput-boolean p2, p0, Lnvu;->au:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Lnvu;->e585bb035b957bdb9a7e70df294bf6f4m()V

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final Y(Lpnu;)V
    .locals 5

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v3}, Lnvu;->M(Z)V

    :goto_1
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_4
    move v1, v3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, v0}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Lnvu;->L:F

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move v1, v2

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

    :goto_9
    iget-object v0, p0, Lnvu;->B:Lnvf;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_a
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1}, Lpnu;->l()Lpog;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    iput-object v1, p0, Lnvu;->u:Lpog;

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

    :goto_d
    const/4 v2, 0x1

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

    :goto_e
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lnvu;->K()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p1}, Lpnu;->E()Z

    move-result v1

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
    sget-object v1, Lnne;->g:Lnne;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_16
    iget v0, p0, Lnvu;->j:F

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_18
    invoke-virtual {p0, p1}, Lnvu;->Q(F)V

    :goto_19
    goto/32 :goto_4e

    nop

    nop

    :goto_1a
    goto/16 :goto_47

    nop

    :goto_1b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1c
    move v1, v3

    nop

    nop

    :goto_1d
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_1e
    iput-boolean v3, v1, Lnvf;->e:Z

    nop

    nop

    :goto_1f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v1, :cond_1

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

    :cond_1
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_21
    if-gtz p1, :cond_2

    nop

    goto/32 :goto_25

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_22
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_23
    const/4 v3, 0x0

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

    :goto_24
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v1, p0, Lnvu;->u:Lpog;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_27
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p1, p0, Lnvu;->d:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_2b
    iget-object p0, p0, Lnvu;->ah:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2e
    iget-object v1, p0, Lnvu;->B:Lnvf;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object v1, Lhnz;->d:Lhmn;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_30
    check-cast p1, Loxv;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_31
    move v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_32
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {p1}, Lpnu;->l()Lpog;

    move-result-object v4

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

    nop

    :goto_34
    invoke-interface {p1}, Lpnu;->N()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Lnvu;->q()V

    :goto_36
    goto/32 :goto_52

    nop

    nop

    :goto_37
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_38
    if-ne v0, v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_4
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v0, p0, Lnvu;->u:Lpog;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3b
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

    nop

    nop

    :goto_3c
    move v0, v2

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {p1}, Lpnu;->d()F

    move-result p1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {p1}, Lpnu;->l()Lpog;

    move-result-object v1

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

    :goto_40
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-lez v0, :cond_6

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

    :cond_6
    goto/32 :goto_e

    nop

    :goto_42
    if-eq v0, v1, :cond_7

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_43
    return-void

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    sget-object v0, Lhmq;->ah:Lhmn;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_46
    goto :goto_3d

    nop

    :goto_47
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_48
    if-nez v0, :cond_8

    nop

    nop

    goto/32 :goto_36

    nop

    :cond_8
    goto/32 :goto_9

    nop

    nop

    :goto_49
    if-ne v1, v4, :cond_9

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

    :cond_9
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-interface {p1}, Lpnu;->N()Z

    move-result v1

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

    :goto_4b
    invoke-interface {p1}, Lpnu;->E()Z

    move-result v1

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_4c
    iput-boolean v1, p0, Lnvu;->at:Z

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    cmpl-float p1, p1, v0

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

    :goto_4e
    iget-object p1, p0, Lnvu;->U:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-interface {p1}, Lpnu;->b()F

    move-result v1

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

    :goto_50
    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-nez v1, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v0, p0, Lnvu;->i:Loyd;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_53
    if-ne v0, v1, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    cmpl-float v0, v0, v1

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

    :goto_55
    iget-boolean v0, p0, Lnvu;->at:Z

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    if-nez v1, :cond_c

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v0, p0, Lnvu;->U:Lhoh;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-nez v1, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v0}, Lnvf;->f()V

    goto/32 :goto_35

    nop

    nop

    nop
.end method

.method public final Z()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    const/4 v0, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0, v1}, Lnvw;->f(FI)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lnvu;->an(Z)F

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    const v1, 0x1b

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

    :goto_6
    add-int v0, v0, v1

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
    iget-object p0, p0, Lnvu;->t:Lnwp;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    const/16 v1, 0x9

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x15

    nop

    goto/32 :goto_5

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

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop
.end method

.method public final a(ZLnne;)F
    .locals 3

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lnvf;->a(I)F

    move-result v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string p1, "camera.lenstoggles_enable"

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

    :goto_2
    invoke-direct {p1, p2}, Lipo;-><init>(I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    xor-int/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eq p1, v2, :cond_1

    nop

    goto/32 :goto_49

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

    :goto_6
    iget-object p0, p0, Lnvu;->Z:Lhsp;

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

    :goto_7
    return p0

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    check-cast p0, Ljava/lang/Float;

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_a
    const/16 p2, 0x9

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    iget-object p1, p0, Lnvu;->U:Lhoh;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object p1, Lnne;->g:Lnne;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p1, p0, Lnvu;->u:Lpog;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_10
    if-eq v0, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

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

    :goto_11
    if-eq p2, v0, :cond_3

    nop

    goto/32 :goto_25

    nop

    :cond_3
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v0}, Lnvf;->a(I)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0}, Lnvu;->fcf625f2784d4de4b2b52af966228b64m()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    :goto_15
    const/4 p1, 0x0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_35

    nop

    nop

    :goto_17
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Lnvu;->U:Lhoh;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0, v0}, Lhsp;->a(Lpnu;)F

    move-result v1

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_1c
    if-eq p2, p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1d
    sget-object p1, Lnne;->g:Lnne;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p1, p0, Lnvu;->u:Lpog;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1f
    iget v1, p0, Lnvu;->j:F

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_20
    if-nez p1, :cond_6

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_6
    goto/32 :goto_1e

    nop

    nop

    :goto_21
    if-ne p2, p1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, p1}, Lj$/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_23
    sget-object v2, Lpog;->a:Lpog;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v0, Lhni;->a:Lhmo;

    nop

    :goto_25
    goto/32 :goto_38

    nop

    nop

    :goto_26
    sget-object p2, Lhni;->V:Lhmn;

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

    :goto_27
    return v1

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_29
    sget-object p2, Lpog;->a:Lpog;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_2a
    invoke-direct {p0, v0}, Lnvu;->5589e4eb73ece40e04898bd529bec884m(Lkog;)Z

    move-result v2

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

    nop

    :goto_2b
    invoke-virtual {p1, p2}, Lhoh;->p(Lhmn;)Z

    move-result p1

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

    :goto_2c
    new-instance p1, Lipo;

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

    :goto_2d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2e
    sget-object v1, Lpog;->a:Lpog;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object v0, Lnne;->g:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_30
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez p1, :cond_8

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_e

    nop

    nop

    :goto_33
    iget-object p0, p0, Lnvu;->B:Lnvf;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_36
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v0, p0, Lnvu;->u:Lpog;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {p0}, Lnvu;->a9c0e2a10240ff88f3c458fdb6f177b3m()Lkog;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0}, Lnvu;->am()F

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

    :goto_3a
    invoke-virtual {p0, p1}, Lnvf;->a(I)F

    move-result v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object p0, p0, Lnvu;->B:Lnvf;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object p1, Lhni;->d:Lhmn;

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

    :goto_3e
    if-eq p1, p2, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_a
    :goto_3f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_40
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {p0}, Lnvu;->58bf383f6ef88b4ebf94ecfc8585b901m()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p0, p1}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_45
    if-eqz p1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_35

    nop

    :goto_47
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_35

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_1d

    nop

    nop

    :goto_4a
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_4b
    iget-object p0, p0, Lnvu;->B:Lnvf;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_4c
    invoke-static {p1}, Lcom/a;->ad_mc(Ljava/lang/Object;)Z

    move-result p1

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

.method public final aa()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0, v1}, Lnvw;->f(FI)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lnvu;->t:Lnwp;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v1, 0x9

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v1}, Lnvu;->an(Z)F

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public final ab(F)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnvu;->ae:Loyn;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

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
    iget-object v0, p0, Lnvu;->t:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lnvu;->n:Loyn;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, p1, v1}, Lnvw;->f(FI)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    const v0, 0x10

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_f
    invoke-interface {v0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x6

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final ac()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget-boolean p0, p0, Lnvu;->E:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final ad()Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lhoh;->p(Lhmn;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lhnz;->l:Lhmn;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lnvu;->U:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final ae(Lnne;)Z
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    :goto_2
    invoke-virtual {p0, v1, p1}, Lnvu;->a(ZLnne;)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3
    const v0, 0x1e

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    const/4 v1, 0x0

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

    :goto_6
    invoke-virtual {p0}, Lnvu;->e()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setAccessibilityLiveRegion(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    return v1

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_c
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lnvu;->x:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    cmpl-float p0, v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method

.method public final af()Z
    .locals 4

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v3}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v3

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

    nop

    :goto_1
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2
    cmpl-float v0, p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    const/high16 v0, 0x40000000    # 2.0f

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    return v2

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x3f1d70a4    # 0.615f

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    cmpl-float v0, p0, v0

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

    :goto_9
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_b
    cmpl-float p0, p0, v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_d
    check-cast v3, Lnne;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return v1

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    :goto_11
    return v1

    nop

    :goto_12
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lnvu;->e()F

    move-result v0

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

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v2, v3}, Lnvu;->a(ZLnne;)F

    move-result p0

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

    :goto_16
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    :goto_18
    cmpl-float p0, v0, p0

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

    :goto_19
    iget-object v3, p0, Lnvu;->i:Loyd;

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
    cmpl-float v0, p0, v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Lnvu;->e()F

    move-result p0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_a

    nop

    nop

    :goto_1e
    const/high16 v0, 0x3fc00000    # 1.5f

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x17

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

    :goto_20
    if-nez p0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_5
    goto/32 :goto_11

    nop

    nop

    :goto_21
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return v2

    nop

    :goto_23
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-boolean v0, p0, Lnvu;->E:Z

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_26
    if-nez p0, :cond_6

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

    :cond_6
    goto/32 :goto_e

    nop

    nop

    :goto_27
    const/4 v2, 0x0

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
.end method

.method public final ag()V
    .locals 1

    goto/32 :goto_8

    nop

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
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h:Landroid/animation/ObjectAnimator;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    goto/32 :goto_6

    nop

    nop

    :goto_4
    iget-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f:Z

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
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    iget-object p0, p0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

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

    :goto_9
    iput-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f:Z

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

    :goto_a
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto/32 :goto_7

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h:Landroid/animation/ObjectAnimator;

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
.end method

.method public final ah(Z)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lnvu;->M(Z)V

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lnvu;->q()V

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Lnvu;->U:Lhoh;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, v0}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    sget-object v0, Lhnz;->d:Lhmn;

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

    :goto_8
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

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

    nop

    nop

    :goto_9
    if-nez p1, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    const/4 p1, 0x0

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

.method public final ai(I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lnvf;->h:I

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

    :goto_1
    iget-object p0, p0, Lnvu;->B:Lnvf;

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

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lnvu;->aB:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final aj(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnvu;->ad:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_2

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

    :goto_2
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final ak(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnvu;->ad:Ljava/util/Set;

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

    :goto_2
    return-void

    nop
.end method

.method public final al()F
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lnvf;->a(I)F

    move-result p0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_6
    if-eq v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    :goto_7
    iget-boolean v1, p0, Lnvu;->E:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Lnvg;->a(I)Lryh;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    return v2

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

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

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lnvu;->r:Lnvg;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_d
    sget-object v1, Lpog;->b:Lpog;

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

    :goto_e
    check-cast p0, Ljava/lang/Float;

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

    :goto_f
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Lnxe;->c:Lnxe;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v1, Lpog;->a:Lpog;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lnvu;->U:Lhoh;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    invoke-virtual {p0, v0, v1}, Lryh;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    :goto_17
    if-eq v0, v1, :cond_3

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    :goto_18
    goto :goto_1e

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1c

    nop

    nop

    :goto_1a
    return p0

    nop

    nop

    :goto_1b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lnvu;->B:Lnvf;

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

    :goto_1d
    return p0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lnvu;->u:Lpog;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_22
    const v1, 0x7

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v1, Lhni;->X:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_25
    const/4 v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_26
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop
.end method

.method final am()F
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    nop

    nop

    :goto_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v3, Lpog;->b:Lpog;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Lnvu;->58bf383f6ef88b4ebf94ecfc8585b901m()Z

    move-result v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v1}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_26

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    :goto_c
    invoke-static {v3}, Lcom/a;->ad_mc(Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_10

    nop

    nop

    :goto_e
    goto/32 :goto_23

    nop

    nop

    :goto_f
    goto/16 :goto_1

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lnvu;->U:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lnvu;->Z:Lhsp;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_16
    const-string v3, "camera.lenstoggles_enable"

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

    :goto_17
    invoke-direct {p0}, Lnvu;->a9c0e2a10240ff88f3c458fdb6f177b3m()Lkog;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lnvu;->c()F

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_19
    if-nez v1, :cond_2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v3, :cond_3

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    mul-float/2addr p0, v0

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

    :goto_1c
    if-eq v2, v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1}, Lpoh;->D()Z

    move-result v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_1

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1e

    nop

    nop

    :goto_21
    iget-boolean v1, p0, Lnvu;->E:Z

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

    :goto_22
    sget-object v1, Lhni;->c:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_23
    const p0, 0x3f99999a    # 1.2f

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

    :goto_24
    check-cast p0, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_25
    goto/32 :goto_9

    nop

    :goto_26
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return p0

    nop

    :goto_28
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2a
    iget-object v2, p0, Lnvu;->u:Lpog;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz v1, :cond_5

    nop

    goto/32 :goto_10

    nop

    :cond_5
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0, v1}, Lhsp;->a(Lpnu;)F

    move-result v0

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
.end method

.method public final an(Z)F
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x18

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_4
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

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

    :goto_5
    new-instance v0, Lnvl;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p1, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, p0, v1}, Lnvl;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    new-instance v0, Lnvl;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

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

    :goto_e
    return p1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1, v0}, Lrgw;->aa(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p1, v0}, Lqrg;->u(Ljava/util/Collection;Lrsv;)Ljava/util/Collection;

    move-result-object p1

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

    :goto_14
    check-cast v0, Ljava/lang/Float;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

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

    nop

    :goto_16
    goto/32 :goto_1b

    nop

    nop

    :goto_17
    iget-object p0, p0, Lnvu;->f:Loyn;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v0, Loxv;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_19
    iget-object p1, p0, Lnvu;->ar:Ljava/util/List;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v0, p0, v1}, Lnvl;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x1

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

    :goto_1e
    iget-object v0, p0, Lnvu;->e:Loyn;

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

    :goto_1f
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_20
    invoke-static {p1, v0}, Lqrg;->u(Ljava/util/Collection;Lrsv;)Ljava/util/Collection;

    move-result-object p1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p1, p0, Lnvu;->ar:Ljava/util/List;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_23
    const v1, 0x12

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

    :goto_24
    iget-object v0, p0, Lnvu;->d:Loyn;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {p0}, Loyn;->cM()Ljava/lang/Object;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {p1, v0}, Lrgw;->ac(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

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

    :goto_27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v0, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop
.end method

.method public final ao(Landroid/view/MotionEvent;)F
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, v1, Lmyr;->b:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v1, Lmyr;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    move v3, p1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3
    sub-float/2addr p1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return p1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_c
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

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

    :goto_e
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_f
    const/4 v2, 0x4

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

    :goto_10
    iget-object p0, p0, Lnvu;->C:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Lnvu;->C:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_13
    iget-object v0, p0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_14
    iget-object v1, p0, Lnvu;->ak:Loyd;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Lnbh;->d()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v1, :cond_1

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    :goto_17
    sget-object v1, Lnbh;->c:Lnbh;

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

    :goto_18
    goto :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v1, v0}, Lnnr;->i(Landroid/view/Display;Landroid/content/Context;)Lnbh;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1d
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    :goto_1e
    iget p0, p0, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v1}, Lnbh;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz v1, :cond_3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto :goto_2b

    nop

    nop

    :goto_22
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, p0, Lnvu;->C:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_25
    const v1, 0x16

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sget-object v0, Lnbh;->a:Lnbh;

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

    :goto_27
    iget p0, p0, Landroid/graphics/PointF;->y:F

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

    :goto_28
    return p0

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2a
    move p0, v3

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

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

    :goto_2d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-ne v1, v2, :cond_4

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_32

    nop

    nop

    :goto_2f
    move p1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_30
    goto :goto_2b

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p0, p0, Lnvu;->C:Landroid/graphics/PointF;

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

    :goto_33
    iget p0, p0, Landroid/graphics/PointF;->y:F

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_5
    goto/32 :goto_9

    nop

    :goto_35
    invoke-virtual {v0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop
.end method

.method public final ap(F)I
    .locals 4

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v2, Loxv;

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

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2
    div-float/2addr p1, v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1e

    nop

    nop

    :goto_5
    iget-object p0, p0, Lnvu;->y:Landroid/widget/SeekBar;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->G()Z

    move-result v0

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

    nop

    :goto_7
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    div-float/2addr p1, v2

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

    :goto_a
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_b
    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    iget-object v2, v2, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_d
    return p1

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
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

    :goto_10
    div-double/2addr v0, v2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x47c35000    # 100000.0f

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

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

    :goto_13
    if-ne v0, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    :goto_14
    check-cast p1, Loxv;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v2, Ljava/lang/Float;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p1, p0, Lnvu;->d:Loyn;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_17
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

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

    :goto_18
    mul-float/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_19
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lnvu;->y:Landroid/widget/SeekBar;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1b
    float-to-double v0, p1

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

    :goto_1c
    iget-object v0, p0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_21

    nop

    nop

    :goto_1f
    float-to-double v2, p1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lnvu;->e:Loyn;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_23
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    :goto_24
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

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

    :goto_25
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_26
    double-to-float p1, v0

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

    :goto_27
    check-cast v0, Loxv;

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

    :goto_28
    iget-object v2, p0, Lnvu;->e:Loyn;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2a
    const v1, 0x10

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

    :goto_2b
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2c
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop
.end method

.method public final aq()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnvu;->t:Lnwp;

    nop

    goto/32 :goto_2

    nop

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
    invoke-virtual {p0}, Lnwp;->z()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final ar()V
    .locals 8

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x13

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1
    if-nez v6, :cond_0

    nop

    goto/32 :goto_91

    nop

    :cond_0
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

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

    :goto_3
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean v1, p0, Lnvu;->H:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lnvu;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v4, Lnbh;->c:Lnbh;

    nop

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

    :goto_8
    iget-object v2, p0, Lnvu;->ag:Landroid/view/WindowManager;

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

    :goto_9
    iget v1, v1, Landroid/graphics/PointF;->y:F

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

    :goto_a
    iget v1, v1, Landroid/graphics/PointF;->x:F

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

    :goto_b
    const/high16 v7, 0x40000000    # 2.0f

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    :goto_e
    iget-object v0, p0, Lnvu;->n:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_2
    goto/32 :goto_40

    nop

    :goto_10
    iget-object v1, p0, Lnvu;->C:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_11
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sub-float/2addr v1, v3

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    check-cast v2, Ljava/lang/Float;

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v1, Lnbh;->a:Lnbh;

    nop

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

    nop

    :goto_16
    iget-object v1, p0, Lnvu;->y:Landroid/widget/SeekBar;

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

    :goto_17
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/32 :goto_e

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_19
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_1a
    if-ltz v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    :cond_3
    goto/32 :goto_55

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lnvu;->C:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_1c
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v0}, Lnvu;->az(F)V

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_1e
    iget v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v2, p0, Lnvu;->w:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_20
    iget-object v1, p0, Lnvu;->t:Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_21
    iget-object v1, p0, Lnvu;->V:Lkjj;

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->e(IFFF)V

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_23
    iget-object v2, p0, Lnvu;->n:Loyn;

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

    nop

    :goto_24
    invoke-virtual {v1}, Lnvw;->s()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_26
    iput v3, p0, Lnvu;->M:F

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_27
    sub-float/2addr v1, v3

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

    :goto_28
    iget-object v0, p0, Lnvu;->n:Loyn;

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

    :goto_29
    iget v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2a
    iget v1, v1, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_2b
    iget v1, v1, Landroid/graphics/PointF;->y:F

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

    :goto_2c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_36

    nop

    nop

    :goto_2e
    iget v1, v1, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2f
    iget-object v4, p0, Lnvu;->ag:Landroid/view/WindowManager;

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

    :goto_30
    check-cast v3, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_49

    nop

    :goto_32
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v1, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->p:Landroid/widget/Scroller;

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v2}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v2

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_35
    iget-object v2, p0, Lnvu;->C:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v0, 0x1

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_37
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_38
    iget-object v1, p0, Lnvu;->C:Landroid/graphics/PointF;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_39
    cmpg-float v1, v1, v3

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_3a
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :cond_4
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iput v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->o:F

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v3, v3, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_3d
    int-to-float v2, v4

    nop

    nop

    :goto_3e
    goto/32 :goto_88

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v5}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

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

    :goto_40
    goto/32 :goto_8c

    nop

    nop

    :goto_41
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-nez v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    :cond_5
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v1, p0, Lnvu;->C:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v1}, Lnbh;->d()Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_45
    goto/16 :goto_65

    nop

    :goto_46
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v2}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_48
    iget v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_4a
    check-cast v2, Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

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

    :goto_4c
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i()V

    goto/32 :goto_28

    nop

    nop

    :goto_4e
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4f
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_50
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_51
    div-float/2addr v2, v7

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v4, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v0, p0, Lnvu;->z:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_55
    iget-object v1, p0, Lnvu;->C:Landroid/graphics/PointF;

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_56
    new-instance v2, Landroid/util/DisplayMetrics;

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_57
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

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

    :goto_58
    iget-object v1, p0, Lnvu;->C:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_59
    invoke-virtual {v1, v4}, Lnbh;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    nop

    :goto_5a
    invoke-virtual {p0}, Lnvu;->al()F

    move-result v4

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_5b
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_5c
    goto/16 :goto_3e

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v1, p0, Lnvu;->x:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

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

    :goto_5f
    cmpg-float v1, v1, v3

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

    :goto_60
    invoke-virtual {p0, v0}, Lnvu;->ap(F)I

    move-result v0

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_61
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

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

    :goto_62
    iput-boolean v0, p0, Lnvu;->F:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_63
    iget-object v1, p0, Lnvu;->C:Landroid/graphics/PointF;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_64
    invoke-static {v2, v1}, Lnnr;->i(Landroid/view/Display;Landroid/content/Context;)Lnbh;

    move-result-object v1

    nop

    :goto_65
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {p0}, Lnvu;->d()F

    move-result v1

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

    :goto_67
    goto/16 :goto_89

    nop

    :goto_68
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget v2, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_6b
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_6
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_6c
    iput-boolean v0, p0, Lnvu;->G:Z

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_6d
    if-eqz v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :cond_7
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    add-float/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_70
    invoke-interface {v2}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v2

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

    :goto_71
    iget v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_74
    iget-object v5, p0, Lnvu;->x:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iget v1, v1, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_76
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_77
    check-cast v2, Landroid/view/View;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    sub-float v3, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_7c
    iget-object v1, p0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

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

    :goto_7d
    iget-object v1, p0, Lnvu;->z:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_7e
    check-cast v3, Loxv;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_80
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_95

    nop

    nop

    :goto_82
    sub-float v1, v2, v1

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

    :goto_83
    if-nez v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :cond_8
    goto/32 :goto_21

    nop

    nop

    :goto_84
    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v0, p0, Lnvu;->z:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v1}, Lkjj;->d()V

    :goto_87
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_88
    div-float/2addr v2, v7

    nop

    nop

    nop

    nop

    :goto_89
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iget-object v3, p0, Lnvu;->e:Loyn;

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_8b
    return-void

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_8d
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8e
    goto/16 :goto_72

    nop

    nop

    nop

    nop

    :goto_8f
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_90
    goto/16 :goto_68

    nop

    nop

    nop

    nop

    :goto_91
    goto/32 :goto_4e

    nop

    nop

    :goto_92
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_94
    iget v1, v1, Landroid/graphics/PointF;->y:F

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

    nop

    :goto_95
    iget-object v2, p0, Lnvu;->w:Landroid/content/res/Resources;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_96
    if-ltz v1, :cond_9

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_97
    goto/16 :goto_68

    nop

    nop

    :goto_98
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_99
    sub-float/2addr v1, v2

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
.end method

.method public final as()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    goto/32 :goto_7

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

    :goto_3
    iput-object v0, p0, Lnvu;->C:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_7
    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x14

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    new-instance v0, Landroid/graphics/PointF;

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

.method public final at()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnvu;->t:Lnwp;

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lnvu;->aq()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lnwp;->F()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final au(I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lnvu;->N:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lnvu;->O:I

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
.end method

.method public final av(I)V
    .locals 7

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lnvu;->B:Lnvf;

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

    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Lnvf;->d(F)Lnxe;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    aput p1, v5, v2

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0, v2}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_9
    iget-object v0, p0, Lnvu;->n:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1, v2}, Lnvf;->e(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Lnxe;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v2}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v2, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e
    iget-object v0, v0, Lnvf;->b:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1, p0, p1}, Lnwp;->J(IFF)V

    :goto_11
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_12
    iget-object v4, v0, Lnvf;->b:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lnvu;->B:Lnvf;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

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

    :goto_16
    const v0, 0x11

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->G()Z

    move-result v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1a
    const/4 v5, 0x2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p0, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v2, v0, Lnvf;->b:Landroid/animation/ValueAnimator;

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
    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_3

    nop

    nop

    :goto_20
    iget-object v0, p0, Lnvu;->ae:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_21
    invoke-virtual {v0, p1}, Lnvf;->a(I)F

    move-result p1

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

    :goto_22
    new-array v5, v5, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/32 :goto_9

    nop

    nop

    :goto_24
    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lnvu;->t:Lnwp;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sget-object v2, Lkxo;->b:Ljava/lang/Boolean;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_28
    iget-object v0, p0, Lnvu;->s:Loyn;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_29
    aput v2, v5, v6

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_1f

    nop

    nop

    :goto_2c
    iget-object v0, p0, Lnvu;->B:Lnvf;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2d
    const/16 v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2e
    const v1, 0x17

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

    :goto_2f
    iget-object v2, p0, Lnvu;->f:Loyn;

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

    :goto_30
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_31
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_32
    iget-object p0, p0, Lnvu;->f:Loyn;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_33
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

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

    :goto_34
    iget-object v3, p0, Lnvu;->Q:Landroid/animation/AnimatorListenerAdapter;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method public final aw()Z
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v1, Lhmq;->af:Lhmn;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    cmpg-float v1, v1, v2

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

    :goto_2
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_3
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_1
    goto/32 :goto_38

    nop

    :goto_6
    sget-object v1, Lnne;->o:Lnne;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_8
    sget-object v1, Lnne;->c:Lnne;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move p0, v2

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    return v2

    nop

    :goto_e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_10
    if-eqz v1, :cond_3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v1}, Lhoh;->p(Lhmn;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p0, :cond_4

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

    :cond_4
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lnvu;->U:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v3}, Lpog;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_17
    invoke-virtual {p0}, Lnvu;->c()F

    move-result v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    return p0

    nop

    :goto_19
    goto/32 :goto_25

    nop

    nop

    :goto_1a
    if-ltz v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_6
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lnvu;->i:Loyd;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_7
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1d
    if-eqz v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v1}, Lhdd;->a()Lpog;

    move-result-object v1

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

    :goto_1f
    check-cast v0, Lnne;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, v1}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v1}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v1, Lnne;->b:Lnne;

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

    :goto_23
    invoke-virtual {v0, v1}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

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

    :goto_25
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_26
    sget-object v1, Lnne;->k:Lnne;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sget-object v1, Lnne;->i:Lnne;

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

    :goto_28
    invoke-virtual {v0, v1}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_29
    sget-object v1, Lnne;->h:Lnne;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2a
    if-nez v1, :cond_9

    nop

    goto/32 :goto_2e

    nop

    :cond_9
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2b
    sget-object v3, Lpog;->b:Lpog;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2c
    if-nez v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_a
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_b

    nop

    nop

    :goto_2e
    goto/32 :goto_a

    nop

    nop

    :goto_2f
    iget-object v1, p0, Lnvu;->Y:Lhdd;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0, v1}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_32
    sget-object v1, Lnne;->l:Lnne;

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

    :goto_33
    goto/16 :goto_e

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_d

    nop

    nop

    :goto_35
    const v1, 0x15

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_36
    invoke-static {v0}, Ljub;->a(Lnne;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz v1, :cond_b

    nop

    goto/32 :goto_e

    nop

    :cond_b
    goto/32 :goto_29

    nop

    nop

    :goto_38
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final ax()Z
    .locals 5

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

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

    :goto_1
    cmpl-float v0, v0, v4

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_3
    iget-object v0, p0, Lnvu;->aq:Lrss;

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
    sget-object v1, Lnne;->g:Lnne;

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

    :goto_5
    iget-object v0, p0, Lnvu;->i:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_7
    if-ltz v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_26

    nop

    :goto_9
    goto/32 :goto_54

    nop

    nop

    :goto_a
    check-cast v0, Lnne;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lnvu;->c()F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lnvu;->h:Lprb;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v1, :cond_2

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

    :cond_2
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_f
    return v2

    nop

    :goto_10
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v0, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_12
    invoke-interface {p0}, Lhdd;->a()Lpog;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lnvu;->B:Lnvf;

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
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_3
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_15
    const v0, 0x1

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

    :goto_16
    sget-object v1, Loze;->d:Loze;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_17
    sget-object v0, Lpog;->a:Lpog;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p0}, Lhdd;->a()Lpog;

    move-result-object p0

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_19
    sget-object v1, Lnne;->c:Lnne;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lnvu;->c()F

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1b
    if-ne v0, v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v1, Loze;->e:Loze;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v1}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, v0}, Lpog;->equals(Ljava/lang/Object;)Z

    move-result p0

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

    :goto_21
    sget-object v1, Loze;->f:Loze;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Lnvu;->c()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_23
    if-ltz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast v0, Lnne;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return v3

    nop

    :goto_26
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_28
    iget-boolean v0, p0, Lnvu;->au:Z

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

    :goto_29
    if-eqz v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :cond_6
    goto/32 :goto_53

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lnvu;->aq:Lrss;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_7
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :cond_8
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2f
    cmpl-float v0, v0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_56

    nop

    :goto_31
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_33
    iget-object v0, p0, Lnvu;->i:Loyd;

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_34
    check-cast v0, Lnne;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_37
    sget-object v1, Lnne;->n:Lnne;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_38
    iget-object p0, p0, Lnvu;->Y:Lhdd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_39
    if-eq v0, v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    :cond_9
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_10

    nop

    nop

    :goto_3b
    goto/32 :goto_f

    nop

    nop

    :goto_3c
    sget-object v1, Lgvn;->c:Lgvn;

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

    :goto_3d
    invoke-virtual {v0, v1}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3e
    cmpl-float v0, v0, v4

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

    :goto_3f
    check-cast v0, Lnne;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_40
    if-ne v0, v1, :cond_a

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_a
    :goto_41
    goto/32 :goto_38

    nop

    nop

    :goto_42
    iget-object v0, p0, Lnvu;->i:Loyd;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_43
    cmpl-float v0, v0, v4

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_44
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v0, v1, v3}, Lnvf;->c(FF)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_46
    iget-object v0, p0, Lnvu;->aq:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p0, v0}, Lpog;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-nez p0, :cond_b

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_b
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_49
    sget-object v1, Lnne;->f:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_4a
    invoke-virtual {p0}, Lnvu;->c()F

    move-result v3

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v0, v1}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_4d
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-nez p0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_50
    invoke-virtual {v0, v1}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_51
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-object p0, p0, Lnvu;->Y:Lhdd;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v0, p0, Lnvu;->P:Lgvn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_55
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_25

    nop

    nop

    :goto_57
    iget-boolean v1, v1, Lprb;->h:Z

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-lez v0, :cond_d

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_8

    nop

    :goto_59
    if-eqz v0, :cond_e

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_e
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_5a
    return v3

    nop

    nop

    :goto_5b
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v0, p0, Lnvu;->i:Loyd;

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_5d
    if-ne v0, v1, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_f
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_5e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_5f
    iget-object v0, p0, Lnvu;->i:Loyd;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_60
    check-cast v0, Lnne;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_61
    sget-object v1, Lnne;->g:Lnne;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_62
    if-ltz v0, :cond_10

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    if-ltz v0, :cond_11

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

    :cond_11
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final ay()Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lnvu;->at:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    iget-object p0, p0, Lnvu;->u:Lpog;

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

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

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

    :goto_7
    sget-object v0, Lpog;->a:Lpog;

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

    :goto_8
    const/4 p0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    if-eq v0, p0, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final az(F)V
    .locals 5

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    cmpl-float v2, v0, v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2
    move v0, v2

    nop

    nop

    :goto_3
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_4
    sget-object v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    if-lez v1, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_8
    const/16 v1, 0x14cf

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_a
    iget v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->c:F

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

    :goto_b
    iget v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->d:F

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

    :goto_c
    invoke-virtual {p0, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto/32 :goto_6

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->g()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    iget v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->d:F

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lnvu;->z:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

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

    :goto_10
    const-string v4, "The currentGradationValue of %f is out of range: [%f, %f]"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_11
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->invalidate()V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lnvu;->z:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    cmpg-float v1, v1, v2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_17
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    :goto_18
    iput p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

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

    nop

    :goto_19
    iget-object p0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->p:Landroid/widget/Scroller;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->e(F)F

    move-result p1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

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

    :goto_1c
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    nop

    nop

    goto/32 :goto_10

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

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1e
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1f
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget v3, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->d:F

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_21
    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->d:F

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

    :goto_22
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_23
    iget v1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

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

    :goto_24
    if-gez v0, :cond_2

    nop

    goto/32 :goto_33

    nop

    :cond_2
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v1, 0x14

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
    iput-boolean p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->q:Z

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    check-cast v0, Lscz;

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

    :goto_28
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_3
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2a
    if-lez v2, :cond_4

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_35

    nop

    nop

    :goto_2b
    iget v2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->c:F

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

    :goto_2c
    invoke-interface {v0, v4, v1, v2, v3}, Lscz;->G(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

    nop

    nop

    :goto_2e
    goto/32 :goto_31

    nop

    nop

    :goto_2f
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->r:Z

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_32
    if-gtz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_5
    :goto_33
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->p:Landroid/widget/Scroller;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    cmpg-float v0, p1, v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_36
    return-void

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_38
    iget v2, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->c:F

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    return-void

    nop

    nop

    :goto_3a
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3d
    iget p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->c:F

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3e
    cmpl-float v0, p1, v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_6
    goto/32 :goto_2f

    nop

    :goto_40
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

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

    :goto_41
    iget v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->c:F

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method public final b()F
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    check-cast p0, Loxv;

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
    check-cast p0, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lnvu;->d:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final c()F
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object p0, p0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    iget-object p0, p0, Lnvu;->e:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    check-cast p0, Loxv;

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
    check-cast p0, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final close()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lnvu;->ai:Lrss;

    nop

    goto/32 :goto_5

    nop

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

    :goto_2
    if-nez v0, :cond_0

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

    :goto_3
    iget-object v0, p0, Lnvu;->ai:Lrss;

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

    :goto_4
    invoke-virtual {p0}, Lows;->close()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    invoke-virtual {v0, p0}, Lmep;->j(Lmes;)V

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lnvu;->c:Lows;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    check-cast v0, Lmep;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()F
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    return p0

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lnvu;->al()F

    move-result p0

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
    check-cast v1, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    const/high16 p0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lnvu;->e:Loyn;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_a
    cmpl-float v0, p0, v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_c
    const v1, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    return p0

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

    nop

    :goto_f
    iget-object v0, p0, Lnvu;->x:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    const v0, 0x5

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_13
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x0

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

    :goto_15
    check-cast v1, Ljava/lang/Float;

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
    invoke-virtual {v0, v1, p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->a(FF)F

    move-result p0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_17
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnvu;->f:Loyn;

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
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final f()Loyd;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnvu;->D:Loyn;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g()Lpci;
    .locals 3

    goto/32 :goto_8

    nop

    nop

    :goto_0
    const v1, 0x17

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    :goto_4
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v2, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getVisibility()I

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

    :goto_7
    new-instance v0, Lndt;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x16

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, p0, v2, v1}, Lndt;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lndt;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

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

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    const/16 v2, 0xd

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    if-eq v0, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_15
    const/4 v1, 0x0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0, p0, v2, v1}, Lndt;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_3

    nop

    nop

    :goto_17
    invoke-virtual {p0, v0}, Lnvu;->S(Z)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_12

    nop
.end method

.method public final h()Lpci;
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x4

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

    :goto_3
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_5
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    const/16 v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    invoke-direct {v0, p0, v1, v2}, Lndt;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lndt;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    return-object v0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->setImportantForAccessibility(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final i(Lnxa;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnvu;->ab:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

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

    nop

    nop
.end method

.method public final j(Lnwz;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnvu;->aa:Ljava/util/Set;

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
.end method

.method public final k(Lnxb;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnvu;->ac:Ljava/util/Set;

    nop

    nop

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

    nop
.end method

.method public final l(Lnxd;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iget-object p0, p0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

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

    :goto_2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->c:Ljava/util/List;

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
.end method

.method public final m(Lrss;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, p1, v1}, Lnii;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    const v1, 0xa

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

    :goto_5
    const/16 v1, 0xf

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

    :goto_6
    goto/32 :goto_2

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    :goto_8
    const v0, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lnii;

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

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    iget-object p0, p0, Lnvu;->af:Ljava/util/concurrent/Executor;

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

    :goto_e
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final n(Z)V
    .locals 1

    goto/32 :goto_e

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h:Landroid/animation/ObjectAnimator;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->end()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h:Landroid/animation/ObjectAnimator;

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

    :goto_5
    iget-object p0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h:Landroid/animation/ObjectAnimator;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    iput-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f:Z

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

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

    :goto_f
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->reverse()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    iput-boolean v0, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f:Z

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h:Landroid/animation/ObjectAnimator;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->reverse()V

    goto/32 :goto_4

    nop

    nop
.end method

.method public final o()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnvu;->B:Lnvf;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lnvu;->f:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lnvf;->f()V

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lnvu;->i:Loyd;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final p()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnvu;->t:Lnwp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lnvw;->m()V

    goto/32 :goto_2

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
.end method

.method public final q()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lnvu;->db83966935a355ff6fb2560db8c14e9bm()Z

    move-result v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v0, p0, Lnvu;->g:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lnvw;->c()V

    goto/32 :goto_a

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_8

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lnvu;->t:Lnwp;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lnvu;->aq()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop
.end method

.method public final r()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    goto/32 :goto_e

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lnvu;->ao:Landroid/widget/ImageButton;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    iget-object v0, p0, Lnvu;->ap:Landroid/widget/ImageButton;

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

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

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

    :cond_0
    goto/32 :goto_2

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final s()V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Lowu;->d()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2
    const v0, 0x20

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-boolean v0, p0, Lnvu;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_4
    if-ne v0, v2, :cond_1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_5
    if-ne v0, v2, :cond_2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_7
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_4

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

    :cond_4
    goto/32 :goto_3c

    nop

    :goto_9
    iget-object v0, p0, Lnvu;->y:Landroid/widget/SeekBar;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_a
    iget-object v0, p0, Lnvu;->i:Loyd;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lnvu;->af()Z

    move-result v0

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

    :goto_c
    move v0, v1

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lnvu;->i:Loyd;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_11
    sget-object v2, Lnne;->g:Lnne;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lnvu;->aq()V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lnvu;->t:Lnwp;

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

    nop

    :goto_15
    if-eqz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    :cond_6
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_18
    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v2, Lnne;->n:Lnne;

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

    :goto_1a
    if-ne v0, v2, :cond_8

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1b
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1c
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_9
    goto/32 :goto_f

    nop

    nop

    :goto_1e
    sget-object v2, Lnne;->t:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_1f
    iget-boolean v0, p0, Lnvu;->g:Z

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v2, Lnne;->f:Lnne;

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

    :goto_21
    const v1, 0x1

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

    :goto_22
    iget-object v0, p0, Lnvu;->i:Loyd;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Lnvu;->ax()Z

    move-result v0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Lnvu;->i:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2a
    iget-object p0, p0, Lnvu;->t:Lnwp;

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

    :goto_2b
    cmpg-float v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Lnvu;->at()V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Lnvu;->c()F

    move-result v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Landroid/widget/SeekBar;->isEnabled()Z

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v0, p0, Lnvu;->P:Lgvn;

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

    :goto_30
    const/4 v0, 0x5

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

    nop

    :goto_31
    if-eqz v0, :cond_a

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_32
    if-ne v0, v2, :cond_b

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-eqz v0, :cond_c

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

    :cond_c
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-boolean v0, p0, Lnvu;->E:Z

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

    :goto_35
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

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

    :goto_36
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-eq v0, v2, :cond_d

    nop

    nop

    goto/32 :goto_44

    nop

    :cond_d
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-ltz v0, :cond_e

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

    :cond_e
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3b
    iget v0, p0, Lnvu;->aB:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3c
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0}, Lnvu;->aw()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3f
    rem-int v0, v0, v1

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

    nop

    :goto_40
    goto/16 :goto_d

    nop

    :goto_41
    goto/32 :goto_2f

    nop

    nop

    :goto_42
    invoke-virtual {p0, v0}, Lnvw;->l(I)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_d

    nop

    :goto_44
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_3d

    nop

    :goto_46
    return-void

    nop

    :goto_47
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v0}, Lnvw;->k()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    return-void

    nop

    nop

    :goto_4a
    goto/32 :goto_45

    nop

    nop

    :goto_4b
    sget-object v2, Lgvn;->c:Lgvn;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p0}, Lnvu;->ax()Z

    move-result v0

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

.method public final t(Z)V
    .locals 0

    goto/32 :goto_1

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
    iput-boolean p1, p0, Lnvu;->H:Z

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
.end method

.method public final u(Z)V
    .locals 0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    const-string p1, "zoomUiEnabledStatechart has not been created."

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    sget-object p0, Lnvu;->X:Lsdb;

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

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    const/16 p1, 0x14aa

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lnvu;->t:Lnwp;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-boolean p1, p0, Lnwp;->J:Z

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

.method public final v()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    iget-object v0, p0, Lnvu;->ap:Landroid/widget/ImageButton;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnvu;->ao:Landroid/widget/ImageButton;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    :goto_b
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop
.end method

.method public final w(Z)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnvu;->z:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-boolean p1, p0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->s:Z

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iget-boolean v0, p0, Lnvu;->K:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop
.end method

.method public final x()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lnvw;->d()V

    goto/32 :goto_1

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
    iget-object p0, p0, Lnvu;->t:Lnwp;

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final y(Landroid/view/View;Landroid/content/Context;)V
    .locals 18

    goto/32 :goto_47

    nop

    nop

    :goto_0
    move-object/from16 v16, v4

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v3, v0, Lnvu;->al:Loyd;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v4, v1}, Lows;->d(Lpci;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->A(Z)V

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, v0, Lnvu;->ai:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_6
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    :goto_7
    iget-object v1, v0, Lnvu;->az:Ljqb;

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

    :goto_8
    iget-object v13, v0, Lnvu;->U:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    new-instance v4, Lnug;

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

    :goto_b
    new-instance v1, Lnvb;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v3, Lnvs;

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

    :goto_d
    iput-object v2, v0, Lnvu;->as:Landroid/widget/TextView;

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_e
    iget-object v5, v0, Lnvu;->y:Landroid/widget/SeekBar;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, v0, Lnvu;->as:Landroid/widget/TextView;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    iput-boolean v2, v0, Lnvu;->E:Z

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x1

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v2, v0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :cond_1
    goto/32 :goto_a3

    nop

    :goto_14
    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto/32 :goto_65

    nop

    nop

    :goto_15
    invoke-direct {v3, v0}, Lnvq;-><init>(Lnvu;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v3, v0}, Lnvr;-><init>(Lnvu;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v6, Lnvk;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->x()Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    move-result-object v2

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

    nop

    :goto_19
    invoke-direct {v1, v0, v3}, Lnug;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v2, v3}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n()Landroid/widget/SeekBar;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v1, v0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_1d
    new-instance v3, Lnvf;

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v3, Lnuy;

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

    nop

    :goto_20
    invoke-direct {v3, v0, v4}, Lnug;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_21
    iget-object v8, v0, Lnvu;->d:Loyn;

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v12, v0, Lnvu;->r:Lnvg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_23
    return-void

    nop

    :goto_24
    goto/32 :goto_4f

    nop

    nop

    :goto_25
    check-cast v1, Lmep;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_26
    if-eqz v3, :cond_2

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v3}, Lnvs;-><init>()V

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_28
    const/4 v3, 0x4

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v6, v0, Lnvu;->aa:Ljava/util/Set;

    nop

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

    :goto_2a
    invoke-direct {v0, v1, v2}, Lnvu;->1938725685c818b36d8cfe92893912eem(Landroid/widget/ImageButton;Z)V

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v3, :cond_3

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_2d
    iget-object v1, v0, Lnvu;->c:Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v5, v0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_71

    nop

    :goto_30
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v5, v0, Lnvu;->af:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_32
    iget-boolean v3, v0, Lnvu;->K:Z

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

    :goto_33
    invoke-direct {v1, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v1, v0, Lnvu;->c:Lows;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_35
    iget-object v2, v0, Lnvu;->Y:Lhdd;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v1, v0}, Lmep;->b(Lmes;)V

    :goto_37
    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_38
    iput-boolean v2, v1, Lnwp;->I:Z

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v4, v0, v3}, Lnvj;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_3b
    iget-object v1, v0, Lnvu;->y:Landroid/widget/SeekBar;

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v1, v0, Lnvu;->as:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_3d
    iput-object v3, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->v:Lnvp;

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v1, v0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v2, v0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

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

    :goto_41
    iput-object v2, v0, Lnvu;->y:Landroid/widget/SeekBar;

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {v1, v3}, Ldwd;->h(Landroid/view/View;Ldvd;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v4, v0, Lnvu;->d:Loyn;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v3, v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setVisibility(I)V

    :goto_46
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const v0, 0x1a

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_48
    invoke-interface {v2}, Lhdd;->a()Lpog;

    move-result-object v2

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_49
    new-instance v3, Lnug;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_4a
    iget-object v5, v0, Lnvu;->af:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_4b
    iget-object v1, v0, Lnvu;->ai:Lrss;

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iput-object v3, v0, Lnvu;->B:Lnvf;

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v4, v0, Lnvu;->t:Lnwp;

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

    :goto_4e
    iget-object v2, v0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

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

    nop

    nop

    :goto_4f
    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_50
    iput-object v2, v0, Lnvu;->ap:Landroid/widget/ImageButton;

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v3, v0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_52
    sget-object v3, Lkxo;->a:Ljava/lang/Boolean;

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

    :goto_53
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_54
    if-eqz v3, :cond_5

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_55
    invoke-direct/range {v4 .. v17}, Lnuy;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Ljava/util/Set;Loyn;Loyn;Lmjv;Lrss;Lhdd;Loyd;Lhoh;FLnvf;Ljava/util/Set;Ljqb;)V

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_56
    iput-object v3, v0, Lnvu;->t:Lnwp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_57
    move-object v4, v3

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    new-instance v4, Lnvo;

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_59
    iget v14, v0, Lnvu;->j:F

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    check-cast v1, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

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

    :goto_5b
    iget-object v5, v0, Lnvu;->af:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v1, v0, Lnvu;->z:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object v7, v0, Lnvu;->f:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    move-object/from16 v17, v1

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v3, v0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_61
    new-instance v1, Lnug;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_62
    iget-object v5, v0, Lnvu;->i:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_63
    iget-object v3, v0, Lnvu;->ax:Landroid/animation/AnimatorListenerAdapter;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v15, v0, Lnvu;->B:Lnvf;

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v1, v0, Lnvu;->y:Landroid/widget/SeekBar;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_66
    iput-object v2, v0, Lnvu;->x:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-direct/range {v4 .. v12}, Lnvf;-><init>(Loyd;Loyn;Loyn;Loyn;Lhdd;Lprb;Lhoh;Lnvg;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_68
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v1}, Lnwr;->a()V

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-boolean v1, v0, Lnvu;->K:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_6b
    const/4 v5, 0x3

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_6c
    iget-object v1, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->d:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_6d
    iget-object v4, v0, Lnvu;->ac:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6e
    iput-object v2, v0, Lnvu;->z:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6f
    iget-object v6, v0, Lnvu;->f:Loyn;

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v3, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->setHorizontalFadingEdgeEnabled(Z)V

    :goto_71
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_72
    invoke-direct {v6, v0, v3, v4, v1}, Lnvk;-><init>(Lnvu;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/view/GestureDetector;)V

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->A(Z)V

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_74
    iget-object v11, v0, Lnvu;->U:Lhoh;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v3}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h()V

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_76
    invoke-direct/range {p0 .. p0}, Lnvu;->967db76ff980688139725c54cdc5cd82m()V

    goto/32 :goto_85

    nop

    nop

    :goto_77
    new-instance v3, Lnvr;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_78
    invoke-virtual {v3}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n()Landroid/widget/SeekBar;

    move-result-object v3

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_7a
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_7c
    new-instance v1, Landroid/view/GestureDetector;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_7d
    iget-boolean v2, v0, Lnvu;->E:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_7e
    invoke-interface {v3, v4, v5}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v3

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_7f
    iget-object v2, v0, Lnvu;->s:Loyn;

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

    :goto_80
    iput-object v2, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k:Llyv;

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

    :goto_81
    iget-object v8, v0, Lnvu;->n:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v10, v0, Lnvu;->h:Lprb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_83
    iget-object v2, v0, Lnvu;->ay:Llyv;

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_84
    iget-object v4, v0, Lnvu;->e:Loyn;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_85
    invoke-direct/range {p0 .. p0}, Lnvu;->adaea855441dbc84b995b0cb750b08c8m()V

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_86
    move-object/from16 v0, p0

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v1, v3}, Lows;->d(Lpci;)V

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_89
    iget-object v9, v0, Lnvu;->Y:Lhdd;

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_8a
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object v4, v0, Lnvu;->c:Lows;

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object v0, v0, Lnvu;->D:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8d
    iget-object v5, v0, Lnvu;->f:Loyn;

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

    nop

    :goto_8e
    iget-object v1, v0, Lnvu;->ao:Landroid/widget/ImageButton;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/32 :goto_9f

    nop

    nop

    :goto_90
    invoke-virtual {v1, v3}, Lows;->d(Lpci;)V

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iget-object v3, v0, Lnvu;->z:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_92
    invoke-direct {v4, v0, v5}, Lnug;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4a

    nop

    nop

    :goto_93
    iput-boolean v2, v0, Lnvu;->G:Z

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_94
    iget-object v2, v0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_95
    const/16 v4, 0x8

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_96
    iget-object v12, v0, Lnvu;->i:Loyd;

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

    :goto_97
    invoke-interface {v5, v1, v6}, Loyn;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_98
    iget-object v2, v0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

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

    :goto_99
    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i()Landroid/widget/ImageButton;

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

    :goto_9a
    iget-object v3, v0, Lnvu;->z:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_9b
    invoke-direct {v4, v0}, Lnvo;-><init>(Lnvu;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    iput-boolean v1, v0, Lnvu;->H:Z

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_9d
    iget-object v1, v0, Lnvu;->ap:Landroid/widget/ImageButton;

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_9e
    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->h()Landroid/widget/ImageButton;

    move-result-object v2

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_9f
    iget-boolean v1, v0, Lnvu;->E:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_a0
    invoke-direct {v3, v0}, Lnvp;-><init>(Lnvu;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_a1
    iput v2, v0, Lnvu;->aB:I

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    sget-object v3, Lhnz;->a:Lhmo;

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

    :goto_a3
    goto/32 :goto_24

    nop

    nop

    :goto_a4
    goto/32 :goto_86

    nop

    nop

    :goto_a5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a6
    iget-object v1, v0, Lnvu;->t:Lnwp;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_a7
    iget-object v1, v0, Lnvu;->c:Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_a8
    iget-object v1, v0, Lnvu;->an:Lnwu;

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

    :goto_a9
    iget-boolean v1, v0, Lnvu;->g:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iput-object v2, v0, Lnvu;->ao:Landroid/widget/ImageButton;

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    iget-object v11, v0, Lnvu;->Y:Lhdd;

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_ae
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_af
    iget-object v10, v0, Lnvu;->ai:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_b0
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_6
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    const/4 v4, 0x5

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    iget-object v7, v0, Lnvu;->e:Loyn;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    iput-boolean v2, v0, Lnvu;->F:Z

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_b4
    invoke-interface {v4, v3, v5}, Loyn;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_b5
    move-object/from16 v1, p1

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

    :goto_b6
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_b7
    iget-boolean v3, v0, Lnvu;->g:Z

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_b8
    iget-object v1, v0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-virtual {v1, v4}, Lows;->d(Lpci;)V

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iget-object v1, v0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {v3}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v3

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_bc
    new-instance v4, Lnvj;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    new-instance v3, Lnvp;

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_be
    iget-object v3, v0, Lnvu;->x:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_bf
    iput-object v2, v0, Lnvu;->u:Lpog;

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

    :goto_c0
    invoke-interface {v4, v3, v5}, Loyn;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    new-instance v3, Lnvq;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c2
    iget-object v9, v0, Lnvu;->aC:Lmjv;

    nop

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

    :goto_c3
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_c4
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_c5
    iput-object v1, v0, Lnvu;->an:Lnwu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_c6
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_c7
    iget-object v6, v0, Lnvu;->af:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    iget-object v2, v0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

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

    nop

    :goto_c9
    move-object v4, v3

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_cb
    invoke-direct {v0, v1, v3}, Lnvu;->1938725685c818b36d8cfe92893912eem(Landroid/widget/ImageButton;Z)V

    goto/32 :goto_3c

    nop

    nop

    :goto_cc
    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->w()Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    move-result-object v2

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    iput-object v2, v0, Lnvu;->w:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-direct {v1, v3, v4}, Lnvb;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Lnwp;)V

    goto/32 :goto_c5

    nop

    nop
.end method

.method public final z()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lnwy;->b:Lnwy;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lnvu;->fcf625f2784d4de4b2b52af966228b64m()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2
    const v0, 0x1f

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

    :goto_3
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_11

    nop

    nop

    :goto_4
    sget-object v0, Lnwy;->b:Lnwy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_15

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Lnvu;->U(Lnwy;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1c

    nop

    :goto_9
    goto/32 :goto_16

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

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
    goto/16 :goto_26

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_25

    nop

    nop

    :goto_d
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    :goto_e
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    :goto_f
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x20

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

    :goto_11
    invoke-virtual {p0}, Lnvu;->N()V

    goto/32 :goto_29

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lnvu;->N()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lnvu;->Y:Lhdd;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_16
    iget-boolean v0, p0, Lnvu;->E:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lnvu;->s()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v0}, Lhdd;->a()Lpog;

    move-result-object v0

    nop

    goto/32 :goto_2f

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
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p0}, Lnvu;->58bf383f6ef88b4ebf94ecfc8585b901m()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lnvu;->U:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v1, Lhnz;->c:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_22
    invoke-virtual {p0, v0}, Lnvu;->U(Lnwy;)V

    :goto_23
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_24
    const-string v0, "camera.lenstoggles_enable"

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

    :goto_25
    sget-object v0, Lnwy;->c:Lnwy;

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_28
    invoke-static {v0}, Lcom/a;->ad_mc(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_29
    goto :goto_23

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_8

    nop

    :goto_2c
    invoke-virtual {v0, v1}, Lpog;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2d
    return-void

    nop

    :goto_2e
    goto/32 :goto_4

    nop

    nop

    :goto_2f
    sget-object v1, Lpog;->a:Lpog;

    nop

    goto/32 :goto_2c

    nop

    nop
.end method
