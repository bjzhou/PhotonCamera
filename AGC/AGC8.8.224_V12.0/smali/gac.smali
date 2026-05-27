.class public final Lgac;
.super Ljava/lang/Object;

# interfaces
.implements Lgaa;


# instance fields
.field public final a:Lgxl;

.field private final b:Ljuh;

.field private final c:Ljava/lang/Object;

.field private final d:Ljew;


# direct methods
.method public constructor <init>(Lgxl;Ljuh;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgac;->c:Ljava/lang/Object;

    new-instance v0, Ljew;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljew;-><init>([B[B)V

    iput-object v0, p0, Lgac;->d:Ljew;

    iput-object p1, p0, Lgac;->a:Lgxl;

    iput-object p2, p0, Lgac;->b:Ljuh;

    return-void
.end method


# virtual methods
.method public final a(Lilz;F)V
    .locals 3

    iget-object v0, p0, Lgac;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgac;->d:Ljew;

    invoke-virtual {v1, p1, p2}, Ljew;->y(Lilz;F)F

    move-result p1

    iget-object p2, p0, Lgac;->b:Ljuh;

    new-instance v1, Leug;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v2}, Leug;-><init>(Lgac;FI)V

    invoke-virtual {p2, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
