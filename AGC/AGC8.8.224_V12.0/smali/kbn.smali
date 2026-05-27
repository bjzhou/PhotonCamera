.class public final Lkbn;
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

    iput-object p1, p0, Lkbn;->a:Loiw;

    iput-object p2, p0, Lkbn;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lkbm;
    .locals 3

    iget-object v0, p0, Lkbn;->a:Loiw;

    check-cast v0, Lkao;

    invoke-virtual {v0}, Lkao;->a()Lkaq;

    move-result-object v0

    iget-object v1, p0, Lkbn;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v2, Lkbm;

    invoke-direct {v2, v0, v1}, Lkbm;-><init>(Lkaq;Ljava/util/concurrent/Executor;)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkbn;->a()Lkbm;

    move-result-object v0

    return-object v0
.end method
