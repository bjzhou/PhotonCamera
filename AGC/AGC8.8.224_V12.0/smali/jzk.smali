.class public final Ljzk;
.super Ljava/lang/Object;

# interfaces
.implements Lklj;


# instance fields
.field public final a:Lbkb;

.field private final b:Lklp;

.field private final c:Lkog;

.field private final d:Lkaq;

.field private final e:Lkbc;


# direct methods
.method public constructor <init>(Lbkb;Lklp;Lkoe;Lkog;Lkaq;Lkbc;[B[B[B[B)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljzk;->a:Lbkb;

    iput-object p2, p0, Ljzk;->b:Lklp;

    iput-object p4, p0, Ljzk;->c:Lkog;

    iput-object p5, p0, Ljzk;->d:Lkaq;

    iput-object p6, p0, Ljzk;->e:Lkbc;

    return-void
.end method


# virtual methods
.method public final a(Lkll;)Lkli;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ljzk;->a:Lbkb;

    invoke-static {p1}, Lkba;->j(Lkll;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbkb;->u(Ljava/lang/String;)Lrd;

    move-result-object v0

    invoke-interface {v0}, Lrd;->b()Ljava/util/Set;

    move-result-object v1

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrc;

    iget-object v2, v2, Lrc;->a:Ljava/lang/String;

    invoke-static {v2}, Lkll;->b(Ljava/lang/String;)Lkll;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lklh;

    new-instance v4, Ljzl;

    invoke-direct {v4, v0}, Ljzl;-><init>(Lrd;)V

    iget-object v6, p0, Ljzk;->c:Lkog;

    iget-object v7, p0, Ljzk;->e:Lkbc;

    iget-object v8, p0, Ljzk;->d:Lkaq;

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lklh;-><init>(Lkll;Ljzl;Ljava/util/Set;Lkog;Lkbc;Lkaq;)V

    return-object v1
.end method

.method public final b()Lkll;
    .locals 1

    invoke-virtual {p0}, Ljzk;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lljr;->ai(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkll;

    return-object v0
.end method

.method public final c(I)Lkll;
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljzk;->d(Ljava/lang/String;)Lkll;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;)Lkll;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljzj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljzj;-><init>(Ljzk;Loku;)V

    invoke-static {v0}, Lonm;->d(Lomo;)Looc;

    move-result-object v0

    invoke-interface {v0}, Looc;->a()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkll;

    iget-object v3, v3, Lkll;->a:Ljava/lang/String;

    invoke-static {v3, p1}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    :goto_0
    check-cast v1, Lkll;

    return-object v1
.end method

.method public final e(Lklv;)Lkll;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljzk;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkll;

    iget-object v3, p0, Ljzk;->a:Lbkb;

    invoke-static {v2}, Lkba;->j(Lkll;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lbkb;->u(Ljava/lang/String;)Lrd;

    move-result-object v2

    invoke-static {v2}, Ljzm;->a(Lrd;)Lklv;

    move-result-object v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lkll;

    return-object v1
.end method

.method public final f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Ljzk;->b:Lklp;

    invoke-interface {v0}, Lklp;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Ljzk;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final h(Lklv;)Ljava/util/List;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljzk;->f()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkll;

    iget-object v4, p0, Ljzk;->a:Lbkb;

    invoke-static {v3}, Lkba;->j(Lkll;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lbkb;->u(Ljava/lang/String;)Lrd;

    move-result-object v3

    invoke-static {v3}, Ljzm;->a(Lrd;)Lklv;

    move-result-object v3

    if-ne v3, p1, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final i()Z
    .locals 4

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    :try_start_0
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {v2, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget-boolean v3, v3, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final j(Lklv;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljzk;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkll;

    iget-object v3, p0, Ljzk;->a:Lbkb;

    invoke-static {v2}, Lkba;->j(Lkll;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lbkb;->u(Ljava/lang/String;)Lrd;

    move-result-object v2

    invoke-static {v2}, Ljzm;->a(Lrd;)Lklv;

    move-result-object v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final k()Z
    .locals 4

    invoke-virtual {p0}, Ljzk;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkll;

    iget-object v3, p0, Ljzk;->a:Lbkb;

    iget-object v2, v2, Lkll;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v2}, Lbkb;->u(Ljava/lang/String;)Lrd;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v3}, Lrd;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-nez v2, :cond_1

    sget-object v2, Ljzm;->a:[I

    :cond_1
    const/16 v3, 0x9

    invoke-static {v2, v3}, Lljr;->aA([II)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
