.class public final Lhlo;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhlo;->a:Loiw;

    iput-object p2, p0, Lhlo;->b:Loiw;

    iput-object p3, p0, Lhlo;->c:Loiw;

    iput-object p4, p0, Lhlo;->d:Loiw;

    iput-object p5, p0, Lhlo;->e:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldqx;
    .locals 10

    iget-object v0, p0, Lhlo;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljwb;

    iget-object v0, p0, Lhlo;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljwb;

    iget-object v0, p0, Lhlo;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lgzw;

    iget-object v0, p0, Lhlo;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ldja;

    iget-object v0, p0, Lhlo;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lgzm;

    new-instance v0, Ldqx;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ldqx;-><init>(Ljwb;Ljwb;Lgzw;Ldja;Lgzm;[B[B[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lhlo;->a()Ldqx;

    move-result-object v0

    return-object v0
.end method
