.class public final Lleh;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lmqi;

.field public c:Landroid/os/Handler;

.field public d:Z

.field public e:Landroid/view/Surface;

.field public f:Z

.field private final g:Landroid/media/MediaFormat;

.field private final h:Llep;

.field private i:Lnaa;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lleh;->a:Ljava/lang/Object;

    sget-object v0, Lmqk;->a:Lmqk;

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(Landroid/media/MediaFormat;Llep;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lleh;->a:Ljava/lang/Object;

    sget-object v0, Lmqk;->a:Lmqk;

    iput-object v0, p0, Lleh;->b:Lmqi;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lleh;->f:Z

    iput-object p1, p0, Lleh;->g:Landroid/media/MediaFormat;

    const/4 p1, 0x0

    iput-object p1, p0, Lleh;->c:Landroid/os/Handler;

    iput-object p2, p0, Lleh;->h:Llep;

    new-instance p2, Lnaa;

    sget-object v1, Llel;->c:Llel;

    invoke-direct {p2, v1}, Lnaa;-><init>(Llel;)V

    iput-object p2, p0, Lleh;->i:Lnaa;

    iput-boolean v0, p0, Lleh;->d:Z

    iput-object p1, p0, Lleh;->e:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lleb;
    .locals 12

    :try_start_0
    iget-object v0, p0, Lleh;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lleh;->b:Lmqi;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lleh;->i:Lnaa;

    iget-object v5, p0, Lleh;->h:Llep;

    new-instance v3, Llei;

    iget-object v4, v2, Lnaa;->a:Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Llei;-><init>(Llel;Ljava/lang/AutoCloseable;)V

    iput-object v3, v2, Lnaa;->a:Ljava/lang/Object;

    new-instance v11, Llea;

    iget-object v4, p0, Lleh;->g:Landroid/media/MediaFormat;

    iget-object v6, v2, Lnaa;->a:Ljava/lang/Object;

    iget-object v7, p0, Lleh;->c:Landroid/os/Handler;

    iget-boolean v8, p0, Lleh;->d:Z

    iget-object v9, p0, Lleh;->e:Landroid/view/Surface;

    iget-boolean v10, p0, Lleh;->f:Z

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Llea;-><init>(Landroid/media/MediaFormat;Llep;Llel;Landroid/os/Handler;ZLandroid/view/Surface;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v1, v11}, Lmqi;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    check-cast v1, Lleb;

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_4
    const-string v2, "Could not build track encoder"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not build instance."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b(Llel;)V
    .locals 1

    new-instance v0, Lnaa;

    invoke-direct {v0, p1}, Lnaa;-><init>(Llel;)V

    iput-object v0, p0, Lleh;->i:Lnaa;

    return-void
.end method
