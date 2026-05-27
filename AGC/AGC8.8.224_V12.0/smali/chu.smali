.class public final Lchu;
.super Ljava/lang/Object;

# interfaces
.implements Lchr;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lchu;->a:Loiw;

    iput-object p1, p0, Lchu;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 12

    iget-object v0, p0, Lchu;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ligo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ligo;->l()I

    move-result v0

    move v7, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_0
    instance-of v0, p1, Lklr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lchu;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lfbz;

    sget v0, Lmvv;->d:I

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    sget-object v9, Lmyu;->a:Lmvv;

    sget-object v10, Lkbo;->b:Lkbo;

    const/4 v11, 0x0

    move-object v4, p1

    move-object v8, v9

    invoke-interface/range {v1 .. v11}, Lfbz;->V(ILjava/lang/String;Ljava/lang/Throwable;IIILjava/util/List;Ljava/util/List;Lkbo;Z)V

    return-void

    :cond_1
    instance-of v0, p1, Lklq;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lklq;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lchu;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfbz;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    sget p1, Lmvv;->d:I

    const/4 v5, -0x1

    const/4 v6, -0x1

    sget-object v8, Lmyu;->a:Lmvv;

    iget p1, v0, Lklq;->a:I

    invoke-static {p1}, Lkbo;->a(I)Lkbo;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface/range {v1 .. v11}, Lfbz;->V(ILjava/lang/String;Ljava/lang/Throwable;IIILjava/util/List;Ljava/util/List;Lkbo;Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lchu;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfbz;

    invoke-interface {v0, p1, v7}, Lfbz;->D(Ljava/lang/Throwable;I)V

    return-void
.end method
