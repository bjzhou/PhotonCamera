.class public final Lipj;
.super Ljava/lang/Object;


# static fields
.field static final a:F

.field public static b:Z


# instance fields
.field public final c:Landroid/view/GestureDetector;

.field public final d:Landroid/view/ScaleGestureDetector;

.field public final e:Lipc;

.field public final f:Lipf;

.field public final g:Lmtc;

.field public final h:Ljvs;

.field public final i:Landroid/view/View;

.field public final j:Ldhi;

.field public k:Z

.field public l:Z

.field public m:F

.field public n:F

.field public o:I

.field public final p:Lenz;

.field public q:I

.field public final r:Lijm;

.field public final s:Lijn;

.field public final t:Ljes;

.field public final u:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field private final v:Landroid/view/GestureDetector$OnGestureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x42a00000    # 80.0f

    invoke-static {v0}, Likp;->b(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lipj;->a:F

    const/4 v0, 0x0

    sput-boolean v0, Lipj;->b:Z

    return-void
.end method

.method public constructor <init>(Ljes;Lijm;Lijn;Lipc;Lipf;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Ljes;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Ljvs;Landroid/view/View;Landroid/content/Context;Ldhi;[B[B[B)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Liph;

    invoke-direct {v3, p0}, Liph;-><init>(Lipj;)V

    iput-object v3, v0, Lipj;->v:Landroid/view/GestureDetector$OnGestureListener;

    new-instance v4, Lipi;

    invoke-direct {v4, p0}, Lipi;-><init>(Lipj;)V

    iput-object v4, v0, Lipj;->p:Lenz;

    new-instance v4, Landroid/view/GestureDetector;

    iget-object v5, v1, Ljes;->a:Ljava/lang/Object;

    iget-object v6, v1, Ljes;->b:Ljava/lang/Object;

    check-cast v6, Landroid/os/Handler;

    check-cast v5, Landroid/content/Context;

    invoke-direct {v4, v5, v3, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v4, v0, Lipj;->c:Landroid/view/GestureDetector;

    new-instance v3, Lipg;

    move-object v4, p6

    invoke-direct {v3, p0, p6, p4}, Lipg;-><init>(Lipj;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Lipc;)V

    new-instance v4, Landroid/view/ScaleGestureDetector;

    iget-object v5, v1, Ljes;->a:Ljava/lang/Object;

    iget-object v1, v1, Ljes;->b:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    check-cast v5, Landroid/content/Context;

    invoke-direct {v4, v5, v3, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    iput-object v4, v0, Lipj;->d:Landroid/view/ScaleGestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    move-object v1, p2

    iput-object v1, v0, Lipj;->r:Lijm;

    move-object v1, p3

    iput-object v1, v0, Lipj;->s:Lijn;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lipj;->e:Lipc;

    move-object v1, p5

    iput-object v1, v0, Lipj;->f:Lipf;

    move-object v1, p7

    iput-object v1, v0, Lipj;->t:Ljes;

    move-object/from16 v1, p8

    iput-object v1, v0, Lipj;->u:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    const/4 v1, 0x1

    iput v1, v0, Lipj;->q:I

    sget-object v1, Lioz;->a:Lioz;

    invoke-virtual/range {p11 .. p11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f14043c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lioz;->b:Lioz;

    invoke-virtual/range {p11 .. p11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f14043b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lioz;->c:Lioz;

    invoke-virtual/range {p11 .. p11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f14043a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object p1, v1

    move-object p2, v2

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object p6, v6

    invoke-static/range {p1 .. p6}, Lmvk;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmvk;

    move-result-object v1

    iput-object v1, v0, Lipj;->g:Lmtc;

    move-object/from16 v1, p12

    iput-object v1, v0, Lipj;->j:Ldhi;

    move-object/from16 v1, p9

    iput-object v1, v0, Lipj;->h:Ljvs;

    move-object/from16 v1, p10

    iput-object v1, v0, Lipj;->i:Landroid/view/View;

    return-void
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lipj;->b:Z

    return-void
.end method

.method public static d()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lipj;->b:Z

    return-void
.end method

.method public static e(F)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sget v0, Lipj;->a:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Ligo;

    iget-object v1, p0, Lipj;->i:Landroid/view/View;

    invoke-direct {v0, p1, v1}, Ligo;-><init>(Landroid/view/MotionEvent;Landroid/view/View;)V

    invoke-virtual {v0}, Ligo;->d()Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lipb;
    .locals 2

    iget v0, p0, Lipj;->q:I

    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    packed-switch v1, :pswitch_data_0

    sget-object v0, Lipb;->A:Lipb;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lipj;->s:Lijn;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lipj;->r:Lijm;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
