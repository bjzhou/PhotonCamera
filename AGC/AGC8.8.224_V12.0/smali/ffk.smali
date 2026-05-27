.class public final synthetic Lffk;
.super Ljava/lang/Object;

# interfaces
.implements Lnno;


# instance fields
.field public final synthetic a:Lffl;

.field public final synthetic b:Lgxl;

.field public final synthetic c:Lhkt;

.field public final synthetic d:Lgxn;

.field public final synthetic e:Lmqp;

.field public final synthetic f:J

.field public final synthetic g:Lhjc;


# direct methods
.method public synthetic constructor <init>(Lffl;Lgxl;Lhkt;Lgxn;Lmqp;JLhjc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lffk;->a:Lffl;

    iput-object p2, p0, Lffk;->b:Lgxl;

    iput-object p3, p0, Lffk;->c:Lhkt;

    iput-object p4, p0, Lffk;->d:Lgxn;

    iput-object p5, p0, Lffk;->e:Lmqp;

    iput-wide p6, p0, Lffk;->f:J

    iput-object p8, p0, Lffk;->g:Lhjc;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lnou;
    .locals 11

    iget-object v0, p0, Lffk;->a:Lffl;

    iget-object v1, p0, Lffk;->b:Lgxl;

    iget-object v3, p0, Lffk;->c:Lhkt;

    iget-object v4, p0, Lffk;->d:Lgxn;

    iget-object v5, p0, Lffk;->e:Lmqp;

    iget-wide v6, p0, Lffk;->f:J

    iget-object v8, p0, Lffk;->g:Lhjc;

    check-cast p1, Ljava/lang/RuntimeException;

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_0

    sget-object v2, Lffp;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    const-string v9, "Error during long shot."

    const/16 v10, 0x87d

    invoke-static {v2, v9, v10, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    sget-object v2, Ligh;->a:Ligf;

    invoke-interface {v1, v2, p1}, Lgxl;->B(Ligf;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v2, v0, Lffl;->b:Lfgd;

    invoke-interface/range {v2 .. v8}, Lfgd;->a(Lhkt;Lgxn;Lmqp;JLhjc;)Lnou;

    move-result-object p1

    return-object p1
.end method
