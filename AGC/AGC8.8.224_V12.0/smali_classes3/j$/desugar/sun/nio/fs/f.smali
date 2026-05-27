.class final Lj$/desugar/sun/nio/fs/f;
.super Ljava/nio/channels/FileLock;


# instance fields
.field private final a:Ljava/nio/channels/FileLock;


# direct methods
.method constructor <init>(Ljava/nio/channels/FileLock;Lj$/desugar/sun/nio/fs/e;)V
    .locals 7

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->isShared()Z

    move-result v6

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Ljava/nio/channels/FileLock;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    iput-object p1, p0, Lj$/desugar/sun/nio/fs/f;->a:Ljava/nio/channels/FileLock;

    return-void
.end method


# virtual methods
.method public final isValid()Z
    .locals 1

    iget-object v0, p0, Lj$/desugar/sun/nio/fs/f;->a:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    return v0
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Lj$/desugar/sun/nio/fs/f;->a:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    return-void
.end method
