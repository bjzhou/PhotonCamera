.class public final Lfqg;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfqg;->a:Loiw;

    iput-object p2, p0, Lfqg;->b:Loiw;

    iput-object p3, p0, Lfqg;->c:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;Loiw;)Lfqg;
    .locals 1

    new-instance v0, Lfqg;

    invoke-direct {v0, p0, p1, p2}, Lfqg;-><init>(Loiw;Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lfpg;
    .locals 5

    iget-object v0, p0, Lfqg;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpl;

    iget-object v1, p0, Lfqg;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    iget-object v2, p0, Lfqg;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgue;

    new-instance v3, Lfpg;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Lfpg;-><init>(Lfsm;Landroid/os/Handler;Lgue;[B)V

    return-object v3
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfqg;->a()Lfpg;

    move-result-object v0

    return-object v0
.end method
