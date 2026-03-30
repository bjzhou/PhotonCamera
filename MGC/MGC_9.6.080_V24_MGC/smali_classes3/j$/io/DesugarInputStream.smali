.class public final Lj$/io/DesugarInputStream;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6

    const-string v0, "out"

    invoke-static {p1, v0}, Lj$/util/Objects;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x2000

    new-array v1, v0, [B

    const-wide/16 v2, 0x0

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ltz v5, :cond_0

    invoke-virtual {p1, v1, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v4, v5

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    return-wide v2
.end method
