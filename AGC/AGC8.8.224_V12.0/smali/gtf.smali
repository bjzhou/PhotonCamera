.class public final Lgtf;
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

    iput-object p1, p0, Lgtf;->a:Loiw;

    iput-object p2, p0, Lgtf;->b:Loiw;

    iput-object p3, p0, Lgtf;->c:Loiw;

    iput-object p4, p0, Lgtf;->d:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lgte;
    .locals 5

    iget-object v0, p0, Lgtf;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lgtf;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwb;

    iget-object v2, p0, Lgtf;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljwb;

    iget-object v3, p0, Lgtf;->d:Loiw;

    check-cast v3, Lhnl;

    invoke-virtual {v3}, Lhnl;->a()Lhna;

    move-result-object v3

    new-instance v4, Lgte;

    invoke-direct {v4, v0, v1, v2, v3}, Lgte;-><init>(Ljava/util/concurrent/Executor;Ljwb;Ljwb;Lhna;)V

    return-object v4
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgtf;->a()Lgte;

    move-result-object v0

    return-object v0
.end method
