.class public final Lmbe;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public final i:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmbe;->i:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmbe;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmbe;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmbe;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmbe;->h:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmbe;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmbe;->f:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmbe;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmbe;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lbkc;Lklx;Lhal;Lgzm;Ldja;Ljvs;Lhar;Ldbx;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmbe;->a:Ljava/lang/Object;

    iput-object p2, p0, Lmbe;->h:Ljava/lang/Object;

    iput-object p3, p0, Lmbe;->f:Ljava/lang/Object;

    iput-object p4, p0, Lmbe;->e:Ljava/lang/Object;

    iput-object p5, p0, Lmbe;->c:Ljava/lang/Object;

    iput-object p6, p0, Lmbe;->b:Ljava/lang/Object;

    iput-object p7, p0, Lmbe;->i:Ljava/lang/Object;

    iput-object p8, p0, Lmbe;->g:Ljava/lang/Object;

    iput-object p9, p0, Lmbe;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldxl;Ljava/util/List;Lgxb;Ldne;Ldhi;Ljava/util/concurrent/Executor;Lfkk;Lgsm;Lfys;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmbe;->f:Ljava/lang/Object;

    iput-object p2, p0, Lmbe;->b:Ljava/lang/Object;

    iput-object p3, p0, Lmbe;->c:Ljava/lang/Object;

    iput-object p4, p0, Lmbe;->g:Ljava/lang/Object;

    iput-object p5, p0, Lmbe;->h:Ljava/lang/Object;

    iput-object p6, p0, Lmbe;->a:Ljava/lang/Object;

    iput-object p7, p0, Lmbe;->e:Ljava/lang/Object;

    iput-object p8, p0, Lmbe;->i:Ljava/lang/Object;

    iput-object p9, p0, Lmbe;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgab;Ljvs;Ljvs;Ljvs;Ljvs;Ljvs;Lnou;Lgcb;Ljvs;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lgab;->a()Ljvs;

    move-result-object v0

    iput-object v0, p0, Lmbe;->f:Ljava/lang/Object;

    invoke-interface {p1}, Lgab;->b()Ljvs;

    move-result-object p1

    iput-object p1, p0, Lmbe;->i:Ljava/lang/Object;

    iput-object p2, p0, Lmbe;->c:Ljava/lang/Object;

    iput-object p4, p0, Lmbe;->h:Ljava/lang/Object;

    iput-object p3, p0, Lmbe;->e:Ljava/lang/Object;

    iput-object p5, p0, Lmbe;->d:Ljava/lang/Object;

    new-instance p1, Lgmc;

    invoke-direct {p1, p6}, Lgmc;-><init>(Ljvs;)V

    iput-object p7, p0, Lmbe;->b:Ljava/lang/Object;

    iput-object p8, p0, Lmbe;->g:Ljava/lang/Object;

    iput-object p9, p0, Lmbe;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkpc;Ljvd;Lkaq;Lkbc;Llas;Lloi;Lkoe;Lkli;Landroidx/wear/ambient/AmbientDelegate;[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmbe;->i:Ljava/lang/Object;

    iput-object p2, p0, Lmbe;->a:Ljava/lang/Object;

    iput-object p4, p0, Lmbe;->b:Ljava/lang/Object;

    iput-object p3, p0, Lmbe;->h:Ljava/lang/Object;

    iput-object p6, p0, Lmbe;->d:Ljava/lang/Object;

    iput-object p5, p0, Lmbe;->f:Ljava/lang/Object;

    iput-object p7, p0, Lmbe;->g:Ljava/lang/Object;

    iput-object p8, p0, Lmbe;->c:Ljava/lang/Object;

    iput-object p9, p0, Lmbe;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lmbe;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lmbe;->b:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lmbe;->c:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lmbe;->d:Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Lmbe;->e:Ljava/lang/Object;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p6, p0, Lmbe;->f:Ljava/lang/Object;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p7, p0, Lmbe;->g:Ljava/lang/Object;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p8, p0, Lmbe;->h:Ljava/lang/Object;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p9, p0, Lmbe;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lmbe;->e:Ljava/lang/Object;

    iput-object p2, p0, Lmbe;->d:Ljava/lang/Object;

    iput-object p3, p0, Lmbe;->i:Ljava/lang/Object;

    iput-object p4, p0, Lmbe;->b:Ljava/lang/Object;

    iput-object p5, p0, Lmbe;->f:Ljava/lang/Object;

    iput-object p6, p0, Lmbe;->h:Ljava/lang/Object;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p7, p0, Lmbe;->g:Ljava/lang/Object;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p8, p0, Lmbe;->c:Ljava/lang/Object;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p9, p0, Lmbe;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lmbe;->c:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lmbe;->g:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lmbe;->b:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lmbe;->d:Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Lmbe;->e:Ljava/lang/Object;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p6, p0, Lmbe;->f:Ljava/lang/Object;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p7, p0, Lmbe;->h:Ljava/lang/Object;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p8, p0, Lmbe;->a:Ljava/lang/Object;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p9, p0, Lmbe;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.vr.apps.ornament"

    const-string v2, "com.google.vr.apps.ornament.app.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lmbe;->b(Landroid/content/Intent;)V

    return-void
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 9

    const/high16 v0, 0x10000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lmbe;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lmbe;->d:Ljava/lang/Object;

    invoke-interface {v0}, Ldbx;->d()Lklv;

    move-result-object v0

    sget-object v1, Lklv;->b:Lklv;

    iget-object v2, p0, Lmbe;->f:Ljava/lang/Object;

    check-cast v2, Lklx;

    invoke-virtual {v2, v1}, Lklx;->e(Lklv;)Lkll;

    move-result-object v2

    sget-object v3, Lklv;->a:Lklv;

    iget-object v4, p0, Lmbe;->f:Ljava/lang/Object;

    check-cast v4, Lklx;

    invoke-virtual {v4, v3}, Lklx;->e(Lklv;)Lkll;

    move-result-object v4

    iget-object v5, p0, Lmbe;->i:Ljava/lang/Object;

    invoke-interface {v5}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, p0, Lmbe;->c:Ljava/lang/Object;

    sget-object v7, Lgzd;->b:Lgzr;

    invoke-interface {v6, v7}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v7, p0, Lmbe;->g:Ljava/lang/Object;

    check-cast v7, Ljwi;

    invoke-virtual {v7}, Ljwi;->bm()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lhaq;

    invoke-virtual {v7}, Lhaq;->name()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lklv;->a:Lklv;

    invoke-virtual {v0, v8}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v8, p0, Lmbe;->e:Ljava/lang/Object;

    check-cast v8, Lhal;

    invoke-virtual {v8, v4, v3}, Lhal;->a(Lkll;Lklv;)Lkaf;

    move-result-object v4

    invoke-virtual {v4}, Lkaf;->c()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lmbe;->b:Ljava/lang/Object;

    check-cast v8, Ldja;

    invoke-virtual {v8, v3}, Ldja;->l(Lklv;)Ljwu;

    move-result-object v3

    invoke-virtual {v3}, Ljwu;->b()Lkaf;

    move-result-object v3

    invoke-virtual {v3}, Lkaf;->c()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lmbe;->e:Ljava/lang/Object;

    check-cast v8, Lhal;

    invoke-virtual {v8, v2, v1}, Lhal;->a(Lkll;Lklv;)Lkaf;

    move-result-object v2

    invoke-virtual {v2}, Lkaf;->c()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lmbe;->b:Ljava/lang/Object;

    check-cast v8, Ldja;

    invoke-virtual {v8, v1}, Ldja;->l(Lklv;)Ljwu;

    move-result-object v1

    invoke-virtual {v1}, Ljwu;->b()Lkaf;

    move-result-object v1

    invoke-virtual {v1}, Lkaf;->c()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "settings_save_location"

    invoke-virtual {p1, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v6, "settings_camera_sounds"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v5, "settings_preferred_camera_type_is_front"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz v7, :cond_1

    const-string v0, "settings_volume_key_action"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz v2, :cond_2

    const-string v0, "settings_back_camera_photo_resolution"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz v1, :cond_3

    const-string v0, "settings_back_camera_video_resolution"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    if-eqz v4, :cond_4

    const-string v0, "settings_front_camera_photo_resolution"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    if-eqz v3, :cond_5

    const-string v0, "settings_front_camera_video_resolution"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    sget v0, Lodv;->a:I

    iget-object v0, p0, Lmbe;->h:Ljava/lang/Object;

    check-cast v0, Lbkc;

    invoke-virtual {v0, p1}, Lbkc;->f(Landroid/content/Intent;)V

    return-void
.end method

.method public final c()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.vr.apps.ornament"

    const-string v2, "com.google.vr.apps.ornament.photobooth.activity.PhotoboothActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lmbe;->b(Landroid/content/Intent;)V

    return-void
.end method

.method public final d(Lgkr;)Lffr;
    .locals 14

    new-instance v13, Lffr;

    iget-object v0, p0, Lmbe;->e:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lmqp;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lmbe;->d:Ljava/lang/Object;

    check-cast v0, Logn;

    invoke-virtual {v0}, Logn;->a()Logd;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lmbe;->i:Ljava/lang/Object;

    check-cast v0, Logn;

    invoke-virtual {v0}, Logn;->a()Logd;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lmbe;->b:Ljava/lang/Object;

    check-cast v0, Logn;

    invoke-virtual {v0}, Logn;->a()Logd;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lmbe;->f:Ljava/lang/Object;

    check-cast v0, Logn;

    invoke-virtual {v0}, Logn;->a()Logd;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lmbe;->h:Ljava/lang/Object;

    check-cast v0, Lfwo;

    invoke-virtual {v0}, Lfwo;->a()Lfuz;

    move-result-object v6

    iget-object v0, p0, Lmbe;->g:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Limq;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lmbe;->c:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ldhi;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lmbe;->a:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljvs;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, v13

    move-object v9, p1

    invoke-direct/range {v0 .. v12}, Lffr;-><init>(Lmqp;Logd;Logd;Logd;Logd;Lfuz;Limq;Ldhi;Lgkr;Ljvs;[B[B)V

    return-object v13
.end method
