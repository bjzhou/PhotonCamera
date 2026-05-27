.class public final Lhso;
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


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhso;->a:Loiw;

    iput-object p2, p0, Lhso;->b:Loiw;

    iput-object p3, p0, Lhso;->c:Loiw;

    iput-object p4, p0, Lhso;->d:Loiw;

    iput-object p5, p0, Lhso;->e:Loiw;

    iput-object p6, p0, Lhso;->f:Loiw;

    iput-object p7, p0, Lhso;->g:Loiw;

    iput-object p8, p0, Lhso;->h:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lhsn;
    .locals 12

    iget-object v0, p0, Lhso;->a:Loiw;

    check-cast v0, Liho;

    invoke-virtual {v0}, Liho;->a()Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    move-result-object v2

    iget-object v0, p0, Lhso;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v0, p0, Lhso;->c:Loiw;

    check-cast v0, Lera;

    invoke-virtual {v0}, Lera;->a()Lbkc;

    move-result-object v4

    iget-object v0, p0, Lhso;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lhlb;

    iget-object v0, p0, Lhso;->e:Loiw;

    invoke-static {v0}, Logj;->a(Loiw;)Logd;

    move-result-object v6

    iget-object v0, p0, Lhso;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljuh;

    iget-object v0, p0, Lhso;->g:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lhso;->h:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lgzm;

    new-instance v0, Lhsn;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lhsn;-><init>(Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;ZLbkc;Lhlb;Logd;Ljuh;Ljava/util/concurrent/Executor;Lgzm;[B[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lhso;->a()Lhsn;

    move-result-object v0

    return-object v0
.end method
