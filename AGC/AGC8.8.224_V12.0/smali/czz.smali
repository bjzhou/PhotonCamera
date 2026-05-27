.class public final Lczz;
.super Lgea;


# static fields
.field private static final j:Lnak;


# instance fields
.field public final a:Ljwb;

.field public final b:Ljwb;

.field public final c:Ljwb;

.field public d:Lmvv;

.field public e:Lmvv;

.field public f:Z

.field public volatile g:Z

.field public h:Z

.field public i:Lgeh;

.field private final k:Lgzw;

.field private final l:Ljwb;

.field private final m:Logd;

.field private final n:Ldja;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/camcorder/ui/optionsmenuitem/FpsMenuItem"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lczz;->j:Lnak;

    return-void
.end method

.method public constructor <init>(Ldja;Lgzw;Ljwb;Logd;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Lgea;-><init>()V

    new-instance p5, Ljvk;

    sget-object p6, Lgej;->A:Lgej;

    invoke-direct {p5, p6}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p5, p0, Lczz;->a:Ljwb;

    new-instance p5, Ljvk;

    const/4 p6, 0x0

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p7

    invoke-direct {p5, p7}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p5, p0, Lczz;->b:Ljwb;

    new-instance p5, Ljvk;

    invoke-direct {p5, p7}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p5, p0, Lczz;->c:Ljwb;

    sget p5, Lmvv;->d:I

    sget-object p5, Lmyu;->a:Lmvv;

    iput-object p5, p0, Lczz;->d:Lmvv;

    iput-object p5, p0, Lczz;->e:Lmvv;

    iput-boolean p6, p0, Lczz;->f:Z

    iput-boolean p6, p0, Lczz;->g:Z

    iput-boolean p6, p0, Lczz;->h:Z

    const/4 p5, 0x0

    iput-object p5, p0, Lczz;->i:Lgeh;

    iput-object p1, p0, Lczz;->n:Ldja;

    iput-object p2, p0, Lczz;->k:Lgzw;

    iput-object p3, p0, Lczz;->l:Ljwb;

    iput-object p4, p0, Lczz;->m:Logd;

    return-void
.end method

.method public static p(Lgyr;)Lgej;
    .locals 1

    sget-object v0, Lgyr;->a:Lgyr;

    sget-object v0, Lgej;->a:Lgej;

    invoke-virtual {p0}, Lgyr;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Switch should cover all enum cases. Check any missing FpsOptions and add them into the switch."

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    sget-object p0, Lgej;->D:Lgej;

    return-object p0

    :pswitch_1
    sget-object p0, Lgej;->C:Lgej;

    return-object p0

    :pswitch_2
    sget-object p0, Lgej;->B:Lgej;

    return-object p0

    :pswitch_3
    sget-object p0, Lgej;->A:Lgej;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f1401be

    return v0
.end method

.method public final d(Lgej;)I
    .locals 2

    sget-object v0, Lgyr;->a:Lgyr;

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
    const p1, 0x7f08031f

    return p1

    :pswitch_1
    const p1, 0x7f08031e

    return p1

    :pswitch_2
    const p1, 0x7f080243

    return p1

    :pswitch_3
    const p1, 0x7f080327

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()I
    .locals 1

    const v0, 0x7f1401bd

    return v0
.end method

.method public final g()Lgec;
    .locals 1

    sget-object v0, Lgec;->s:Lgec;

    return-object v0
.end method

.method public final i()Ljwb;
    .locals 1

    iget-object v0, p0, Lczz;->a:Ljwb;

    return-object v0
.end method

.method public final j()Lmvv;
    .locals 1

    iget-object v0, p0, Lczz;->d:Lmvv;

    return-object v0
.end method

.method public final k(Lgeh;)V
    .locals 5

    move-object v0, p1

    check-cast v0, Lgdv;

    iget-object v0, v0, Lgdv;->q:Ljuf;

    const/4 v1, 0x3

    new-array v1, v1, [Ljvs;

    iget-object v2, p0, Lczz;->n:Ldja;

    iget-object v3, v2, Ldja;->c:Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-object v3, v2, Ldja;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    iget-object v2, v2, Ldja;->a:Ljava/lang/Object;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object v1

    new-instance v2, Lcze;

    const/4 v3, 0x7

    invoke-direct {v2, p0, v3}, Lcze;-><init>(Lczz;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-interface {v1, v2, v3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lczz;->a:Ljwb;

    new-instance v2, Lcze;

    const/16 v3, 0x8

    invoke-direct {v2, p0, v3}, Lcze;-><init>(Lczz;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-interface {v1, v2, v3}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lczz;->k:Lgzw;

    new-instance v2, Lcze;

    const/16 v3, 0x9

    invoke-direct {v2, p0, v3}, Lcze;-><init>(Lczz;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-virtual {v1, v2, v3}, Ljwi;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lczz;->l:Ljwb;

    new-instance v2, Lccp;

    const/16 v3, 0x11

    invoke-direct {v2, p0, p1, v3}, Lccp;-><init>(Lczz;Lgeh;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-interface {v1, v2, v3}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iput-object p1, p0, Lczz;->i:Lgeh;

    return-void
.end method

.method public final n(Lgeh;)Z
    .locals 3

    sget-object v0, Lika;->c:Lika;

    invoke-interface {p1}, Lgeh;->b()Lika;

    move-result-object v1

    invoke-virtual {v0, v1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p1}, Lged;->a(Lgeh;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lczz;->e:Lmvv;

    invoke-virtual {p1}, Lmvv;->size()I

    move-result p1

    if-le p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lczz;->d:Lmvv;

    invoke-virtual {p1}, Lmvv;->size()I

    move-result p1

    if-le p1, v2, :cond_2

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    :goto_2
    iget-object p1, p0, Lczz;->c:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq p1, v1, :cond_4

    iget-object p1, p0, Lczz;->c:Ljwb;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_4
    iget-object p1, p0, Lczz;->c:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final o()Lgej;
    .locals 1

    invoke-virtual {p0}, Lczz;->q()Ljwb;

    move-result-object v0

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyr;

    invoke-static {v0}, Lczz;->p(Lgyr;)Lgej;

    move-result-object v0

    return-object v0
.end method

.method public final q()Ljwb;
    .locals 1

    iget-object v0, p0, Lczz;->b:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lczz;->n:Ldja;

    iget-object v0, v0, Ldja;->b:Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lczz;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lczz;->n:Ldja;

    iget-object v0, v0, Ldja;->c:Ljava/lang/Object;

    return-object v0

    :cond_1
    iget-object v0, p0, Lczz;->n:Ldja;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final r(Lgej;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lgyr;->a:Lgyr;

    sget-object v0, Lgej;->a:Lgej;

    invoke-virtual {p1}, Lgej;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f1401bc

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
    new-array p1, v2, [Ljava/lang/Object;

    const v0, 0x7f0c0025

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-virtual {p2, v3, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    new-array p1, v2, [Ljava/lang/Object;

    const v0, 0x7f0c0024

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-virtual {p2, v3, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    new-array p1, v2, [Ljava/lang/Object;

    const v0, 0x7f0c0023

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-virtual {p2, v3, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    const p1, 0x7f1401bb

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final s(Lgej;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lgyr;->a:Lgyr;

    sget-object v0, Lgej;->a:Lgej;

    invoke-virtual {p1}, Lgej;->ordinal()I

    move-result v0

    const-string v1, "%d"

    const/4 v2, 0x0

    const/4 v3, 0x1

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
    new-array p1, v3, [Ljava/lang/Object;

    const v0, 0x7f0c0025

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    new-array p1, v3, [Ljava/lang/Object;

    const v0, 0x7f0c0024

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    new-array p1, v3, [Ljava/lang/Object;

    const v0, 0x7f0c0023

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    const p1, 0x7f1401ba

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t()V
    .locals 2

    invoke-virtual {p0}, Lczz;->o()Lgej;

    move-result-object v0

    iget-object v1, p0, Lczz;->a:Ljwb;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Lgej;

    invoke-virtual {v1, v0}, Lgej;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lczz;->a:Ljwb;

    invoke-interface {v1, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final u(Lgec;Lgej;Z)Z
    .locals 3

    iget-boolean v0, p0, Lczz;->g:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v2, p0, Lczz;->m:Logd;

    invoke-interface {v2}, Logd;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhlr;

    invoke-virtual {v2, p1, p2, p3}, Lhlr;->u(Lgec;Lgej;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    sget-object p1, Lczz;->j:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v2, 0x328

    invoke-interface {p1, v2}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string v2, "shouldBlockSelection: block. option=%s invalidState=%b isSelected=%b"

    invoke-interface {p1, v2, p2, v0, p3}, Lnah;->B(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return v1
.end method

.method public final v(Lgeh;Lgej;)Z
    .locals 1

    iget-boolean p1, p0, Lczz;->h:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lczz;->f:Z

    if-eqz p1, :cond_0

    sget-object p1, Lgej;->D:Lgej;

    invoke-virtual {p1, p2}, Lgej;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lczz;->l:Ljwb;

    invoke-interface {p1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lczz;->e:Lmvv;

    invoke-virtual {p1, p2}, Lmvv;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
