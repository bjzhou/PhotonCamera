.class public final Lcrd;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lcre;

.field public final c:Lcrf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/camcorder/audio/processor/AudioPipeStreamImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcrd;->a:Lnak;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcre;

    invoke-direct {v0, p1, p2}, Lcre;-><init>(II)V

    iput-object v0, p0, Lcrd;->b:Lcre;

    :try_start_0
    new-instance p1, Lcrf;

    invoke-direct {p1, v0}, Lcrf;-><init>(Lcre;)V

    iput-object p1, p0, Lcrd;->c:Lcrf;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    const-string v0, "Failed to set up output stream pipe"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcrd;->b:Lcre;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcrd;->b:Lcre;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
