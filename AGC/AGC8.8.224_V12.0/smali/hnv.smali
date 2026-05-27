.class public final Lhnv;
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

.field private final h:Loiw;

.field private final i:Loiw;

.field private final j:Loiw;

.field private final k:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhnv;->a:Loiw;

    iput-object p2, p0, Lhnv;->b:Loiw;

    iput-object p3, p0, Lhnv;->c:Loiw;

    iput-object p4, p0, Lhnv;->d:Loiw;

    iput-object p5, p0, Lhnv;->e:Loiw;

    iput-object p6, p0, Lhnv;->f:Loiw;

    iput-object p7, p0, Lhnv;->g:Loiw;

    iput-object p8, p0, Lhnv;->h:Loiw;

    iput-object p9, p0, Lhnv;->i:Loiw;

    iput-object p10, p0, Lhnv;->j:Loiw;

    iput-object p11, p0, Lhnv;->k:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lhnu;
    .locals 13

    iget-object v0, p0, Lhnv;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v0, p0, Lhnv;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lhwu;

    iget-object v0, p0, Lhnv;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Libj;

    iget-object v0, p0, Lhnv;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lgeh;

    iget-object v0, p0, Lhnv;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Liff;

    iget-object v0, p0, Lhnv;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lhpq;

    iget-object v0, p0, Lhnv;->g:Loiw;

    check-cast v0, Lhpa;

    invoke-virtual {v0}, Lhpa;->a()Lhoz;

    move-result-object v8

    iget-object v0, p0, Lhnv;->h:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Leoa;

    iget-object v0, p0, Lhnv;->i:Loiw;

    check-cast v0, Litb;

    invoke-virtual {v0}, Litb;->a()Litm;

    move-result-object v10

    iget-object v0, p0, Lhnv;->j:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lmqp;

    iget-object v0, p0, Lhnv;->k:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ldhi;

    new-instance v0, Lhnu;

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lhnu;-><init>(Lcom/google/android/apps/camera/bottombar/BottomBarController;Lhwu;Libj;Lgeh;Liff;Lhpq;Lhoz;Leoa;Litm;Lmqp;Ldhi;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lhnv;->a()Lhnu;

    move-result-object v0

    return-object v0
.end method
