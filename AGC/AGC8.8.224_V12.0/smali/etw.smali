.class public final Letw;
.super Ljava/lang/Object;

# interfaces
.implements Lebk;


# instance fields
.field public final synthetic a:Leuc;


# direct methods
.method public constructor <init>(Leuc;)V
    .locals 0

    iput-object p1, p0, Letw;->a:Leuc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZZZZ)V
    .locals 2

    iget-object v0, p0, Letw;->a:Leuc;

    iget-object v0, v0, Leuc;->R:Lflk;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p4, :cond_1

    invoke-virtual {v0}, Lflk;->b()Ljvs;

    move-result-object v0

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Letw;->a:Leuc;

    iget-object p1, p1, Leuc;->f:Ljuh;

    new-instance p2, Lett;

    const/4 p3, 0x3

    invoke-direct {p2, p0, p3}, Lett;-><init>(Letw;I)V

    invoke-virtual {p1, p2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    if-eqz p4, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p0, Letw;->a:Leuc;

    iget-object p1, p1, Leuc;->f:Ljuh;

    new-instance p2, Lett;

    const/4 p3, 0x4

    invoke-direct {p2, p0, p3}, Lett;-><init>(Letw;I)V

    invoke-virtual {p1, p2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    :goto_2
    if-eqz p1, :cond_7

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object p1, p0, Letw;->a:Leuc;

    iget-object p1, p1, Leuc;->f:Ljuh;

    new-instance p2, Lett;

    const/4 p3, 0x5

    invoke-direct {p2, p0, p3}, Lett;-><init>(Letw;I)V

    invoke-virtual {p1, p2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    :goto_3
    if-nez p1, :cond_8

    if-eqz v1, :cond_8

    iget-object p1, p0, Letw;->a:Leuc;

    iget-object p1, p1, Leuc;->f:Ljuh;

    new-instance p3, Lbnd;

    const/16 p4, 0xa

    invoke-direct {p3, p0, p2, p4}, Lbnd;-><init>(Letw;ZI)V

    invoke-virtual {p1, p3}, Ljuh;->execute(Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method

.method public final synthetic b(Z)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Letw;->a:Leuc;

    iget-object v0, v0, Leuc;->f:Ljuh;

    new-instance v1, Lett;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lett;-><init>(Letw;I)V

    invoke-virtual {v0, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
