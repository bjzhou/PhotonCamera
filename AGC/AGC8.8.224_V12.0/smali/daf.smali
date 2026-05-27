.class public final Ldaf;
.super Lgea;


# static fields
.field private static final m:Lnak;


# instance fields
.field public final a:Lgyd;

.field public final b:Ljvs;

.field public final c:Lell;

.field public final d:Ljuh;

.field public final e:Landroid/app/Activity;

.field public final f:Ljvs;

.field public final g:Ljvs;

.field public h:Z

.field public i:Licf;

.field public j:Licf;

.field public k:I

.field public final l:Ljew;

.field private final n:Ljwb;

.field private final o:Ljvs;

.field private final p:Ljvs;

.field private q:Lgeh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/camcorder/ui/optionsmenuitem/MicInputMenuItem"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldaf;->m:Lnak;

    return-void
.end method

.method public constructor <init>(Lgyd;Ljvs;Lczz;Lell;Ljew;Ljuh;Landroid/app/Activity;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Lgea;-><init>()V

    iput-object p1, p0, Ldaf;->a:Lgyd;

    iput-object p2, p0, Ldaf;->b:Ljvs;

    iget-object p2, p3, Lczz;->b:Ljwb;

    iput-object p2, p0, Ldaf;->o:Ljvs;

    iput-object p4, p0, Ldaf;->c:Lell;

    iput-object p5, p0, Ldaf;->l:Ljew;

    iput-object p6, p0, Ldaf;->d:Ljuh;

    iput-object p7, p0, Ldaf;->e:Landroid/app/Activity;

    iget-object p2, p1, Lgyd;->b:Ljwb;

    iput-object p2, p0, Ldaf;->f:Ljvs;

    iget-object p2, p1, Lgyd;->c:Ljwb;

    iput-object p2, p0, Ldaf;->g:Ljvs;

    iget-object p2, p1, Lgyd;->d:Ljwb;

    iput-object p2, p0, Ldaf;->p:Ljvs;

    new-instance p2, Lgeb;

    iget-object p4, p1, Lgyd;->a:Ljwb;

    sget-object p5, Lgys;->a:Lgys;

    sget-object p6, Lgys;->a:Lgys;

    sget-object p7, Lgej;->x:Lgej;

    sget-object p8, Lgys;->b:Lgys;

    sget-object p9, Lgej;->y:Lgej;

    sget-object p10, Lgys;->c:Lgys;

    sget-object p11, Lgej;->z:Lgej;

    move-object p3, p2

    invoke-direct/range {p3 .. p11}, Lgeb;-><init>(Ljwb;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Ldaf;->n:Ljwb;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f1402be

    return v0
.end method

.method public final c()I
    .locals 1

    const v0, 0x7f1402bb

    return v0
.end method

.method public final d(Lgej;)I
    .locals 2

    sget-object v0, Lgej;->a:Lgej;

    invoke-virtual {p1}, Lgej;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid option: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const p1, 0x7f0801a2

    return p1

    :pswitch_1
    const p1, 0x7f0801a5

    return p1

    :pswitch_2
    const p1, 0x7f080360

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()I
    .locals 1

    const v0, 0x7f1402ba

    return v0
.end method

.method public final g()Lgec;
    .locals 1

    sget-object v0, Lgec;->u:Lgec;

    return-object v0
.end method

.method public final i()Ljwb;
    .locals 1

    iget-object v0, p0, Ldaf;->n:Ljwb;

    return-object v0
.end method

.method public final j()Lmvv;
    .locals 3

    iget-object v0, p0, Ldaf;->f:Ljvs;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldaf;->g:Ljvs;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lgej;->x:Lgej;

    sget-object v1, Lgej;->y:Lgej;

    sget-object v2, Lgej;->z:Lgej;

    invoke-static {v0, v1, v2}, Lmvv;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Ldaf;->f:Ljvs;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lgej;->x:Lgej;

    sget-object v1, Lgej;->y:Lgej;

    invoke-static {v0, v1}, Lmvv;->m(Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Ldaf;->g:Ljvs;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lgej;->x:Lgej;

    sget-object v1, Lgej;->z:Lgej;

    invoke-static {v0, v1}, Lmvv;->m(Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object v0

    return-object v0

    :cond_3
    sget-object v0, Ldaf;->m:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "getOptionList: returning empty list"

    const/16 v2, 0x329

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    sget v0, Lmvv;->d:I

    sget-object v0, Lmyu;->a:Lmvv;

    return-object v0
.end method

.method public final k(Lgeh;)V
    .locals 5

    move-object v0, p1

    check-cast v0, Lgdv;

    iget-object v0, v0, Lgdv;->q:Ljuf;

    const/4 v1, 0x2

    new-array v1, v1, [Ljvs;

    const/4 v2, 0x0

    iget-object v3, p0, Ldaf;->g:Ljvs;

    aput-object v3, v1, v2

    iget-object v2, p0, Ldaf;->f:Ljvs;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object v1

    new-instance v2, Lccp;

    const/16 v4, 0x13

    invoke-direct {v2, p0, p1, v4}, Lccp;-><init>(Ldaf;Lgeh;I)V

    sget-object v4, Lnnv;->a:Lnnv;

    invoke-interface {v1, v2, v4}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Ldaf;->p:Ljvs;

    new-instance v2, Lccp;

    const/16 v4, 0x14

    invoke-direct {v2, p0, p1, v4}, Lccp;-><init>(Ldaf;Lgeh;I)V

    sget-object v4, Lnnv;->a:Lnnv;

    invoke-interface {v1, v2, v4}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Ldaf;->o:Ljvs;

    new-instance v2, Lcze;

    const/16 v4, 0xb

    invoke-direct {v2, p1, v4}, Lcze;-><init>(Lgeh;I)V

    sget-object v4, Lnnv;->a:Lnnv;

    invoke-interface {v1, v2, v4}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Ldaf;->b:Ljvs;

    new-instance v2, Lecf;

    invoke-direct {v2, p0, p1, v3}, Lecf;-><init>(Ldaf;Lgeh;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-interface {v1, v2, v3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    new-instance v0, Ldae;

    invoke-direct {v0, p0}, Ldae;-><init>(Ldaf;)V

    invoke-interface {p1, v0}, Lgeh;->g(Lgen;)V

    iput-object p1, p0, Ldaf;->q:Lgeh;

    return-void
.end method

.method public final m(Lgeh;)Z
    .locals 0

    iget-boolean p1, p0, Ldaf;->h:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final n(Lgeh;)Z
    .locals 1

    iget-object v0, p0, Ldaf;->f:Ljvs;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldaf;->g:Ljvs;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Ldaf;->w(Lgeh;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final o()V
    .locals 10

    iget-object v0, p0, Ldaf;->i:Licf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldaf;->j:Licf;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljuh;->a()V

    iget-object v0, p0, Ldaf;->e:Landroid/app/Activity;

    const/4 v1, 0x0

    const/16 v2, 0x1388

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f14018e

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x1

    move-object v6, v0

    invoke-static/range {v1 .. v9}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object v1

    iput-object v1, p0, Ldaf;->i:Licf;

    const/4 v1, 0x0

    iget-object v5, p0, Ldaf;->e:Landroid/app/Activity;

    const v6, 0x7f14018f

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    invoke-static/range {v1 .. v9}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object v0

    iput-object v0, p0, Ldaf;->j:Licf;

    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Ldaf;->i:Licf;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ldaf;->c:Lell;

    invoke-interface {v1, v0}, Lell;->g(Lelk;)V

    :cond_0
    iget-object v0, p0, Ldaf;->j:Licf;

    if-eqz v0, :cond_1

    iget-object v1, p0, Ldaf;->c:Lell;

    invoke-interface {v1, v0}, Lell;->g(Lelk;)V

    :cond_1
    return-void
.end method

.method public final r(Lgej;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lgej;->a:Lgej;

    invoke-virtual {p1}, Lgej;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid option: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    iget-object p1, p0, Ldaf;->a:Lgyd;

    sget-object p2, Lgyc;->d:Lgyc;

    invoke-virtual {p1, p2}, Lgyd;->c(Lgyc;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    const p1, 0x7f1402bc

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    const p1, 0x7f1402bf

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final s(Lgej;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lgej;->a:Lgej;

    invoke-virtual {p1}, Lgej;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid option: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    iget-object p1, p0, Ldaf;->a:Lgyd;

    sget-object p2, Lgyc;->d:Lgyc;

    invoke-virtual {p1, p2}, Lgyd;->c(Lgyc;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    const p1, 0x7f1402bd

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    const p1, 0x7f1402c0

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t(Lgeh;)V
    .locals 9

    iget-object v0, p0, Ldaf;->b:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lgej;->y:Lgej;

    iget-object v1, p0, Ldaf;->n:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgej;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldaf;->f:Ljvs;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lgej;->z:Lgej;

    iget-object v4, p0, Ldaf;->n:Ljwb;

    invoke-interface {v4}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgej;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ldaf;->g:Ljvs;

    check-cast v3, Ljvk;

    iget-object v3, v3, Ljvk;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    sget-object v4, Lgej;->z:Lgej;

    iget-object v5, p0, Ldaf;->n:Ljwb;

    invoke-interface {v5}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgej;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Ldaf;->h:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Ldaf;->p:Ljvs;

    check-cast v4, Ljvk;

    iget-object v4, v4, Ljvk;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-nez v0, :cond_4

    if-nez v3, :cond_4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    :cond_4
    sget-object v5, Ldaf;->m:Lnak;

    invoke-virtual {v5}, Lnaf;->c()Lnaz;

    move-result-object v5

    iget-object v6, p0, Ldaf;->n:Ljwb;

    invoke-interface {v6}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "validateMicInputProperty: fallback from %s"

    const/16 v8, 0x335

    invoke-static {v5, v7, v6, v8}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    iget-object v5, p0, Ldaf;->n:Ljwb;

    sget-object v6, Lgej;->x:Lgej;

    invoke-interface {v5, v6}, Ljwb;->bn(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ldaf;->w(Lgeh;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-nez v3, :cond_6

    if-eqz v4, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    const/4 v3, 0x1

    :goto_3
    iget-object v4, p0, Ldaf;->b:Ljvs;

    invoke-interface {v4}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ldaf;->p()V

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    move v1, v3

    :goto_4
    iget-object v3, p0, Ldaf;->d:Ljuh;

    new-instance v4, Ldad;

    invoke-direct {v4, p0, v0, v1, v2}, Ldad;-><init>(Ldaf;ZZI)V

    invoke-virtual {v3, v4}, Ljuh;->c(Ljava/lang/Runnable;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_5
    sget-object v0, Lgec;->u:Lgec;

    invoke-interface {p1, v2, v0}, Lgeh;->o(ZLgec;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_9
    return-void
.end method

.method public final u(Lgec;Lgej;Z)Z
    .locals 0

    const/4 p1, 0x0

    if-nez p3, :cond_0

    sget-object p3, Lgej;->z:Lgej;

    invoke-virtual {p3, p2}, Lgej;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Ldaf;->p:Ljvs;

    check-cast p2, Ljvk;

    iget-object p2, p2, Ljvk;->d:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Ldaf;->h:Z

    iget-object p2, p0, Ldaf;->q:Lgeh;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lgec;->u:Lgec;

    invoke-interface {p2, p1, p3}, Lgeh;->o(ZLgec;)V

    :cond_0
    return p1
.end method

.method public final w(Lgeh;)Z
    .locals 2

    invoke-interface {p1}, Lgeh;->b()Lika;

    move-result-object p1

    sget-object v0, Lika;->t:Lika;

    invoke-virtual {v0, p1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    sget-object v0, Lika;->f:Lika;

    invoke-virtual {v0, p1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lika;->i:Lika;

    invoke-virtual {v0, p1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lika;->c:Lika;

    invoke-virtual {v0, p1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldaf;->o:Ljvs;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    :goto_0
    return v1
.end method

.method public final z(Lgeh;Z)V
    .locals 8

    iget-object v0, p0, Ldaf;->n:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    iget-object v0, p0, Ldaf;->a:Lgyd;

    sget-object v1, Lgyc;->d:Lgyc;

    invoke-virtual {v0, v1}, Lgyd;->c(Lgyc;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1402bc

    const v2, 0x7f0801a5

    const v3, 0x7f0801a2

    const/4 v4, 0x0

    const-string v5, "MicInput"

    if-eqz p2, :cond_1

    sget-object p2, Lgej;->y:Lgej;

    iget-object v6, p0, Ldaf;->n:Ljwb;

    invoke-interface {v6}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v6}, Lgej;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v6, 0x1

    if-nez p2, :cond_0

    sget-object p2, Lgej;->z:Lgej;

    iget-object v7, p0, Ldaf;->n:Ljwb;

    invoke-interface {v7}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Lgej;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1, v4, v2, v1, v5}, Lgeh;->v(ZIILjava/lang/String;)V

    invoke-interface {p1, v6, v3, v0, v5}, Lgeh;->w(ZILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p1, v4, v3, v0, v5}, Lgeh;->w(ZILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v6, v2, v1, v5}, Lgeh;->v(ZIILjava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {p1, v4, v3, v0, v5}, Lgeh;->w(ZILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4, v2, v1, v5}, Lgeh;->v(ZIILjava/lang/String;)V

    return-void
.end method
