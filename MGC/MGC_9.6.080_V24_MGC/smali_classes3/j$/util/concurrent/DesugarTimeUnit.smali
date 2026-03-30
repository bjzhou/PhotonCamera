.class public Lj$/util/concurrent/DesugarTimeUnit;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static convert(Ljava/util/concurrent/TimeUnit;Lj$/time/Duration;)J
    .locals 2

    invoke-virtual {p1}, Lj$/time/Duration;->toNanos()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method
