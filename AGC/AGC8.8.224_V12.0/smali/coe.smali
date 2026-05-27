.class public final Lcoe;
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

    iput-object p1, p0, Lcoe;->a:Loiw;

    iput-object p2, p0, Lcoe;->b:Loiw;

    iput-object p3, p0, Lcoe;->c:Loiw;

    iput-object p4, p0, Lcoe;->d:Loiw;

    iput-object p5, p0, Lcoe;->e:Loiw;

    iput-object p6, p0, Lcoe;->f:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lcod;
    .locals 8

    iget-object v0, p0, Lcoe;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcoe;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcoe;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljuh;

    iget-object v0, p0, Lcoe;->d:Loiw;

    check-cast v0, Leqy;

    invoke-virtual {v0}, Leqy;->a()Lezx;

    move-result-object v5

    iget-object v0, p0, Lcoe;->e:Loiw;

    check-cast v0, Ldjb;

    invoke-virtual {v0}, Ldjb;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcoe;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcnt;

    new-instance v0, Lcod;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcod;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljuh;Lezx;Ljava/lang/String;Lcnt;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcoe;->a()Lcod;

    move-result-object v0

    return-object v0
.end method
