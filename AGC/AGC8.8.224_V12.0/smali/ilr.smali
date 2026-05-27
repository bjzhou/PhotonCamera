.class public final Lilr;
.super Ljava/lang/Object;

# interfaces
.implements Lill;
.implements Lfaz;
.implements Lfal;
.implements Lfaq;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lmlu;

.field public c:Lilk;

.field public d:Lmlt;

.field e:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field private final f:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/update/PlayStoreInAppUpdater"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lilr;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljuh;Lezx;)V
    .locals 2

    invoke-static {p1}, Lljz;->m(Landroid/content/Context;)Lmmb;

    move-result-object v0

    iget-object v0, v0, Lmmb;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmlu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lilq;

    invoke-direct {v1}, Lilq;-><init>()V

    iput-object v1, p0, Lilr;->c:Lilk;

    iput-object p1, p0, Lilr;->f:Landroid/app/Activity;

    iput-object v0, p0, Lilr;->b:Lmlu;

    invoke-static {p2, p3, p0}, Lfcr;->e(Ljuh;Lfak;Lfaz;)V

    return-void
.end method


# virtual methods
.method public final b(II)V
    .locals 1

    const v0, 0xe05f

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lilr;->c:Lilk;

    invoke-interface {p1}, Lilk;->i()V

    iget-object p1, p0, Lilr;->c:Lilk;

    invoke-interface {p1}, Lilk;->z()V

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p0, Lilr;->c:Lilk;

    invoke-interface {p1}, Lilk;->y()V

    return-void

    :cond_1
    sget-object p1, Lilr;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v0, 0x10d9

    invoke-interface {p1, v0}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v0, "Failed to update during user confirmation. resultCode: %s"

    invoke-interface {p1, v0, p2}, Lnah;->p(Ljava/lang/String;I)V

    iget-object p1, p0, Lilr;->c:Lilk;

    const/4 v0, 0x3

    invoke-interface {p1, v0, p2}, Lilk;->A(II)V

    :cond_2
    return-void
.end method

.method public final bK()V
    .locals 2

    iget-object v0, p0, Lilr;->e:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lilr;->b:Lmlu;

    invoke-interface {v1, v0}, Lmlu;->e(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lilr;->d:Lmlt;

    iget-object v0, p0, Lilr;->c:Lilk;

    invoke-interface {v0}, Lilk;->e()V

    iget-object v0, p0, Lilr;->b:Lmlu;

    invoke-interface {v0}, Lmlu;->a()Ljot;

    move-result-object v0

    new-instance v1, Lilo;

    invoke-direct {v1, p0}, Lilo;-><init>(Lilr;)V

    invoke-virtual {v0, v1}, Ljot;->l(Ljop;)V

    new-instance v1, Lilp;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lilp;-><init>(Lilr;I)V

    invoke-virtual {v0, v1}, Ljot;->i(Ljoo;)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lilr;->b:Lmlu;

    invoke-interface {v0}, Lmlu;->b()V

    return-void
.end method

.method public final e(Lilk;)V
    .locals 0

    iput-object p1, p0, Lilr;->c:Lilk;

    return-void
.end method

.method public final f()V
    .locals 5

    iget-object v0, p0, Lilr;->d:Lmlt;

    if-eqz v0, :cond_1

    iget v1, v0, Lmlt;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lmlt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lilr;->g()V

    :try_start_0
    iget-object v0, p0, Lilr;->b:Lmlu;

    iget-object v1, p0, Lilr;->d:Lmlt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lilr;->f:Landroid/app/Activity;

    invoke-interface {v0, v1, v3}, Lmlu;->c(Lmlt;Landroid/app/Activity;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lilr;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v3, "Failed to start update flow"

    const/16 v4, 0x10db

    invoke-static {v1, v3, v4, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    iget-object v0, p0, Lilr;->c:Lilk;

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Lilk;->A(II)V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lilr;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x10da

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    iget-object v1, p0, Lilr;->d:Lmlt;

    const-string v2, "App update info is null or not valid: %s"

    invoke-interface {v0, v2, v1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lilr;->e:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Lilr;)V

    iput-object v0, p0, Lilr;->e:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    :cond_0
    iget-object v0, p0, Lilr;->b:Lmlu;

    iget-object v1, p0, Lilr;->e:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1}, Lmlu;->d(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V

    return-void
.end method
