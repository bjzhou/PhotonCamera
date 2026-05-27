.class final Lkmc;
.super Ljava/lang/Object;

# interfaces
.implements Lkpd;


# instance fields
.field final synthetic a:Lkme;

.field private final b:Lkpd;


# direct methods
.method public constructor <init>(Lkme;Lkpd;)V
    .locals 0

    iput-object p1, p0, Lkmc;->a:Lkme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkmc;->b:Lkpd;

    return-void
.end method


# virtual methods
.method public final ci()V
    .locals 3

    iget-object v0, p0, Lkmc;->a:Lkme;

    iget-object v0, v0, Lkme;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkmc;->a:Lkme;

    iget-boolean v2, v1, Lkme;->b:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lkme;->j()V

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lkmc;->b:Lkpd;

    invoke-interface {v0}, Lkpd;->ci()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
