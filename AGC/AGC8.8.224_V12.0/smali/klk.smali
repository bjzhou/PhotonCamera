.class public final Lklk;
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

    iput-object p1, p0, Lklk;->a:Loiw;

    iput-object p2, p0, Lklk;->b:Loiw;

    iput-object p3, p0, Lklk;->c:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lklp;
    .locals 4

    iget-object v0, p0, Lklk;->a:Loiw;

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    iget-object v1, p0, Lklk;->b:Loiw;

    iget-object v2, p0, Lklk;->c:Loiw;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklp;

    goto :goto_0

    :cond_0
    check-cast v2, Lklt;

    invoke-virtual {v2}, Lklt;->a()Lkls;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lklk;->a()Lklp;

    move-result-object v0

    return-object v0
.end method
