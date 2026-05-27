.class final Leee;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leef;

.field private final b:Z


# direct methods
.method public constructor <init>(Leef;Z)V
    .locals 0

    iput-object p1, p0, Leee;->a:Leef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Leee;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Leee;->a:Leef;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Leee;->a:Leef;

    iget-boolean v2, p0, Leee;->b:Z

    iput-boolean v2, v1, Leef;->a:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
