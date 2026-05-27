.class public final Lkce;
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

    iput-object p1, p0, Lkce;->a:Loiw;

    iput-object p2, p0, Lkce;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lkpo;
    .locals 3

    iget-object v0, p0, Lkce;->a:Loiw;

    check-cast v0, Logl;

    iget-object v0, v0, Logl;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    iget-object v2, p0, Lkce;->b:Loiw;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpo;

    goto :goto_0

    :cond_0
    check-cast v2, Lkcd;

    invoke-virtual {v2}, Lkcd;->a()Lkpo;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkce;->a()Lkpo;

    move-result-object v0

    return-object v0
.end method
