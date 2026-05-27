.class final Lhhj;
.super Ljava/lang/Object;

# interfaces
.implements Lhia;


# instance fields
.field final synthetic a:Lhhk;


# direct methods
.method public constructor <init>(Lhhk;)V
    .locals 0

    iput-object p1, p0, Lhhj;->a:Lhhk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 10

    iget-object v0, p0, Lhhj;->a:Lhhk;

    iget-object v1, v0, Lhhk;->f:Landroidx/wear/ambient/AmbientMode$AmbientController;

    if-nez v1, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    array-length v1, p1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lhhk;->b:Lcrl;

    invoke-virtual {v2, v1}, Lcrl;->a(I)J

    move-result-wide v2

    new-instance v6, Lkgd;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1, v1, v2, v3}, Lldo;->a(Ljava/nio/ByteBuffer;IJ)Lldo;

    move-result-object p1

    invoke-direct {v6, p1}, Lkgd;-><init>(Lldo;)V

    iget-object v5, v0, Lhhk;->f:Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object p1, v5, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    invoke-virtual {v6}, Lkgd;->a()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    check-cast p1, Lcri;

    iget-object v0, p1, Lcri;->c:Lnow;

    invoke-interface {v0}, Lnow;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcri;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Output executor is shutdown."

    const/16 v2, 0x229

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_3
    new-instance v0, Lcfz;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, p1, v6, v1, v2}, Lcfz;-><init>(Lcri;Lkgd;I[B)V

    iget-object p1, p1, Lcri;->c:Lnow;

    invoke-static {v0, p1}, Lcri;->d(Ljava/lang/Runnable;Lnow;)V

    :goto_0
    iget-object p1, v5, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    new-instance v0, Lcfz;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcfz;-><init>(Landroidx/wear/ambient/AmbientMode$AmbientController;Lkgd;I[B[B)V

    check-cast p1, Lcri;

    iget-object p1, p1, Lcri;->b:Lnow;

    invoke-static {v0, p1}, Lcri;->d(Ljava/lang/Runnable;Lnow;)V

    return-void

    :goto_1
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lhhj;->a:Lhhk;

    iget-object v0, v0, Lhhk;->f:Landroidx/wear/ambient/AmbientMode$AmbientController;

    if-eqz v0, :cond_0

    sget-object v1, Lcri;->a:Lnak;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v0, Lcri;

    iget-object v0, v0, Lcri;->e:Lnph;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final synthetic c(I)V
    .locals 0

    return-void
.end method
