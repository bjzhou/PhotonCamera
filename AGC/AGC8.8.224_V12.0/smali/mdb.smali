.class public final Lmdb;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmdb;->a:Loiw;

    iput-object p2, p0, Lmdb;->b:Loiw;

    iput-object p3, p0, Lmdb;->c:Loiw;

    iput-object p4, p0, Lmdb;->d:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Llwc;
    .locals 8

    iget-object v0, p0, Lmdb;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Llyh;

    iget-object v0, p0, Lmdb;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Llzz;

    iget-object v0, p0, Lmdb;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Llyz;

    iget-object v0, p0, Lmdb;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lkrn;

    new-instance v0, Llwc;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Llwc;-><init>(Llyh;Llzz;Llyz;Lkrn;[B[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmdb;->a()Llwc;

    move-result-object v0

    return-object v0
.end method
