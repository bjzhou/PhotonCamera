.class public Lj$/nio/channels/DesugarChannels;
.super Ljava/lang/Object;


# direct methods
.method public static convertMaybeLegacyFileChannelFromLibrary(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-boolean v0, Lj$/adapter/a;->a:Z

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    invoke-static {p0}, Lj$/desugar/sun/nio/fs/g;->g(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method
