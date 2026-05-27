.class public final Lkrs;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkrs;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Llhe;
    .locals 2

    iget-object v0, p0, Lkrs;->a:Loiw;

    check-cast v0, Logl;

    iget-object v0, v0, Logl;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    new-instance v1, Llhe;

    invoke-direct {v1, v0}, Llhe;-><init>(Lmqp;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkrs;->a()Llhe;

    move-result-object v0

    return-object v0
.end method
