.class public final Lkju;
.super Lkkb;


# instance fields
.field public final a:Ljvk;

.field public final b:J


# direct methods
.method public constructor <init>(Lkfl;Lkll;Lkaf;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p5}, Lkkb;-><init>(Lkfl;Lkll;Z)V

    new-instance p2, Ljvk;

    sget-object p5, Lmpx;->a:Lmpx;

    invoke-direct {p2, p5}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lkju;->a:Ljvk;

    invoke-static {p4, p3}, Llho;->D(ILkaf;)J

    move-result-wide p3

    iput-wide p3, p0, Lkju;->b:J

    iget-object p1, p1, Lkfl;->c:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2, p1}, Ljvk;->bn(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lkju;->h:Lkfl;

    iget v0, v0, Lkfl;->e:I

    return v0
.end method

.method public final b()Lkaf;
    .locals 1

    iget-object v0, p0, Lkju;->h:Lkfl;

    iget-object v0, v0, Lkfl;->d:Lkaf;

    return-object v0
.end method

.method public final d(Landroid/view/Surface;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lkju;->a:Ljvk;

    sget-object v0, Lmpx;->a:Lmpx;

    invoke-virtual {p1, v0}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lkju;->a:Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lkju;->a:Ljvk;

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lkju;->b:J

    return-wide v0
.end method

.method public final g()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lkju;->a:Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    return-object v0
.end method

.method public final h()Lkfm;
    .locals 1

    iget-object v0, p0, Lkju;->h:Lkfl;

    iget-object v0, v0, Lkfl;->a:Lkfm;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
