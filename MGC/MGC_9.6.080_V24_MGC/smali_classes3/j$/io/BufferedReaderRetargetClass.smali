.class public final synthetic Lj$/io/BufferedReaderRetargetClass;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static lines(Ljava/io/BufferedReader;)Lj$/util/stream/Stream;
    .locals 1

    new-instance v0, Lj$/io/a;

    invoke-direct {v0, p0}, Lj$/io/a;-><init>(Ljava/io/BufferedReader;)V

    const/16 p0, 0x110

    invoke-static {v0, p0}, Lj$/util/Spliterators;->n(Ljava/util/Iterator;I)Lj$/util/Spliterator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
