.class public final Lbkb;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    sget-object v0, Lnhb;->Y:Lnhb;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnhb;

    add-int/lit8 v3, p1, -0x1

    if-eqz p1, :cond_3

    iput v3, v2, Lnhb;->c:I

    iget p1, v2, Lnhb;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v2, Lnhb;->a:I

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lnhb;

    iget v1, p1, Lnhb;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p1, Lnhb;->a:I

    iput-boolean p2, p1, Lnhb;->d:Z

    iput-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    return-void

    :cond_3
    const/4 p1, 0x0

    throw p1
.end method

.method public constructor <init>(Lacl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbto;

    invoke-direct {v0, p1}, Lbto;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/util/DisplayMetrics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbby;

    invoke-direct {v0, p1}, Lbby;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lajf;

    invoke-direct {v0, p1}, Lajf;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/wear/ambient/AmbientMode$AmbientController;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;[B)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Laui;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lbbc;[B[B)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lbbx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lce;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldne;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lezy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfmd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfuz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfuz;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lklw;->s()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    new-instance p2, Lkaf;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0}, Lkaf;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lmoz;->p(Z)V

    return-void
.end method

.method public constructor <init>(Lfyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgdd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgfz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgqh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lika;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Liuv;->j:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_1

    sget-object v0, Lika;->h:Lika;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    sget-object v0, Liuv;->j:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object p1

    invoke-static {p1}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object p1

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void

    :cond_1
    sget p1, Lmvv;->d:I

    sget-object p1, Lmyu;->a:Lmvv;

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;Lika;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lika;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgxb;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lgxb;->a:Ljava/lang/Object;

    check-cast v1, Lgxb;

    iget-object v1, v1, Lgxb;->a:Ljava/lang/Object;

    sget-object v2, Lika;->a:Lika;

    if-eq v2, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "ModuleManager: The ApplicationMode can not be UNINITIALIZED"

    invoke-static {v2, v3}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v2, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/EnumMap;

    invoke-virtual {v2, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/EnumMap;

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v2, v1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModuleManager: Mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is registered already"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/EnumMap;

    invoke-virtual {p1, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgxb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljvs;Lika;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Ljvu;

    iget-object p1, p1, Ljvu;->a:Ljava/lang/Object;

    check-cast p1, Lklu;

    new-instance v0, Lmvq;

    invoke-direct {v0}, Lmvq;-><init>()V

    invoke-static {p2}, Lgky;->b(Lika;)Lmwn;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p2, Lklu;->b:Lklu;

    const/4 v1, 0x1

    if-eq p1, p2, :cond_1

    sget-object p2, Lklu;->c:Lklu;

    if-eq p1, p2, :cond_1

    sget-object p2, Lklu;->a:Lklu;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :goto_0
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmvq;->g(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p2}, Lmvq;->h(Ljava/lang/Iterable;)V

    :goto_1
    invoke-virtual {v0}, Lmvq;->f()Lmvv;

    move-result-object p1

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TuningDataLogger"

    invoke-interface {p1, v0}, Lkap;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lknq;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lknh;

    const-string v1, "framestream_id"

    invoke-static {v1}, Lknh;->b(Ljava/lang/String;)Lknh;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "/gca/onecamera/frame_availability"

    invoke-virtual {p1, v1, v0}, Lknq;->c(Ljava/lang/String;[Lknh;)Lkte;

    move-result-object p1

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lknq;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmqp;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lngr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loxq;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lqz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    const/high16 p2, 0x3f400000    # 0.75f

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-direct {p1, p4, p2, p3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B[B[S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>([B[C[B)V
    .locals 0

    sget-object p1, Lojz;->a:Lojz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B[S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lima;

    const/16 p2, 0xf

    invoke-direct {p1, p2}, Lima;-><init>(I)V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([C[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([C[S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljvk;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, p2}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {p1}, Ljava/util/NavigableMap;->size()I

    move-result v0

    const/16 v1, 0x2328

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    new-instance v0, Ljzz;

    invoke-direct {v0, p1}, Ljzz;-><init>(Ljava/util/NavigableMap;)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lmjy;->q(Ljava/util/NavigableMap;Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object p1

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Lksd;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkb;->a:Ljava/lang/Object;

    return-void
.end method

.method public static A(III)Lbkb;
    .locals 2

    new-instance v0, Lbkb;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lbkb;-><init>(Ljava/lang/Object;[C)V

    return-object v0
.end method

.method public static final E(Ljava/util/Collection;)Lnou;
    .locals 2

    invoke-static {p0}, Lnsy;->x(Ljava/lang/Iterable;)Lnou;

    move-result-object p0

    new-instance v0, Lcej;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcej;-><init>(I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-static {p0, v0, v1}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p0

    return-object p0
.end method

.method public static final U(Ljava/lang/String;II)Z
    .locals 3

    const-string v0, "^([0-9]+)\\.([0-9]+).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-gt v1, p1, :cond_0

    if-ne v1, p1, :cond_1

    if-lt p0, p2, :cond_1

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/String;Lbka;Z)Ljava/lang/String;
    .locals 2

    const-string v0, "\\W+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_0

    iget-object p1, p1, Lbka;->c:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ".temp"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lbka;->c:Ljava/lang/String;

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "lottie_cache_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static z(IIIIZ)Lbkb;
    .locals 7

    new-instance v0, Lbkb;

    const/4 v5, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lbkb;-><init>(Ljava/lang/Object;[B)V

    return-object v0
.end method


# virtual methods
.method public final B(Landroidx/wear/ambient/AmbientMode$AmbientController;)V
    .locals 9

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v8, Lafx;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lafx;-><init>(Landroidx/wear/ambient/AmbientMode$AmbientController;I[B[B[B[B)V

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-static {p1, v8}, Lafz;->a(Landroid/view/ViewPropertyAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    return-void
.end method

.method public final C(Lkpb;)F
    .locals 6

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    invoke-interface {p1}, Lkpb;->d()J

    move-result-wide v1

    check-cast v0, Lmqp;

    invoke-static {v0, v1, v2}, Lflb;->g(Lmqp;J)Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfjo;

    iget v0, p1, Lfjo;->b:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget p1, p1, Lfjo;->c:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v2, p1

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double p1, v0, v4

    if-gtz p1, :cond_2

    cmpl-double p1, v2, v4

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    div-double/2addr v2, v0

    add-double/2addr v2, v2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    add-double/2addr v2, v0

    double-to-float p1, v2

    return p1

    :cond_2
    :goto_0
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public final D(Lgam;)Lgam;
    .locals 2

    new-instance v0, Lgje;

    iget-object v1, p0, Lbkb;->a:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lgje;-><init>(Lgam;Ldhi;)V

    return-object v0
.end method

.method public final F(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lbkb;->G(Landroid/hardware/camera2/CaptureResult$Key;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final varargs G(Landroid/hardware/camera2/CaptureResult$Key;[Ljava/lang/Object;)Z
    .locals 4
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p2, p0, Lbkb;->a:Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkou;

    invoke-interface {v3, p1}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method public final declared-synchronized H()Lmqp;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Llyh;->T(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkb;

    invoke-static {v0}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final I(Lkdj;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    sget-object v1, Lnhv;->p:Lnhv;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->g:I

    invoke-interface {p1, v2}, Lkdj;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lnhv;

    iget v4, v3, Lnhv;->a:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Lnhv;->a:I

    iput-object v2, v3, Lnhv;->c:Ljava/lang/String;

    :cond_2
    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->h:I

    invoke-interface {p1, v2}, Lkdj;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lnhv;

    iget v4, v3, Lnhv;->a:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Lnhv;->a:I

    iput-object v2, v3, Lnhv;->c:Ljava/lang/String;

    :cond_4
    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->TAG_SOFTWARE:I

    invoke-interface {p1, v2}, Lkdj;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    iget-object v4, v1, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_5
    iget-object v4, v1, Lnwn;->b:Lnws;

    check-cast v4, Lnhv;

    iget v5, v4, Lnhv;->a:I

    or-int/2addr v5, v3

    iput v5, v4, Lnhv;->a:I

    iput-object v2, v4, Lnhv;->b:Ljava/lang/String;

    :cond_6
    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->F:I

    invoke-interface {p1, v2}, Lkdj;->a(I)Lkac;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-wide v4, v2, Lkac;->a:J

    long-to-float v4, v4

    iget-wide v5, v2, Lkac;->b:J

    long-to-float v2, v5

    iget-object v5, v1, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_7
    div-float/2addr v4, v2

    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnhv;

    iget v5, v2, Lnhv;->a:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v2, Lnhv;->a:I

    iput v4, v2, Lnhv;->d:F

    :cond_8
    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->J:I

    invoke-interface {p1, v2}, Lkdj;->b(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, v1, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_9
    iget-object v4, v1, Lnwn;->b:Lnws;

    check-cast v4, Lnhv;

    iget v5, v4, Lnhv;->a:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Lnhv;->a:I

    iput v2, v4, Lnhv;->e:I

    :cond_a
    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->Z:I

    invoke-interface {p1, v2}, Lkdj;->a(I)Lkac;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-wide v4, v2, Lkac;->a:J

    long-to-float v4, v4

    iget-wide v5, v2, Lkac;->b:J

    long-to-float v2, v5

    iget-object v5, v1, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_b
    div-float/2addr v4, v2

    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnhv;

    iget v5, v2, Lnhv;->a:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v2, Lnhv;->a:I

    iput v4, v2, Lnhv;->f:F

    :cond_c
    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->R:I

    invoke-interface {p1, v2}, Lkdj;->a(I)Lkac;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-wide v4, v2, Lkac;->a:J

    long-to-float v4, v4

    iget-wide v5, v2, Lkac;->b:J

    long-to-float v2, v5

    iget-object v5, v1, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_d
    div-float/2addr v4, v2

    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnhv;

    iget v5, v2, Lnhv;->a:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v2, Lnhv;->a:I

    iput v4, v2, Lnhv;->g:F

    :cond_e
    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->aT:I

    invoke-interface {p1, v2}, Lkdj;->a(I)Lkac;

    move-result-object v2

    sget v4, Lcom/google/android/libraries/camera/exif/ExifInterface;->aV:I

    invoke-interface {p1, v4}, Lkdj;->a(I)Lkac;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v2, :cond_f

    if-eqz v4, :cond_f

    const/4 v2, 0x1

    goto :goto_0

    :cond_f
    const/4 v2, 0x0

    :goto_0
    iget-object v4, v1, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_10
    iget-object v4, v1, Lnwn;->b:Lnws;

    check-cast v4, Lnhv;

    iget v6, v4, Lnhv;->a:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v4, Lnhv;->a:I

    iput-boolean v2, v4, Lnhv;->h:Z

    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->j:I

    invoke-interface {p1, v2}, Lkdj;->b(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, v1, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_11
    iget-object v4, v1, Lnwn;->b:Lnws;

    check-cast v4, Lnhv;

    iget v6, v4, Lnhv;->a:I

    or-int/lit16 v6, v6, 0x200

    iput v6, v4, Lnhv;->a:I

    iput v2, v4, Lnhv;->i:I

    :cond_12
    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->aj:I

    invoke-interface {p1, v2}, Lkdj;->b(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, v1, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_13
    iget-object v4, v1, Lnwn;->b:Lnws;

    check-cast v4, Lnhv;

    iget v6, v4, Lnhv;->a:I

    or-int/lit16 v6, v6, 0x400

    iput v6, v4, Lnhv;->a:I

    iput v2, v4, Lnhv;->j:I

    :cond_14
    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->ai:I

    invoke-interface {p1, v2}, Lkdj;->b(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, v1, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_15
    iget-object v4, v1, Lnwn;->b:Lnws;

    check-cast v4, Lnhv;

    iget v6, v4, Lnhv;->a:I

    or-int/lit16 v6, v6, 0x800

    iput v6, v4, Lnhv;->a:I

    iput v2, v4, Lnhv;->k:I

    :cond_16
    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->Y:I

    invoke-interface {p1, v2}, Lkdj;->b(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_19

    iget-object v4, v1, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_17
    iget-object v4, v1, Lnwn;->b:Lnws;

    check-cast v4, Lnhv;

    iget v5, v4, Lnhv;->a:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, v4, Lnhv;->a:I

    iput-boolean v3, v4, Lnhv;->l:Z

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_18
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lnhv;

    iget v4, v3, Lnhv;->a:I

    or-int/lit16 v4, v4, 0x2000

    iput v4, v3, Lnhv;->a:I

    iput v2, v3, Lnhv;->m:I

    goto :goto_1

    :cond_19
    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1a
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnhv;

    iget v3, v2, Lnhv;->a:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, v2, Lnhv;->a:I

    iput-boolean v5, v2, Lnhv;->l:Z

    :goto_1
    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->T:I

    invoke-interface {p1, v2}, Lkdj;->a(I)Lkac;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget-wide v3, v2, Lkac;->a:J

    long-to-float v3, v3

    iget-wide v4, v2, Lkac;->b:J

    long-to-float v2, v4

    iget-object v4, v1, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1b
    div-float/2addr v3, v2

    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnhv;

    iget v4, v2, Lnhv;->a:I

    or-int/lit16 v4, v4, 0x4000

    iput v4, v2, Lnhv;->a:I

    iput v3, v2, Lnhv;->n:F

    :cond_1c
    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->V:I

    invoke-interface {p1, v2}, Lkdj;->a(I)Lkac;

    move-result-object p1

    if-eqz p1, :cond_1e

    iget-wide v2, p1, Lkac;->a:J

    long-to-float v2, v2

    iget-wide v3, p1, Lkac;->b:J

    long-to-float p1, v3

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1d
    div-float/2addr v2, p1

    iget-object p1, v1, Lnwn;->b:Lnws;

    check-cast p1, Lnhv;

    iget v3, p1, Lnhv;->a:I

    const v4, 0x8000

    or-int/2addr v3, v4

    iput v3, p1, Lnhv;->a:I

    iput v2, p1, Lnhv;->o:F

    :cond_1e
    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lnhv;

    check-cast v0, Lnwn;

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1f
    iget-object v0, v0, Lnwn;->b:Lnws;

    check-cast v0, Lnhb;

    sget-object v1, Lnhb;->Y:Lnhb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Lnhb;->g:Lnhv;

    iget p1, v0, Lnhb;->a:I

    or-int/lit8 p1, p1, 0x20

    iput p1, v0, Lnhb;->a:I

    return-void
.end method

.method public final J(Z)V
    .locals 2

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Lnwn;

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v0, v0, Lnwn;->b:Lnws;

    check-cast v0, Lnhb;

    sget-object v1, Lnhb;->Y:Lnhb;

    iget v1, v0, Lnhb;->a:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Lnhb;->a:I

    iput-boolean p1, v0, Lnhb;->h:Z

    return-void
.end method

.method public final K(Z)V
    .locals 3

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Lnwn;

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v0, v0, Lnwn;->b:Lnws;

    check-cast v0, Lnhb;

    sget-object v1, Lnhb;->Y:Lnhb;

    iget v1, v0, Lnhb;->b:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Lnhb;->b:I

    iput-boolean p1, v0, Lnhb;->O:Z

    return-void
.end method

.method public final L(Lnjm;)V
    .locals 2

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Lnwn;

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v0, v0, Lnwn;->b:Lnws;

    check-cast v0, Lnhb;

    sget-object v1, Lnhb;->Y:Lnhb;

    iput-object p1, v0, Lnhb;->T:Lnjm;

    iget p1, v0, Lnhb;->b:I

    const/high16 v1, 0x800000

    or-int/2addr p1, v1

    iput p1, v0, Lnhb;->b:I

    return-void
.end method

.method public final M(F)V
    .locals 2

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Lnwn;

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v0, v0, Lnwn;->b:Lnws;

    check-cast v0, Lnhb;

    sget-object v1, Lnhb;->Y:Lnhb;

    iget v1, v0, Lnhb;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lnhb;->a:I

    iput p1, v0, Lnhb;->f:F

    return-void
.end method

.method public final N(Lnlk;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Lnwn;

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v0, v0, Lnwn;->b:Lnws;

    check-cast v0, Lnhb;

    sget-object v1, Lnhb;->Y:Lnhb;

    iput-object p1, v0, Lnhb;->n:Lnlk;

    iget p1, v0, Lnhb;->a:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, v0, Lnhb;->a:I

    return-void
.end method

.method public final O(F)V
    .locals 2

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Lnwn;

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v0, v0, Lnwn;->b:Lnws;

    check-cast v0, Lnhb;

    sget-object v1, Lnhb;->Y:Lnhb;

    iget v1, v0, Lnhb;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lnhb;->a:I

    iput p1, v0, Lnhb;->e:F

    return-void
.end method

.method public final P(I)V
    .locals 2

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Lnwn;

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v0, v0, Lnwn;->b:Lnws;

    check-cast v0, Lnhb;

    sget-object v1, Lnhb;->Y:Lnhb;

    add-int/lit8 v1, p1, -0x1

    if-eqz p1, :cond_1

    iput v1, v0, Lnhb;->z:I

    iget p1, v0, Lnhb;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v0, Lnhb;->b:I

    return-void

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method public final Q(I)V
    .locals 2

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Lnwn;

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v0, v0, Lnwn;->b:Lnws;

    check-cast v0, Lnhb;

    sget-object v1, Lnhb;->Y:Lnhb;

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lnhb;->j:I

    iget p1, v0, Lnhb;->a:I

    or-int/lit16 p1, p1, 0x100

    iput p1, v0, Lnhb;->a:I

    return-void
.end method

.method public final R(I)V
    .locals 2

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Lnwn;

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v0, v0, Lnwn;->b:Lnws;

    check-cast v0, Lnhb;

    sget-object v1, Lnhb;->Y:Lnhb;

    add-int/lit8 v1, p1, -0x1

    if-eqz p1, :cond_1

    iput v1, v0, Lnhb;->K:I

    iget p1, v0, Lnhb;->b:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, v0, Lnhb;->b:I

    return-void

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method public final S(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p1, ""

    return-object p1
.end method

.method public final T()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.vr.apps.ornament"

    invoke-virtual {p0, v0}, Lbkb;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final V(Lika;)Lgxb;
    .locals 1

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgxb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final W(Lfyi;)Lva;
    .locals 8

    new-instance v7, Lva;

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    new-instance v2, Lbkb;

    invoke-direct {v2, p1}, Lbkb;-><init>(Lfyi;)V

    move-object v1, v0

    check-cast v1, Lfuz;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lva;-><init>(Lfuz;Lbkb;Lfyi;[B[B[B)V

    return-object v7
.end method

.method public final X()Lbkb;
    .locals 3

    new-instance v0, Lbkb;

    iget-object v1, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v1, Lfyi;

    iget-object v1, v1, Lfyi;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbkb;-><init>(Ljava/util/List;[B)V

    return-object v0
.end method

.method public final Y()Lbkb;
    .locals 3

    new-instance v0, Lbkb;

    iget-object v1, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v1, Lfyi;

    iget-object v1, v1, Lfyi;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbkb;-><init>(Ljava/util/List;[B)V

    return-object v0
.end method

.method public final declared-synchronized Z(Lbkb;)Lkad;
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Leid;

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v9}, Leid;-><init>(Lbkb;Lbkb;I[B[B[B[B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    new-instance v1, Ljava/io/File;

    check-cast v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "lottie_network_cache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object v1
.end method

.method public final b(Ljava/lang/String;Ljava/io/InputStream;Lbka;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1, p3, v0}, Lbkb;->c(Ljava/lang/String;Lbka;Z)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/io/File;

    invoke-virtual {p0}, Lbkb;->a()Ljava/io/File;

    move-result-object v0

    invoke-direct {p3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x400

    :try_start_1
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-object p3

    :catchall_0
    move-exception p3

    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final d(Lbhm;)V
    .locals 1

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(Landroid/graphics/Path;)V
    .locals 5

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lbkb;->a:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbhm;

    sget-object v2, Lbls;->a:Ljava/lang/ThreadLocal;

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lbhm;->a:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lbhm;->b:Lbhs;

    check-cast v2, Lbhu;

    invoke-virtual {v2}, Lbhu;->k()F

    move-result v2

    iget-object v3, v1, Lbhm;->c:Lbhs;

    check-cast v3, Lbhu;

    invoke-virtual {v3}, Lbhu;->k()F

    move-result v3

    iget-object v1, v1, Lbhm;->d:Lbhs;

    check-cast v1, Lbhu;

    invoke-virtual {v1}, Lbhu;->k()F

    move-result v1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v1, v4

    invoke-static {p1, v2, v3, v1}, Lbls;->d(Landroid/graphics/Path;FFF)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, [Ljava/io/File;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final g(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h(JLjava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, p3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final varargs i([Laqc;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    iget v2, v1, Laqc;->a:I

    iget v3, v1, Laqc;->b:I

    iget-object v4, p0, Lbkb;->a:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    :goto_1
    check-cast v5, Ljava/util/TreeMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overriding migration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ROOM"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final j(Ljava/lang/String;)Lalr;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lalr;

    return-object p1
.end method

.method public final k()Ljava/util/Set;
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lbkb;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final l()V
    .locals 5

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lalr;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lalr;->j:Z

    iget-object v2, v1, Lalr;->h:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lalr;->h:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lalr;->g(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v3, v1, Lalr;->i:Ljava/util/Set;

    monitor-enter v3

    :try_start_1
    iget-object v2, v1, Lalr;->i:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/Closeable;

    invoke-static {v4}, Lalr;->g(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lalr;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    invoke-static {v0}, Lljr;->ad(Ljava/util/List;)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lahv;

    invoke-interface {v1}, Lahv;->a()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public final o(F)V
    .locals 1

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public final p(J)V
    .locals 1

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public final q(Laga;)V
    .locals 2

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lafy;

    invoke-direct {v1, p1}, Lafy;-><init>(Laga;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    return-void
.end method

.method public final r(F)V
    .locals 1

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public final s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final t()Z
    .locals 1

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final u(Ljava/lang/String;)Lrd;
    .locals 1

    invoke-virtual {p0}, Lbkb;->v()Lva;

    move-result-object v0

    invoke-virtual {v0, p1}, Lva;->a(Ljava/lang/String;)Lrd;

    move-result-object p1

    return-object p1
.end method

.method public final v()Lva;
    .locals 2

    const-string v0, "getCameraBackend"

    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Lbbc;

    invoke-virtual {v0}, Lbbc;->e()Lva;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load CameraBackend "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CameraBackendId(value=CXCP-Camera2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method public final w()Lcq;
    .locals 1

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Lce;

    iget-object v0, v0, Lce;->e:Lcq;

    return-object v0
.end method

.method public final x()V
    .locals 1

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Lce;

    iget-object v0, v0, Lce;->e:Lcq;

    invoke-virtual {v0}, Lcq;->H()V

    return-void
.end method

.method public final y()V
    .locals 2

    iget-object v0, p0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Lce;

    iget-object v0, v0, Lce;->e:Lcq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcq;->ab(Z)V

    return-void
.end method
