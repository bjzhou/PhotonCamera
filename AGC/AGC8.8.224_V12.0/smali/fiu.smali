.class public final Lfiu;
.super Ljava/lang/Object;

# interfaces
.implements Lfgf;


# instance fields
.field volatile a:J

.field final synthetic b:Lfgg;

.field final synthetic c:Lmqp;


# direct methods
.method public constructor <init>(Lfgg;Lmqp;)V
    .locals 0

    iput-object p1, p0, Lfiu;->b:Lfgg;

    iput-object p2, p0, Lfiu;->c:Lmqp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lfiu;->a:J

    return-void
.end method


# virtual methods
.method public final f(J)V
    .locals 2

    :goto_0
    iget-object p1, p0, Lfiu;->b:Lfgg;

    iget-wide v0, p0, Lfiu;->a:J

    invoke-interface {p1, v0, v1}, Lfgg;->e(J)Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lfiu;->a:J

    iget-object p1, p0, Lfiu;->c:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfgy;

    iget-wide v0, p0, Lfiu;->a:J

    invoke-interface {p1, v0, v1}, Lfgy;->b(J)V

    goto :goto_0
.end method
