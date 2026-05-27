.class public final synthetic Lgmt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToLongBiFunction;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lgmt;->a:J

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 2

    iget-wide v0, p0, Lgmt;->a:J

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lkeb;

    invoke-interface {p2}, Lkeb;->b()Lkeg;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide p1, p1, Lkeg;->b:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    return-wide p1
.end method
