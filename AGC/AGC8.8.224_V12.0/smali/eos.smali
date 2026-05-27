.class public final Leos;
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

    iput-object p1, p0, Leos;->a:Loiw;

    iput-object p2, p0, Leos;->b:Loiw;

    iput-object p3, p0, Leos;->c:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lkef;
    .locals 5

    iget-object v0, p0, Leos;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lken;

    iget-object v1, p0, Leos;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmqp;

    iget-object v2, p0, Leos;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljuf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcdu;

    const/16 v4, 0x12

    invoke-direct {v3, v0, v4}, Lcdu;-><init>(Lken;I)V

    invoke-virtual {v1, v3}, Lmqp;->b(Lmqi;)Lmqp;

    move-result-object v1

    new-instance v3, Lcdu;

    const/16 v4, 0x13

    invoke-direct {v3, v0, v4}, Lcdu;-><init>(Lken;I)V

    invoke-virtual {v1, v3}, Lmqp;->b(Lmqi;)Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    const-string v3, "Analysis stream not present."

    invoke-static {v1, v3}, Lmoz;->q(ZLjava/lang/Object;)V

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkef;

    invoke-virtual {v2, v0}, Ljuf;->d(Lkad;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Leos;->a()Lkef;

    move-result-object v0

    return-object v0
.end method
