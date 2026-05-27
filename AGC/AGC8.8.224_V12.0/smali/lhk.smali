.class public final Llhk;
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

    iput-object p1, p0, Llhk;->a:Loiw;

    iput-object p2, p0, Llhk;->b:Loiw;

    iput-object p3, p0, Llhk;->c:Loiw;

    iput-object p4, p0, Llhk;->d:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Llhj;
    .locals 7

    iget-object v0, p0, Llhk;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Llhk;->b:Loiw;

    check-cast v0, Llib;

    invoke-virtual {v0}, Llib;->a()Lloi;

    move-result-object v3

    iget-object v0, p0, Llhk;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkrn;

    iget-object v5, p0, Llhk;->d:Loiw;

    new-instance v0, Llhj;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Llhj;-><init>(Ljava/lang/String;Lloi;Lkrn;Loiw;[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Llhk;->a()Llhj;

    move-result-object v0

    return-object v0
.end method
