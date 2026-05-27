.class public final Ldjh;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldjh;->a:Loiw;

    iput-object p2, p0, Ldjh;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldjg;
    .locals 3

    iget-object v0, p0, Ldjh;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgwu;

    iget-object v1, p0, Ldjh;->b:Loiw;

    check-cast v1, Lcja;

    invoke-virtual {v1}, Lcja;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Ldjg;

    invoke-direct {v2, v0, v1}, Ldjg;-><init>(Lgwu;Ljava/util/concurrent/Executor;)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldjh;->a()Ldjg;

    move-result-object v0

    return-object v0
.end method
