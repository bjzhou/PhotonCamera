.class public final Lkqd;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkqd;->a:Loiw;

    iput-object p2, p0, Lkqd;->b:Loiw;

    iput-object p3, p0, Lkqd;->c:Loiw;

    iput-object p4, p0, Lkqd;->d:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lkqc;
    .locals 8

    iget-object v0, p0, Lkqd;->a:Loiw;

    check-cast v0, Lhlf;

    invoke-virtual {v0}, Lhlf;->a()Lkqa;

    move-result-object v2

    iget-object v0, p0, Lkqd;->b:Loiw;

    check-cast v0, Lkpp;

    invoke-virtual {v0}, Lkpp;->a()Lkpo;

    move-result-object v3

    iget-object v0, p0, Lkqd;->c:Loiw;

    check-cast v0, Lkpy;

    invoke-virtual {v0}, Lkpy;->a()Ldqx;

    move-result-object v4

    iget-object v0, p0, Lkqd;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpo;

    new-instance v0, Lkqc;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lkqc;-><init>(Lkqa;Lkpo;Ldqx;[B[B[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkqd;->a()Lkqc;

    move-result-object v0

    return-object v0
.end method
