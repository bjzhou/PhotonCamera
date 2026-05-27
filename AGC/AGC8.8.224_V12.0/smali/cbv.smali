.class public final Lcbv;
.super Lkfg;


# instance fields
.field public final a:Lklv;

.field public b:F

.field public c:Lgyp;

.field private final d:Lkaq;

.field private final e:Ljwb;

.field private final f:Lcbw;

.field private final g:Lend;


# direct methods
.method public constructor <init>(Lkaq;Ljuf;Lfuz;Leah;Ljwb;Ljwb;Lfbz;Ljvs;)V
    .locals 2

    invoke-direct {p0}, Lkfg;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcbv;->b:F

    sget-object v0, Lgyp;->a:Lgyp;

    iput-object v0, p0, Lcbv;->c:Lgyp;

    const-string v0, "LowLightAfLock"

    invoke-interface {p1, v0}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lcbv;->d:Lkaq;

    invoke-virtual {p3}, Lklw;->k()Lklv;

    move-result-object v0

    iput-object v0, p0, Lcbv;->a:Lklv;

    sget-object v1, Lklv;->a:Lklv;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p5, p6

    :goto_0
    iput-object p5, p0, Lcbv;->e:Ljwb;

    new-instance p6, Lend;

    invoke-direct {p6, p8}, Lend;-><init>(Ljvs;)V

    iput-object p6, p0, Lcbv;->g:Lend;

    new-instance p6, Lcbw;

    invoke-virtual {v0}, Lklv;->name()Ljava/lang/String;

    move-result-object p8

    invoke-static {p8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p8

    const-string v0, "cuttlef-af-"

    invoke-virtual {v0, p8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    invoke-direct {p6, p3, p4, p1, p8}, Lcbw;-><init>(Lfuz;Leah;Lkaq;Ljava/lang/String;)V

    invoke-virtual {p2, p6}, Ljuf;->d(Lkad;)V

    iput-object p6, p0, Lcbv;->f:Lcbw;

    invoke-virtual {p6}, Lcbw;->b()V

    new-instance p1, Lccp;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p7, p3}, Lccp;-><init>(Lcbv;Lfbz;I)V

    sget-object p3, Lnnv;->a:Lnnv;

    invoke-interface {p5, p1, p3}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljuf;->d(Lkad;)V

    return-void
.end method


# virtual methods
.method public final bC(Lkou;)V
    .locals 3

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcbv;->b:F

    iget-object v0, p0, Lcbv;->f:Lcbw;

    invoke-virtual {v0, p1}, Lcbw;->a(Lkou;)V

    iget-object v0, p0, Lcbv;->g:Lend;

    iget-object v1, v0, Lend;->b:Ljava/lang/Object;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    iput p1, v0, Lend;->a:I

    goto :goto_0

    :cond_0
    iget v1, v0, Lend;->a:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lend;->a:I

    if-lt v1, v2, :cond_1

    iget-object v0, p0, Lcbv;->f:Lcbw;

    invoke-virtual {v0}, Lcbw;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcbv;->e:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lgyp;->a:Lgyp;

    iget v1, v1, Lgyp;->f:I

    if-ne v0, v1, :cond_2

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lgry;->a(I)Lgry;

    move-result-object p1

    sget-object v0, Lgry;->g:Lgry;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcbv;->d:Lkaq;

    const-string v0, "Locking AF"

    invoke-interface {p1, v0}, Lkaq;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcbv;->e:Ljwb;

    sget-object v0, Lgyp;->b:Lgyp;

    iget v0, v0, Lgyp;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcbv;->e:Ljwb;

    invoke-interface {p1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lgyp;->b:Lgyp;

    iget v0, v0, Lgyp;->f:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcbv;->d:Lkaq;

    const-string v0, "Unlocking AF"

    invoke-interface {p1, v0}, Lkaq;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcbv;->e:Ljwb;

    sget-object v0, Lgyp;->a:Lgyp;

    iget v0, v0, Lgyp;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
