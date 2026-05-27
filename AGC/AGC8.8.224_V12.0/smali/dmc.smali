.class public final Ldmc;
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

    iput-object p1, p0, Ldmc;->a:Loiw;

    iput-object p2, p0, Ldmc;->b:Loiw;

    iput-object p3, p0, Ldmc;->c:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldmb;
    .locals 8

    iget-object v0, p0, Ldmc;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lbkc;

    iget-object v0, p0, Ldmc;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkbc;

    iget-object v0, p0, Ldmc;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ldhi;

    new-instance v0, Ldmb;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ldmb;-><init>(Lbkc;Lkbc;Ldhi;[B[B[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldmc;->a()Ldmb;

    move-result-object v0

    return-object v0
.end method
