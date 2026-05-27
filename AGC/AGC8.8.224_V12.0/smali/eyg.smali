.class public final Leyg;
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

    iput-object p1, p0, Leyg;->a:Loiw;

    iput-object p2, p0, Leyg;->b:Loiw;

    iput-object p3, p0, Leyg;->c:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Leyf;
    .locals 5

    iget-object v0, p0, Leyg;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    invoke-static {}, Lemu;->a()Ljwb;

    move-result-object v1

    iget-object v2, p0, Leyg;->b:Loiw;

    check-cast v2, Lhnl;

    invoke-virtual {v2}, Lhnl;->a()Lhna;

    move-result-object v2

    iget-object v3, p0, Leyg;->c:Loiw;

    check-cast v3, Legl;

    invoke-virtual {v3}, Legl;->b()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    new-instance v4, Leyf;

    invoke-direct {v4, v0, v1, v2, v3}, Leyf;-><init>(Ljava/util/concurrent/Executor;Ljwb;Lhna;Z)V

    return-object v4
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Leyg;->a()Leyf;

    move-result-object v0

    return-object v0
.end method
