.class public final Ldba;
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

    iput-object p1, p0, Ldba;->a:Loiw;

    iput-object p2, p0, Ldba;->b:Loiw;

    iput-object p3, p0, Ldba;->c:Loiw;

    iput-object p4, p0, Ldba;->d:Loiw;

    iput-object p5, p0, Ldba;->e:Loiw;

    iput-object p6, p0, Ldba;->f:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldfa;
    .locals 10

    iget-object v0, p0, Ldba;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lfbz;

    iget-object v0, p0, Ldba;->b:Loiw;

    check-cast v0, Lcwf;

    invoke-virtual {v0}, Lcwf;->b()Ldja;

    move-result-object v3

    iget-object v0, p0, Ldba;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcqv;

    iget-object v0, p0, Ldba;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lhnb;

    iget-object v0, p0, Ldba;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcsa;

    iget-object v0, p0, Ldba;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lhkl;

    new-instance v0, Ldfa;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ldfa;-><init>(Lfbz;Ldja;Lcqv;Lhnb;Lcsa;Lhkl;[B[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldba;->a()Ldfa;

    move-result-object v0

    return-object v0
.end method
