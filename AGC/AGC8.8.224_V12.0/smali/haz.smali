.class public final synthetic Lhaz;
.super Ljava/lang/Object;

# interfaces
.implements Lnnn;


# instance fields
.field public final synthetic a:Lhba;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lhba;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhaz;->a:Lhba;

    iput-wide p2, p0, Lhaz;->b:J

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 6

    iget-object v0, p0, Lhaz;->a:Lhba;

    iget-wide v1, p0, Lhaz;->b:J

    iget-object v3, v0, Lhba;->j:Ldmz;

    const v4, 0xea60

    invoke-virtual {v3, v4}, Ldmz;->c(I)Lnou;

    move-result-object v3

    new-instance v4, Lehc;

    const/4 v5, 0x3

    invoke-direct {v4, v0, v1, v2, v5}, Lehc;-><init>(Lhba;JI)V

    iget-object v0, v0, Lhba;->h:Ljuh;

    invoke-static {v3, v4, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-object v3
.end method
