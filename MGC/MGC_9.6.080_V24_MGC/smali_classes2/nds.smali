.class public Lnds;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final F:I

.field public static final a:Lsdb;

.field static final b:I


# instance fields
.field public A:Lndq;

.field public B:Lhdd;

.field public C:Lpog;

.field public final D:Ljava/util/List;

.field public E:I

.field private final G:Landroid/view/ViewGroup;

.field private H:Lrss;

.field private I:Z

.field private J:Z

.field public final c:Landroid/animation/ObjectAnimator;

.field public final d:Landroid/animation/ValueAnimator;

.field public final e:Landroid/view/animation/BaseInterpolator;

.field public f:Landroid/animation/AnimatorSet;

.field public final g:Landroid/graphics/Paint;

.field public final h:Landroid/graphics/Paint;

.field public final i:Landroid/graphics/Paint;

.field public final j:Landroid/os/Handler;

.field public k:Lrss;

.field public l:Landroid/graphics/Rect;

.field public m:Lndp;

.field public n:I

.field public o:Lrss;

.field public p:F

.field public q:Loyd;

.field public r:I

.field public s:Loyn;

.field public t:Lnne;

.field public u:I

.field public v:Landroid/view/View;

.field public w:Landroid/view/View;

.field public x:Z

.field public y:I

.field public z:Lrss;


# direct methods
.method private final 132cd3b981019b59dc42653eea0b34b4m()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lnds;->u:I

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
    add-int/lit8 v0, v0, 0x1

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

    :goto_2
    return v0

    nop

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Lnds;->u:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput v0, Lnds;->F:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/high16 v0, 0x42cc0000    # 102.0f

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    sget-object v0, Lmyy;->a:Lmyy;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v0, v0, Lmyy;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    sput-object v0, Lnds;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    sput v0, Lnds;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    const-string v0, "nds"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 7

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_47

    nop

    nop

    :goto_1
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lnds;->l:Landroid/graphics/Rect;

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

    :goto_3
    iput v0, p0, Lnds;->r:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_4
    const/4 v3, 0x2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_40

    nop

    nop

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    iput-object v3, v0, Lqsz;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_9
    iput-boolean v1, p0, Lnds;->I:Z

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

    :goto_a
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Loym;->a(Ljava/lang/Object;)Loyn;

    move-result-object v0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_d
    iput-object v0, p0, Lnds;->d:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0}, Lndm;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v3, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_12
    iput v1, p0, Lnds;->n:I

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v0, Lpog;->b:Lpog;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Lnds;->m:Lndp;

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

    :goto_15
    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v0, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_17
    const-wide/16 v3, 0xfa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_18
    iput v2, p0, Lnds;->E:I

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

    :goto_19
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_1a
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_1b
    sget v0, Lnds;->F:I

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object v0, p0, Lnds;->k:Lrss;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0}, Lndl;-><init>()V

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_1f
    iput-object v0, p0, Lnds;->B:Lhdd;

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

    :goto_20
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    :goto_21
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_22
    new-instance v0, Lqsz;

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

    :goto_23
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_25
    new-instance v0, Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_26
    new-array v3, v3, [F

    nop

    nop

    nop

    fill-array-data v3, :array_0

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput-object v0, p0, Lnds;->C:Lpog;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_28
    iput-object p1, p0, Lnds;->G:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput v1, p0, Lnds;->u:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_2a
    iput-object v0, p0, Lnds;->f:Landroid/animation/AnimatorSet;

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

    :goto_2b
    new-instance v3, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2c
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object v0, p0, Lnds;->H:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_2e
    iput-object v0, p0, Lnds;->e:Landroid/view/animation/BaseInterpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2f
    const v1, 0x15

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

    :goto_30
    const/high16 v5, -0x1000000

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_31
    iput-object v0, p0, Lnds;->h:Landroid/graphics/Paint;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iput-object v0, p0, Lnds;->s:Loyn;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_33
    invoke-static {p1, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

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

    nop

    :goto_34
    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput-object v3, p0, Lnds;->t:Lnne;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iput-object v0, p0, Lnds;->o:Lrss;

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    new-instance v0, Lndm;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_39
    new-instance v2, Landroid/os/Handler;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_3a
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3b
    new-instance v5, Lieq;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_3c
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3d
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

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

    nop

    nop

    :goto_3e
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3f
    iput-object v0, p0, Lnds;->c:Landroid/animation/ObjectAnimator;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_40
    iput-object v0, p0, Lnds;->i:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_61

    nop

    nop

    :goto_42
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_43
    iput v0, p0, Lnds;->p:F

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_44
    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_45
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iput-boolean v1, p0, Lnds;->J:Z

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_47
    iput-object v0, p0, Lnds;->g:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_4a
    new-instance v5, Lndn;

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_4b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_4c
    iput-object v0, p0, Lnds;->A:Lndq;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_16

    nop

    nop

    :goto_4e
    iput-boolean v2, p0, Lnds;->x:Z

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_4f
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

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

    :goto_50
    iput-object v0, p0, Lnds;->z:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_51
    filled-new-array {v1, v0}, [I

    move-result-object v0

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_52
    const/4 v0, -0x1

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

    :goto_53
    invoke-direct {v5, p0, v6}, Lieq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_54
    iput-object v0, p0, Lnds;->D:Ljava/util/List;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_55
    iput-object v2, p0, Lnds;->j:Landroid/os/Handler;

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

    :goto_56
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_57
    sget v0, Lnds;->b:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_59
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const/16 v6, 0xa

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_5c
    const/4 v1, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5d
    new-instance v0, Landroid/graphics/Paint;

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

    :goto_5e
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto/32 :goto_2e

    nop

    nop

    :goto_5f
    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_60
    invoke-direct {v0, v3}, Lqsz;-><init>([C)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_61
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_62
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_63
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_64
    invoke-direct {v5, p0}, Lndn;-><init>(Lnds;)V

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_65
    const/4 v2, 0x1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto/32 :goto_4a

    nop

    nop

    :goto_67
    sget-object v3, Lnne;->a:Lnne;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v0}, Lqsz;->d()Lndp;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_69
    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :goto_6a
    goto/32 :goto_f

    nop

    nop

    :goto_6b
    add-int v0, v0, v1

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

    nop

    :goto_6c
    invoke-virtual {v0, v1}, Lqsz;->e(I)V

    goto/32 :goto_68

    nop

    nop

    :goto_6d
    iput v1, p0, Lnds;->y:I

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_6e
    new-instance v0, Lndl;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_6f
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    goto/32 :goto_69

    nop

    nop

    :goto_70
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_71
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_54

    nop

    nop
.end method

.method public static a(Landroid/graphics/Rect;)F
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return v1

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

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

    :goto_a
    cmpl-float v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

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

    :goto_11
    int-to-float p0, p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    div-float/2addr v0, p0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_13
    const v0, 0x8

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_15
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public static b(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/animation/TimeInterpolator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, p0}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    const v0, 0x19

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

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v1, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
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

    nop

    nop

    :goto_6
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x7

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Landroid/animation/RectEvaluator;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    :goto_b
    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_9

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

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop
.end method

.method public static c(Landroid/graphics/Canvas;Landroid/graphics/Rect;ILandroid/graphics/Paint;)V
    .locals 9

    goto/32 :goto_16

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

    :goto_1
    goto/32 :goto_14

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
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    if-gtz p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

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

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_6
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_7
    iget v0, p1, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object v1, p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    int-to-float v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    iget v0, p1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_b
    const v1, 0x6

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_c
    move v6, v7

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object v8, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    int-to-float v4, v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    int-to-float v5, p1

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

    :goto_14
    invoke-virtual {p0, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/32 :goto_2

    nop

    nop

    :goto_15
    int-to-float v7, p2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x11

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v0, p1, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    int-to-float v3, v0

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

    :goto_1a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final d()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_16

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

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

    :goto_3
    const v0, 0xd

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

    :goto_4
    goto/32 :goto_1

    nop

    nop

    :goto_5
    iget-object p0, p0, Lnds;->D:Ljava/util/List;

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
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

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

    :goto_a
    iput-object v0, p0, Lnds;->H:Lrss;

    nop

    nop

    nop

    nop

    :goto_b
    :try_start_0
    iget-object v0, p0, Lnds;->D:Ljava/util/List;

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Runnable;

    nop

    nop

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lnds;->H:Lrss;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lnds;->D:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lnds;->H:Lrss;

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

    :goto_11
    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto/32 :goto_2

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_15
    throw v0

    nop

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    :goto_19
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 3

    goto/32 :goto_1c

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2
    if-ne v0, v1, :cond_1

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

    :cond_1
    goto/32 :goto_14

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Lnds;->r:I

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    :goto_a
    cmpl-float v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    const/4 v1, -0x1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    invoke-interface {v2, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput v0, p0, Lnds;->E:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_11
    iput v1, p0, Lnds;->r:I

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    :goto_13
    iget-object v0, p0, Lnds;->G:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, p0, Lnds;->s:Loyn;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_f

    nop

    nop

    :goto_17
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x8

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lnds;->f()V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lnds;->d()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x12

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lnds;->c:Landroid/animation/ObjectAnimator;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop
.end method

.method public final f()V
    .locals 3

    goto/32 :goto_1c

    nop

    nop

    :goto_0
    iput-object v0, p0, Lnds;->k:Lrss;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

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
    goto/32 :goto_1e

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean v2, p0, Lnds;->J:Z

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lnds;->G:Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lnds;->G:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_20

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-boolean v0, p0, Lnds;->J:Z

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

    :goto_d
    const/4 v2, 0x0

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

    :goto_e
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_10
    const/4 v0, 0x1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Lnds;->132cd3b981019b59dc42653eea0b34b4m()I

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_3

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lnds;->z:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_15
    iput v0, p0, Lnds;->E:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_17
    iget-object v0, p0, Lnds;->z:Lrss;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1}, Llad;->k(Ljava/lang/Class;)V

    goto/32 :goto_5

    nop

    nop

    :goto_19
    const-class v1, Lnds;

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

    :goto_1a
    check-cast v0, Llad;

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

    :goto_1b
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0xd

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_2

    nop

    goto/32 :goto_6

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_20
    const/16 v1, 0x8

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_21
    const v1, 0x7

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public final g()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v0, 0x8

    nop

    nop

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

    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lnds;->v:Landroid/view/View;

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

.method public final h()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    const/16 v0, 0x8

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lnds;->w:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final i()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iget-object p0, p0, Lnds;->G:Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final j()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnds;->G:Landroid/view/ViewGroup;

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final k(Landroid/graphics/Rect;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lnds;->j()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lnds;->l:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method final l(Ljava/lang/Runnable;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p1, p0, Lnds;->H:Lrss;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final m()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lnds;->G:Landroid/view/ViewGroup;

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

    nop

    :goto_1
    iget-object v0, p0, Lnds;->c:Landroid/animation/ObjectAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_15

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

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x10

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    const v1, 0x4

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
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x0

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

    :goto_12
    iget-object p0, p0, Lnds;->G:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_13
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_15
    iget-object v0, p0, Lnds;->G:Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final n()V
    .locals 1

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
    iget-object p0, p0, Lnds;->v:Landroid/view/View;

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
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method final o()Z
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

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

    :goto_1
    sget-object v1, Lnne;->f:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnds;->A:Lndq;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    goto :goto_e

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lnne;->d()Z

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    return p0

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

    :goto_9
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_b
    invoke-interface {p0}, Lndq;->a()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    const v1, 0x5

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eq v0, v1, :cond_2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

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

    :goto_14
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lnds;->t:Lnne;

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
.end method

.method public final p()Z
    .locals 1

    goto/32 :goto_2

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
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lnds;->o()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

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

    :goto_6
    iget-boolean p0, p0, Lnds;->I:Z

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop
.end method

.method public final q(Lnne;Ljava/lang/Runnable;Lndr;Lndo;)V
    .locals 10

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_2
    invoke-interface {p3}, Lndr;->c()Lrss;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3
    move-object v3, p2

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v7, v6, v8}, Landroid/graphics/Rect;->offset(II)V

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eq p2, v4, :cond_0

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_6
    iget v0, p0, Lnds;->E:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_7
    iput-boolean p2, p0, Lnds;->x:Z

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_8
    check-cast v2, Lnjh;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_68

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_20

    nop

    nop

    :goto_d
    check-cast v0, Lnjh;

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object p1, Lcom/google/android/build/data/ERtJ/cVlffQDuQRSSY;->KWJT:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_f
    const v0, 0x12

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lnds;->i()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p3}, Lndr;->h()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_12
    const v1, 0x3

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x4

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_14
    new-instance v1, Lkwi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_15
    iget-object v6, v6, Lnjh;->c:Lrss;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v6, v0}, Lqsz;->e(I)V

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v8, v2, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_18
    iget v6, v0, Landroid/graphics/Rect;->left:I

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

    :goto_19
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    :cond_2
    goto/32 :goto_96

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, p2}, Lnds;->l(Ljava/lang/Runnable;)V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_ce

    nop

    nop

    :goto_1d
    invoke-interface {p3}, Lndr;->b()Lrss;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_cc

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lnds;->q:Loyd;

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

    :goto_21
    new-instance v7, Llwo;

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

    nop

    :goto_22
    invoke-virtual {v4, v0}, Lrss;->b(Lrsk;)Lrss;

    move-result-object v0

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

    :goto_23
    check-cast v6, Lnjh;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_24
    invoke-interface {p3}, Lndr;->d()V

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_25
    iget-object p1, p0, Lnds;->H:Lrss;

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v0, p0, Lnds;->l:Landroid/graphics/Rect;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_27
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v0, Ljava/lang/Integer;

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_29
    if-ne v6, v2, :cond_3

    nop

    nop

    goto/32 :goto_73

    nop

    :cond_3
    goto/32 :goto_bf

    nop

    nop

    :goto_2a
    move-object v5, p4

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v7, :cond_4

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    :cond_4
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2d
    check-cast v6, Lscz;

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

    :goto_2e
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    throw p0

    nop

    nop

    :goto_30
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v6}, Lrss;->h()Z

    move-result v7

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

    :goto_32
    move-object v6, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_cc

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v0, Llfe;

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p2}, Lrss;->h()Z

    move-result v1

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

    nop

    nop

    :goto_37
    new-instance v0, Llnm;

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    :goto_38
    if-eqz v1, :cond_5

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_39
    if-eqz v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_6
    goto/32 :goto_7d

    nop

    nop

    :goto_3a
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {v6, v8, v7, v0}, Lscz;->E(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_3c
    new-instance v0, Llnm;

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_3d
    iput-object p1, p0, Lnds;->t:Lnne;

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v6, p0, Lnds;->d:Landroid/animation/ValueAnimator;

    nop

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

    nop

    :goto_40
    iget-object v7, v2, Lnjh;->a:Landroid/graphics/Bitmap;

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v6}, Lscs;->c()Lsdo;

    move-result-object v6

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v4, v0}, Lrss;->b(Lrsk;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_43
    return-void

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_7c

    nop

    nop

    :goto_45
    iget-object p2, p0, Lnds;->s:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v2, 0x5

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_47
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

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

    nop

    :goto_48
    const-string p1, "Somehow trying to go from FADING to WAITING_FOR_BITMAP: Illegal!"

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_49
    iput-object v0, p0, Lnds;->m:Lndp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_4a
    iput-object p2, p0, Lnds;->k:Lrss;

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast p2, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p2, v3, v1}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    filled-new-array {v2, v1}, [I

    move-result-object v1

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

    nop

    :goto_4e
    check-cast v6, Ljava/lang/Float;

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

    :goto_4f
    invoke-virtual {v0, v8}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_50
    iget-object p2, p0, Lnds;->s:Loyn;

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget v6, p0, Lnds;->E:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_52
    iget-object p2, p0, Lnds;->G:Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iput v2, p0, Lnds;->n:I

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

    :goto_54
    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_55
    iget-object p2, p0, Lnds;->z:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_56
    move-object v4, p3

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p0}, Lnds;->o()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iput v3, p0, Lnds;->E:I

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    mul-int/2addr v6, v7

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

    :goto_5a
    const/4 v6, 0x2

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const/16 p3, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_5e
    check-cast p2, Llad;

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {p0}, Lnds;->m()V

    goto/32 :goto_6c

    nop

    nop

    :goto_60
    invoke-direct/range {v0 .. v6}, Llwo;-><init>(Lnds;Lnne;Ljava/lang/Runnable;Lndr;Lndo;I)V

    goto/32 :goto_6

    nop

    nop

    :goto_61
    const/4 v3, 0x2

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_62
    const-class v3, Lnds;

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_63
    invoke-interface {p3}, Lndr;->e()V

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-direct/range {v3 .. v9}, Llfe;-><init>(Lnds;ILndr;Lnne;Lndo;I)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_66
    if-nez p2, :cond_7

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v6, v2, Lnjh;->a:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_30

    nop

    nop

    :goto_69
    goto/32 :goto_21

    nop

    nop

    :goto_6a
    invoke-virtual {p2}, Lrss;->h()Z

    move-result v2

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

    :goto_6b
    iput p2, p0, Lnds;->r:I

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

    :goto_6c
    iget-object v0, p0, Lnds;->j:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6d
    if-nez v6, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :cond_8
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v2, p0, Lnds;->d:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_6f
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_70
    invoke-interface {p2, v4}, Loyn;->a(Ljava/lang/Object;)V

    :goto_71
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_72
    return-void

    nop

    :goto_73
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    return-void

    nop

    :goto_75
    goto/32 :goto_65

    nop

    nop

    :goto_76
    invoke-direct {v7, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_77
    goto/16 :goto_b7

    nop

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_b6

    nop

    nop

    :goto_79
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {p0, p2}, Lnds;->l(Ljava/lang/Runnable;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    const/4 p1, 0x0

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

    :goto_7c
    invoke-direct {p0}, Lnds;->132cd3b981019b59dc42653eea0b34b4m()I

    move-result v5

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_7d
    iput v0, p0, Lnds;->E:I

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

    :goto_7e
    move-object v7, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_7f
    move-object v4, p0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_80
    iput v0, p0, Lnds;->E:I

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_81
    new-instance v7, Landroid/graphics/Rect;

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-interface {p3, p1}, Lndr;->f(Lnne;)V

    goto/32 :goto_5f

    nop

    nop

    :goto_83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_84
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_85
    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_86
    if-eq v0, v2, :cond_9

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

    :cond_9
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_87
    invoke-direct {v1, p0, v5, v2}, Lkwi;-><init>(Ljava/lang/Object;II)V

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_88
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_89
    const/16 v2, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_8a
    sget-object p0, Lnds;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_8b
    const-string v8, "Source %s is not contained in preview box %s"

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_8c
    invoke-virtual {p2, v3}, Llad;->g(Ljava/lang/Class;)V

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-interface {p2}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_8e
    iget-object v0, p0, Lnds;->d:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {p2}, Lrss;->h()Z

    move-result p1

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iput-object p1, p0, Lnds;->o:Lrss;

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

    nop

    :goto_91
    invoke-virtual {v0, v1}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_92
    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_94
    iget v7, v2, Lnjh;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_95
    iget-object v2, p0, Lnds;->f:Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_97
    const/16 v8, 0x1341

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_98
    const/4 v9, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    :goto_99
    const-wide/16 v2, 0xfa0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_9a
    check-cast v0, Landroid/graphics/Rect;

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

    :goto_9b
    const/16 p1, 0x1345

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_9c
    invoke-direct {p2, p1, v7, p3, v1}, Lmiv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_9d
    const/4 v0, 0x1

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_9e
    invoke-virtual {p2}, Lrss;->h()Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    iput v6, p0, Lnds;->p:F

    nop

    nop

    nop

    :goto_a0
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_a2
    iput v3, p0, Lnds;->E:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-direct {v6, v1}, Lqsz;-><init>([C)V

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_a5
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {v6}, Lqsz;->d()Lndp;

    move-result-object v0

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

    :goto_a7
    iget v0, v0, Lndp;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    const/4 v1, 0x0

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    move-object v0, v7

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

    :goto_ab
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_ac
    new-instance p2, Lmiv;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_ad
    iput-boolean p2, p0, Lnds;->I:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :goto_ae
    iput v0, p0, Lnds;->y:I

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

    :goto_af
    new-instance v6, Lqsz;

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_b0
    sget v1, Lnds;->F:I

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_b1
    iget v2, v2, Lnjh;->b:I

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-direct {v0, v2}, Llnm;-><init>(I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    move-object v8, p4

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_b4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object p2

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

    :goto_b6
    move-object v0, v7

    nop

    nop

    :goto_b7
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    move-object v2, p1

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

    :goto_b9
    invoke-direct {v0, v1}, Llnm;-><init>(I)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

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

    :goto_bc
    check-cast v0, Lnjh;

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_bd
    check-cast v6, Landroid/graphics/Rect;

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

    :goto_be
    sget v4, Lnds;->b:I

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    if-ne v6, v0, :cond_a

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-virtual {v0}, Lnjh;->a()Landroid/graphics/Rect;

    move-result-object v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_c1
    iput-boolean v0, p0, Lnds;->J:Z

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    goto/32 :goto_52

    nop

    nop

    :goto_c3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_c5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_c7
    sget-object v6, Lnds;->a:Lsdb;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    mul-int/2addr v7, v2

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_c9
    if-eqz p1, :cond_b

    nop

    goto/32 :goto_75

    nop

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

    :goto_ca
    new-instance v8, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_cb
    invoke-virtual {p0}, Lnds;->i()V

    :goto_cc
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    iput-object v0, v6, Lqsz;->c:Ljava/lang/Object;

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

    :goto_ce
    iget-object v2, p0, Lnds;->c:Landroid/animation/ObjectAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_cf
    invoke-interface {v6}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_d0
    move-object v3, v0

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_d1
    iget v8, v0, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d2
    const/4 v4, -0x1

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

    :goto_d3
    iget p2, p0, Lnds;->r:I

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

    :goto_d4
    const/16 v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_d5
    iget-object v0, v0, Lnjh;->a:Landroid/graphics/Bitmap;

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_d6
    invoke-interface {v6, v8}, Lscz;->M(I)Lsdo;

    move-result-object v6

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

    :goto_d7
    iget-object v6, p0, Lnds;->q:Loyd;

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    if-eqz v6, :cond_c

    nop

    nop

    goto/32 :goto_78

    nop

    :cond_c
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    iget-object p2, p0, Lnds;->z:Lrss;

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop
.end method
