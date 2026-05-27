.class public final Leul;
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

    iput-object p1, p0, Leul;->a:Loiw;

    iput-object p2, p0, Leul;->b:Loiw;

    iput-object p3, p0, Leul;->c:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lfux;
    .locals 5

    iget-object v0, p0, Leul;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfuv;

    iget-object v1, p0, Leul;->b:Loiw;

    iget-object v2, p0, Leul;->c:Loiw;

    check-cast v2, Ldqo;

    invoke-virtual {v2}, Ldqo;->a()Lmqp;

    move-result-object v2

    check-cast v1, Levp;

    invoke-virtual {v1}, Levp;->a()Lgkr;

    move-result-object v1

    new-instance v3, Llpg;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Llpg;-><init>(Z)V

    sget-object v4, Lika;->l:Lika;

    invoke-interface {v0, v1, v2, v3, v4}, Lfuv;->a(Lgkr;Lmqp;Llpg;Lika;)Lfux;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Leul;->a()Lfux;

    move-result-object v0

    return-object v0
.end method
