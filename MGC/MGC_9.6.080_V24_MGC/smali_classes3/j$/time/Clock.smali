.class public abstract Lj$/time/Clock;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static systemUTC()Lj$/time/Clock;
    .locals 1

    sget-object v0, Lj$/time/a;->b:Lj$/time/a;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-virtual {p0}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract instant()Lj$/time/Instant;
.end method
