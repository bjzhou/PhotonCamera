.class final Lehd;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field final synthetic a:Leen;

.field final synthetic b:J

.field final synthetic c:Lehe;

.field final synthetic d:Lhbq;

.field final synthetic e:Ligo;


# direct methods
.method public constructor <init>(Lehe;Lhbq;Leen;JLigo;[B[B[B)V
    .locals 0

    iput-object p1, p0, Lehd;->c:Lehe;

    iput-object p2, p0, Lehd;->d:Lhbq;

    iput-object p3, p0, Lehd;->a:Leen;

    iput-wide p4, p0, Lehd;->b:J

    iput-object p6, p0, Lehd;->e:Ligo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    iget-object p1, p0, Lehd;->d:Lhbq;

    invoke-virtual {p1}, Lhbq;->close()V

    iget-object p1, p0, Lehd;->c:Lehe;

    iget-wide v0, p0, Lehd;->b:J

    sget-object v2, Lmpx;->a:Lmpx;

    invoke-virtual {p1, v0, v1, v2}, Lehe;->f(JLmqp;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lfwy;

    iget-object v0, p0, Lehd;->c:Lehe;

    iget-boolean v1, v0, Lehe;->c:Z

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    or-int/2addr v1, v2

    iput-boolean v1, v0, Lehe;->c:Z

    iget-object v0, p0, Lehd;->d:Lhbq;

    invoke-virtual {v0}, Lhbq;->close()V

    if-nez p1, :cond_1

    sget-object p1, Lehf;->b:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v0, 0x5b8

    invoke-interface {p1, v0}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    iget-object v0, p0, Lehd;->a:Leen;

    const-string v1, "Error encoding the image: %s"

    invoke-interface {p1, v1, v0}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lehd;->c:Lehe;

    iget-wide v0, p0, Lehd;->b:J

    sget-object v2, Lmpx;->a:Lmpx;

    invoke-virtual {p1, v0, v1, v2}, Lehe;->f(JLmqp;)V

    return-void

    :cond_1
    iget-object v0, p0, Lehd;->a:Leen;

    sget-object v1, Leen;->b:Leen;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lehd;->c:Lehe;

    iget-object v0, v0, Lehe;->a:Lgxl;

    invoke-interface {v0}, Lgxl;->k()Lhjc;

    move-result-object v0

    iget-object v1, p1, Lfwy;->b:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lhjc;->d(J)V

    iget-object v0, p0, Lehd;->e:Ligo;

    iget-object v0, v0, Ligo;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_2
    sget-object v0, Lehf;->b:Lnak;

    iget-object v0, p0, Lehd;->c:Lehe;

    iget-wide v1, p0, Lehd;->b:J

    iget-object p1, p1, Lfwy;->d:Lcom/google/android/libraries/camera/exif/ExifInterface;

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lehe;->f(JLmqp;)V

    return-void
.end method
