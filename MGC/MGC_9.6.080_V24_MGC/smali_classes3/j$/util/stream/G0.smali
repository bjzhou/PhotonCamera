.class public abstract synthetic Lj$/util/stream/G0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Lj$/util/stream/L0;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CountedCompleter;->setPendingCount(I)V

    return-void
.end method

.method public static bridge synthetic b(Lj$/util/stream/P0;)V
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->propagateCompletion()V

    return-void
.end method

.method public static bridge synthetic c(Lj$/util/stream/P0;I)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CountedCompleter;->setPendingCount(I)V

    return-void
.end method

.method public static bridge synthetic d(Lj$/util/stream/L0;)V
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->propagateCompletion()V

    return-void
.end method
