.class public final Lefn;
.super Ljava/lang/Object;

# interfaces
.implements Lefq;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Ldhi;

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/hdrplus/debug/AfDebugMetadataSaverImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lefn;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ldhi;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lefn;->b:Ldhi;

    sget-object v0, Ldhq;->a:Ldhk;

    invoke-interface {p1, v0}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    sget-object v0, Ldhp;->d:Ldhp;

    invoke-virtual {v0}, Ldhp;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Liuw;->g:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    iput-boolean v1, p0, Lefn;->c:Z

    return-void
.end method

.method private static b(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public final a(Lkou;)Lmqp;
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lefn;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "3A_DEBUG captureResult is null"

    const/16 v1, 0x58b

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    sget-object p1, Lmpx;->a:Lmpx;

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lefn;->b:Ldhi;

    sget-object v1, Ldhq;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Liuw;->h:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v1, :cond_1

    sget-object v1, Liuw;->h:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lmpx;->a:Lmpx;

    :goto_0
    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "aecDebug"

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v0, v2, v1}, Lefn;->b(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    :cond_2
    sget-object v1, Liuw;->i:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v1, :cond_3

    sget-object v1, Liuw;->i:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    goto :goto_1

    :cond_3
    sget-object v1, Lmpx;->a:Lmpx;

    :goto_1
    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "afDebug"

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v0, v2, v1}, Lefn;->b(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    :cond_4
    sget-object v1, Liuw;->j:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v1, :cond_5

    sget-object v1, Liuw;->j:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    goto :goto_2

    :cond_5
    sget-object p1, Lmpx;->a:Lmpx;

    :goto_2
    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "awbDebug"

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {v0, v1, p1}, Lefn;->b(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    :cond_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    sget-object v0, Lefn;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-interface {v0, p1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x583

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Ignoring unexpected exception %s"

    invoke-interface {v0, v1, p1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lmpx;->a:Lmpx;

    :goto_3
    iget-boolean v0, p0, Lefn;->c:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lefn;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "3A_DEBUG 3A debug metadata is expected but missing!"

    const/16 v2, 0x58a

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v0, p0, Lefn;->b:Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    :cond_7
    return-object p1
.end method
