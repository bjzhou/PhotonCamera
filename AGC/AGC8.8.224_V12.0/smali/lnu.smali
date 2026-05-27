.class public final Llnu;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;

.field private final f:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llnu;->a:Loiw;

    iput-object p2, p0, Llnu;->b:Loiw;

    iput-object p3, p0, Llnu;->c:Loiw;

    iput-object p4, p0, Llnu;->d:Loiw;

    iput-object p5, p0, Llnu;->e:Loiw;

    iput-object p6, p0, Llnu;->f:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Llnt;
    .locals 8

    iget-object v0, p0, Llnu;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Llnu;->b:Loiw;

    check-cast v0, Logl;

    iget-object v0, v0, Logl;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lmqp;

    iget-object v0, p0, Llnu;->c:Loiw;

    check-cast v0, Logl;

    iget-object v0, v0, Logl;->a:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lmqp;

    iget-object v0, p0, Llnu;->d:Loiw;

    check-cast v0, Logl;

    iget-object v0, v0, Logl;->a:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lmqp;

    iget-object v0, p0, Llnu;->e:Loiw;

    check-cast v0, Logl;

    iget-object v0, v0, Logl;->a:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lmqp;

    iget-object v0, p0, Llnu;->f:Loiw;

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v7

    new-instance v0, Llnt;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Llnt;-><init>(Landroid/content/Context;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Llnu;->a()Llnt;

    move-result-object v0

    return-object v0
.end method
