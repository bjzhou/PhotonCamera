.class public final Lhwe;
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

.field private final g:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhwe;->a:Loiw;

    iput-object p2, p0, Lhwe;->b:Loiw;

    iput-object p3, p0, Lhwe;->c:Loiw;

    iput-object p4, p0, Lhwe;->d:Loiw;

    iput-object p5, p0, Lhwe;->e:Loiw;

    iput-object p6, p0, Lhwe;->f:Loiw;

    iput-object p7, p0, Lhwe;->g:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lhwd;
    .locals 9

    iget-object v0, p0, Lhwe;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lhwc;

    iget-object v0, p0, Lhwe;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lhud;

    iget-object v0, p0, Lhwe;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljwb;

    iget-object v0, p0, Lhwe;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Liff;

    iget-object v0, p0, Lhwe;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lhgy;

    iget-object v0, p0, Lhwe;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljuh;

    iget-object v0, p0, Lhwe;->g:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lhxx;

    new-instance v0, Lhwd;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lhwd;-><init>(Lhwc;Lhud;Ljwb;Liff;Lhgy;Ljuh;Lhxx;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lhwe;->a()Lhwd;

    move-result-object v0

    return-object v0
.end method
