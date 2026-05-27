.class public final Ldfa;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lbtx;Lbtx;Lbtx;Llij;Llij;[B[B[B[B)V
    .locals 9

    move-object v7, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Lbrz;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lbrz;-><init>(Ldfa;I[B[B[B[B)V

    const/16 v0, 0x96

    invoke-static {v0, v8}, Lcbd;->b(ILcaz;)Laed;

    move-result-object v0

    iput-object v0, v7, Ldfa;->e:Ljava/lang/Object;

    move-object v0, p1

    iput-object v0, v7, Ldfa;->c:Ljava/lang/Object;

    move-object v0, p2

    iput-object v0, v7, Ldfa;->f:Ljava/lang/Object;

    move-object v0, p3

    iput-object v0, v7, Ldfa;->d:Ljava/lang/Object;

    move-object v0, p4

    iput-object v0, v7, Ldfa;->b:Ljava/lang/Object;

    move-object v0, p5

    iput-object v0, v7, Ldfa;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/bottombar/BottomBarController;Liff;Litm;Lgeh;Ljwb;Ldol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfa;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldfa;->d:Ljava/lang/Object;

    iput-object p3, p0, Ldfa;->c:Ljava/lang/Object;

    iput-object p4, p0, Ldfa;->e:Ljava/lang/Object;

    iput-object p5, p0, Ldfa;->a:Ljava/lang/Object;

    iput-object p6, p0, Ldfa;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldfv;Ldgh;Ldgb;Ldne;Ldfo;Ldfb;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfa;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldfa;->b:Ljava/lang/Object;

    iput-object p3, p0, Ldfa;->c:Ljava/lang/Object;

    iput-object p4, p0, Ldfa;->d:Ljava/lang/Object;

    iput-object p5, p0, Ldfa;->e:Ljava/lang/Object;

    iput-object p6, p0, Ldfa;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldhi;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfa;->f:Ljava/lang/Object;

    iput-object p2, p0, Ldfa;->a:Ljava/lang/Object;

    iput-object p3, p0, Ldfa;->b:Ljava/lang/Object;

    iput-object p4, p0, Ldfa;->e:Ljava/lang/Object;

    iput-object p5, p0, Ldfa;->d:Ljava/lang/Object;

    iput-object p6, p0, Ldfa;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfbz;Ldja;Lcqv;Lhnb;Lcsa;Lhkl;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfa;->c:Ljava/lang/Object;

    iput-object p2, p0, Ldfa;->f:Ljava/lang/Object;

    iput-object p3, p0, Ldfa;->e:Ljava/lang/Object;

    iput-object p4, p0, Ldfa;->d:Ljava/lang/Object;

    iput-object p5, p0, Ldfa;->a:Ljava/lang/Object;

    iput-object p6, p0, Ldfa;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgdk;Lgfp;Lfuz;Ljvs;Lkoe;Ldhi;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfa;->d:Ljava/lang/Object;

    iput-object p2, p0, Ldfa;->b:Ljava/lang/Object;

    iput-object p3, p0, Ldfa;->a:Ljava/lang/Object;

    iput-object p5, p0, Ldfa;->f:Ljava/lang/Object;

    iput-object p6, p0, Ldfa;->e:Ljava/lang/Object;

    iput-object p4, p0, Ldfa;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhnb;Lhna;Ljuh;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ldfa;->c:Ljava/lang/Object;

    new-instance v0, Ljvk;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldfa;->d:Ljava/lang/Object;

    invoke-static {v0}, Ljvo;->c(Ljvs;)Ljvs;

    move-result-object v0

    iput-object v0, p0, Ldfa;->e:Ljava/lang/Object;

    iput-object p1, p0, Ldfa;->f:Ljava/lang/Object;

    iput-object p2, p0, Ldfa;->b:Ljava/lang/Object;

    iput-object p3, p0, Ldfa;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljuh;Ldde;Ldca;Lcvr;Lkaq;Ldbt;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfa;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldfa;->c:Ljava/lang/Object;

    iput-object p3, p0, Ldfa;->f:Ljava/lang/Object;

    iput-object p4, p0, Ldfa;->e:Ljava/lang/Object;

    iput-object p6, p0, Ldfa;->a:Ljava/lang/Object;

    const-string p1, "FallbackHandler"

    invoke-interface {p5, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Ldfa;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkoe;Lcsa;Lcvr;Ldhi;Lgto;Ldms;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p7, Lcwx;->a:Lcwx;

    iput-object p1, p0, Ldfa;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldfa;->b:Ljava/lang/Object;

    iput-object p3, p0, Ldfa;->f:Ljava/lang/Object;

    iput-object p4, p0, Ldfa;->e:Ljava/lang/Object;

    iput-object p5, p0, Ldfa;->c:Ljava/lang/Object;

    iput-object p6, p0, Ldfa;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lkbc;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ldfa;->d:Ljava/lang/Object;

    new-instance v0, Lkbi;

    const-string v1, "ActivityStartup"

    invoke-direct {v0, p4, p6, v1}, Lkbi;-><init>(Ljava/util/concurrent/Executor;Lkbc;Ljava/lang/String;)V

    iput-object v0, p0, Ldfa;->f:Ljava/lang/Object;

    new-instance p4, Lkbi;

    invoke-direct {p4, p5, p6, v1}, Lkbi;-><init>(Ljava/util/concurrent/Executor;Lkbc;Ljava/lang/String;)V

    iput-object p4, p0, Ldfa;->e:Ljava/lang/Object;

    iput-object p1, p0, Ldfa;->c:Ljava/lang/Object;

    iput-object p2, p0, Ldfa;->b:Ljava/lang/Object;

    iput-object p3, p0, Ldfa;->a:Ljava/lang/Object;

    return-void
.end method

.method public static d(Lika;Z)I
    .locals 1

    sget-object v0, Lcwx;->a:Lcwx;

    sget-object v0, Ljyk;->a:Ljyk;

    sget-object v0, Lika;->a:Lika;

    invoke-virtual {p0}, Lika;->ordinal()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Not a valid video mode: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_0
    if-eqz p1, :cond_0

    const/16 p0, 0x26

    return p0

    :cond_0
    const/16 p0, 0x25

    return p0

    :sswitch_1
    if-eqz p1, :cond_1

    const/16 p0, 0x22

    return p0

    :cond_1
    const/16 p0, 0xb

    return p0

    :sswitch_2
    const/16 p0, 0x15

    return p0

    :sswitch_3
    if-eqz p1, :cond_2

    const/16 p0, 0x21

    return p0

    :cond_2
    const/16 p0, 0x18

    return p0

    :sswitch_4
    if-eqz p1, :cond_3

    const/16 p0, 0xa

    return p0

    :cond_3
    const/16 p0, 0x9

    return p0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x5 -> :sswitch_3
        0x8 -> :sswitch_2
        0xd -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final i(Lken;Lcrz;Lcsc;)V
    .locals 1

    iget-object p1, p1, Lcrz;->g:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    sget-object v0, Lcrx;->e:Lcrx;

    if-ne p1, v0, :cond_1

    iget-boolean p1, p2, Lcsc;->o:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    :goto_0
    invoke-interface {p0}, Lken;->b()Lkdz;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v0, p2

    check-cast v0, Lkfr;

    iput-object p1, v0, Lkfr;->d:Ljava/lang/Integer;

    invoke-interface {p2}, Lkdz;->a()Lkea;

    move-result-object p1

    invoke-interface {p0, p1}, Lken;->o(Lkea;)V

    return-void
.end method

.method private final o(Lfuc;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 2

    iget-object v0, p0, Ldfa;->a:Ljava/lang/Object;

    iget-object v1, p0, Ldfa;->e:Ljava/lang/Object;

    invoke-static {v0, v1}, Lgdk;->g(Lkli;Ldhi;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldfa;->f:Ljava/lang/Object;

    check-cast v0, Lkoe;

    iget-boolean v0, v0, Lkoe;->d:Z

    iget-object v0, p0, Ldfa;->d:Ljava/lang/Object;

    check-cast v0, Lgdk;

    invoke-virtual {v0}, Lgdk;->c()Lgdj;

    move-result-object v0

    iget-object v0, v0, Lgdj;->a:Landroid/graphics/Rect;

    invoke-interface {p1, v0}, Lfuc;->b(Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Ldfa;->d:Ljava/lang/Object;

    check-cast v0, Ljwh;

    invoke-virtual {v0}, Ljwh;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgdj;

    iget-object v0, v0, Lgdj;->a:Landroid/graphics/Rect;

    invoke-interface {p1, v0}, Lfuc;->b(Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    return-object p1
.end method

.method private final p(Landroid/graphics/PointF;I)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 9

    iget-object v0, p0, Ldfa;->e:Ljava/lang/Object;

    sget-object v1, Ldho;->bU:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldfa;->c:Ljava/lang/Object;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldfa;->a:Ljava/lang/Object;

    check-cast v0, Lklw;

    invoke-virtual {v0}, Lklw;->f()I

    move-result v0

    :goto_0
    rem-int/lit8 v1, v0, 0x5a

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v4, "sensorOrientation must be a multiple of 90"

    invoke-static {v1, v4}, Lmoz;->f(ZLjava/lang/Object;)V

    if-ltz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const-string v1, "sensorOrientation must not be negative"

    invoke-static {v2, v1}, Lmoz;->f(ZLjava/lang/Object;)V

    rem-int/lit16 v0, v0, 0x168

    new-instance v8, Lccd;

    new-instance v4, Loxq;

    invoke-direct {v4, v0}, Loxq;-><init>(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lccd;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Loxq;I[B[B)V

    invoke-direct {p0, v8}, Ldfa;->o(Lfuc;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Lklv;II)V
    .locals 10

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Ldfa;->c:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ldde;->b(Lklv;)Lnou;

    move-result-object v0

    iget-object v1, p0, Ldfa;->e:Ljava/lang/Object;

    check-cast v1, Lcvr;

    invoke-virtual {v1}, Lcvr;->f()I

    move-result v1

    iget-object v2, p0, Ldfa;->e:Ljava/lang/Object;

    check-cast v2, Lcvr;

    invoke-virtual {v2}, Lcvr;->e()I

    move-result v2

    move v6, v1

    move v7, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldfa;->c:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ldde;->a(Lklv;)Lnou;

    move-result-object v0

    iget-object v1, p0, Ldfa;->e:Ljava/lang/Object;

    check-cast v1, Lcvr;

    invoke-virtual {v1}, Lcvr;->d()I

    move-result v1

    iget-object v2, p0, Ldfa;->e:Ljava/lang/Object;

    check-cast v2, Lcvr;

    invoke-virtual {v2}, Lcvr;->c()I

    move-result v2

    move v6, v1

    move v7, v2

    :goto_0
    new-instance v9, Ldbr;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v8}, Ldbr;-><init>(Ldfa;Lklv;IIII[B)V

    iget-object p1, p0, Ldfa;->b:Ljava/lang/Object;

    invoke-static {v0, v9, p1}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final b(Ljava/lang/Throwable;Lklv;)V
    .locals 12

    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    iget-object v0, p0, Ldfa;->a:Ljava/lang/Object;

    check-cast v0, Lcsa;

    invoke-virtual {v0}, Lcsa;->a()Lcrz;

    move-result-object v0

    sget-object v2, Lnll;->g:Lnll;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_3
    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Lnll;

    add-int/lit8 p1, p1, -0x1

    iput p1, v3, Lnll;->e:I

    iget p1, v3, Lnll;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v3, Lnll;->a:I

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Lnll;

    iget-object v2, p0, Ldfa;->c:Ljava/lang/Object;

    iget-object p1, p0, Ldfa;->e:Ljava/lang/Object;

    invoke-interface {p1}, Lcqv;->a()Lika;

    move-result-object p1

    invoke-static {p1, v1}, Ldfa;->d(Lika;Z)I

    move-result v3

    const/4 v5, 0x0

    iget-object p1, v0, Lcrz;->b:Ljvs;

    invoke-interface {p1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object p1, v0, Lcrz;->f:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/high16 v8, -0x40800000    # -1.0f

    iget-object p1, p0, Ldfa;->d:Ljava/lang/Object;

    invoke-interface {p1}, Lhnb;->e()Lhna;

    move-result-object p1

    iget v10, p1, Lhna;->j:I

    const/4 v11, 0x0

    move-object v4, p2

    invoke-interface/range {v2 .. v11}, Lfbz;->aw(ILklv;Lkdj;FZFLnll;IZ)V

    return-void
.end method

.method public final c(Lcsw;Lklv;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Ldfa;->a:Ljava/lang/Object;

    check-cast v2, Lcsa;

    invoke-virtual {v2}, Lcsa;->a()Lcrz;

    move-result-object v2

    sget-object v3, Lnll;->g:Lnll;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    iget-object v4, v1, Lcsw;->e:Lkaf;

    iget v4, v4, Lkaf;->b:I

    iget-object v5, v3, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_0
    iget-object v5, v3, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnll;

    iget v7, v6, Lnll;->a:I

    const/4 v8, 0x1

    or-int/2addr v7, v8

    iput v7, v6, Lnll;->a:I

    iput v4, v6, Lnll;->b:I

    iget-object v4, v1, Lcsw;->e:Lkaf;

    iget v4, v4, Lkaf;->a:I

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_1
    iget-object v5, v3, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnll;

    iget v7, v6, Lnll;->a:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v6, Lnll;->a:I

    iput v4, v6, Lnll;->c:I

    iget v4, v1, Lcsw;->g:I

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_2
    iget-object v5, v3, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnll;

    iget v7, v6, Lnll;->a:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v6, Lnll;->a:I

    iput v4, v6, Lnll;->d:I

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_3
    iget-object v4, v3, Lnwn;->b:Lnws;

    move-object v5, v4

    check-cast v5, Lnll;

    iput v8, v5, Lnll;->e:I

    iget v6, v5, Lnll;->a:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v5, Lnll;->a:I

    iget-wide v5, v1, Lcsw;->f:J

    long-to-int v6, v5

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_4
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Lnll;

    iget v5, v4, Lnll;->a:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Lnll;->a:I

    iput v6, v4, Lnll;->f:I

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lnll;

    iget-object v9, v0, Ldfa;->c:Ljava/lang/Object;

    iget-object v3, v0, Ldfa;->e:Ljava/lang/Object;

    invoke-interface {v3}, Lcqv;->a()Lika;

    move-result-object v3

    invoke-static {v3, v8}, Ldfa;->d(Lika;Z)I

    move-result v10

    iget-object v3, v1, Lcsw;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    iget-object v12, v1, Lcsw;->a:Lkdj;

    iget-object v3, v2, Lcrz;->b:Ljvs;

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v13

    iget-object v2, v2, Lcrz;->f:Ljwb;

    check-cast v2, Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    iget-wide v2, v1, Lcsw;->f:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-object v4, v0, Ldfa;->d:Ljava/lang/Object;

    invoke-interface {v4}, Lhnb;->e()Lhna;

    move-result-object v4

    iget v4, v4, Lhna;->j:I

    iget-object v1, v1, Lcsw;->d:Lgxr;

    iget-object v1, v1, Lgxr;->b:Lgyb;

    sget-object v5, Lgyb;->b:Lgyb;

    if-ne v1, v5, :cond_5

    const/16 v18, 0x1

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    const/16 v18, 0x0

    :goto_0
    long-to-float v15, v2

    move-object/from16 v11, p2

    move/from16 v17, v4

    invoke-interface/range {v9 .. v18}, Lfbz;->aw(ILklv;Lkdj;FZFLnll;IZ)V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Ldfa;->a:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Ldfa;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->resumeRecording()V

    iget-object v0, p0, Ldfa;->d:Ljava/lang/Object;

    invoke-interface {v0}, Liff;->v()V

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Ldfa;->e:Ljava/lang/Object;

    invoke-interface {v0}, Lgeh;->m()V

    iget-object v0, p0, Ldfa;->a:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Ldfa;->c:Ljava/lang/Object;

    check-cast v0, Lisi;

    iget-object v1, v0, Lisi;->H:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    iget-object v0, v0, Lisi;->G:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Ldfa;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lisi;

    iput-boolean v2, v1, Lisi;->V:Z

    invoke-interface {v0, v2}, Litm;->r(Z)V

    iget-object v0, p0, Ldfa;->f:Ljava/lang/Object;

    invoke-interface {v0}, Ldol;->f()V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Ldfa;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Ldfa;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->pauseRecording()V

    iget-object v0, p0, Ldfa;->d:Ljava/lang/Object;

    invoke-interface {v0}, Liff;->r()V

    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Ldfa;->e:Ljava/lang/Object;

    invoke-interface {v0}, Lgeh;->l()V

    iget-object v0, p0, Ldfa;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Ldfa;->c:Ljava/lang/Object;

    check-cast v0, Lisi;

    iget-object v1, v0, Lisi;->H:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    iget-object v0, v0, Lisi;->G:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Ldfa;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lisi;

    iput-boolean v2, v1, Lisi;->V:Z

    invoke-interface {v0, v2}, Litm;->r(Z)V

    iget-object v0, p0, Ldfa;->f:Ljava/lang/Object;

    invoke-interface {v0}, Ldol;->i()V

    return-void
.end method

.method public final j(I)V
    .locals 3

    iget-object v0, p0, Ldfa;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Ldfa;->b:Ljava/lang/Object;

    iget-object v0, p0, Ldfa;->f:Ljava/lang/Object;

    invoke-static {p1, v0}, Linb;->B(Loiw;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Ldfa;->a:Ljava/lang/Object;

    iget-object v0, p0, Ldfa;->e:Ljava/lang/Object;

    invoke-static {p1, v0}, Linb;->B(Loiw;Ljava/util/concurrent/Executor;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Ldfa;->c:Ljava/lang/Object;

    iget-object v0, p0, Ldfa;->f:Ljava/lang/Object;

    invoke-static {p1, v0}, Linb;->B(Loiw;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Ldfa;->b:Ljava/lang/Object;

    iget-object v0, p0, Ldfa;->f:Ljava/lang/Object;

    invoke-static {p1, v0}, Linb;->B(Loiw;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Ldfa;->a:Ljava/lang/Object;

    iget-object v0, p0, Ldfa;->f:Ljava/lang/Object;

    invoke-static {p1, v0}, Linb;->B(Loiw;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final k()[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 1

    sget-object v0, Lfua;->a:[Landroid/hardware/camera2/params/MeteringRectangle;

    sget-object v0, Lftz;->a:Lfua;

    iget-object v0, p0, Ldfa;->d:Ljava/lang/Object;

    check-cast v0, Ljwh;

    invoke-virtual {v0}, Ljwh;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgdj;

    iget-object v0, v0, Lgdj;->a:Landroid/graphics/Rect;

    sget-object v0, Lfua;->a:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object v0
.end method

.method public final l(Landroid/graphics/PointF;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 2

    iget-object v0, p0, Ldfa;->e:Ljava/lang/Object;

    sget-object v1, Ldho;->bU:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldfa;->c:Ljava/lang/Object;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldfa;->a:Ljava/lang/Object;

    check-cast v0, Lklw;

    invoke-virtual {v0}, Lklw;->f()I

    move-result v0

    :goto_0
    invoke-static {p1, p1, v0}, Lccd;->c(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Lccd;

    move-result-object p1

    invoke-direct {p0, p1}, Ldfa;->o(Lfuc;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    return-object p1
.end method

.method public final m(Landroid/graphics/PointF;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Ldfa;->p(Landroid/graphics/PointF;I)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    return-object p1
.end method

.method public final n(Landroid/graphics/PointF;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ldfa;->p(Landroid/graphics/PointF;I)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    return-object p1
.end method
