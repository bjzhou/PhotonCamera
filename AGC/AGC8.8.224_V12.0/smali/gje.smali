.class public final Lgje;
.super Ljava/lang/Object;

# interfaces
.implements Lgam;


# static fields
.field public static final a:[B

.field private static final b:[B


# instance fields
.field private final c:Lgam;

.field private final d:Ljvk;

.field private final e:Ldhi;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    sput-object v1, Lgje;->a:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    sput-object v0, Lgje;->b:[B

    return-void
.end method

.method public constructor <init>(Lgam;Ldhi;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljvk;

    sget-object v1, Lgje;->a:[B

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lgje;->d:Ljvk;

    iput-object p1, p0, Lgje;->c:Lgam;

    iput-object p2, p0, Lgje;->e:Ldhi;

    return-void
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 1

    iget-object v0, p0, Lgje;->c:Lgam;

    invoke-interface {v0}, Lgam;->a()Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljvs;
    .locals 2

    iget-object v0, p0, Lgje;->e:Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->f()V

    iget-object v0, p0, Lgje;->c:Lgam;

    invoke-interface {v0}, Lgam;->b()Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lgal;Lgkr;)V
    .locals 2

    iget-object v0, p2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lgxl;->i()Lgya;

    move-result-object v0

    sget-object v1, Lgya;->o:Lgya;

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lgje;->d:Ljvk;

    sget-object v0, Lgje;->b:[B

    invoke-virtual {p1, v0}, Ljvk;->bn(Ljava/lang/Object;)V

    new-instance p1, Lhkt;

    new-instance v0, Lkaf;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lkaf;-><init>(II)V

    sget-object v0, Lkqi;->c:Lkqi;

    invoke-direct {p1, v0}, Lhkt;-><init>(Lkqi;)V

    new-instance v0, Lcom/google/android/libraries/camera/exif/ExifInterface;

    invoke-direct {v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;-><init>()V

    invoke-virtual {p1, v0}, Lhkt;->a(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    iget-object v0, p2, Lgkr;->d:Ljava/lang/Object;

    check-cast v0, Lfte;

    iget v0, v0, Lfte;->a:I

    invoke-static {v0}, Lkab;->b(I)Lkab;

    move-result-object v0

    invoke-virtual {p1, v0}, Lhkt;->b(Lkab;)V

    iget-object v0, p0, Lgje;->d:Ljvk;

    iget-object p2, p2, Lgkr;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p2, v1, p1}, Lgxl;->r([BLhkt;)Lnou;

    move-result-object p1

    new-instance p2, Lghc;

    const/4 v1, 0x7

    invoke-direct {p2, v0, v1}, Lghc;-><init>(Ljvk;I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-interface {p1, p2, v0}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_0
    iget-object v0, p0, Lgje;->c:Lgam;

    invoke-interface {v0, p1, p2}, Lgam;->c(Lgal;Lgkr;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lmoz;->y(Ljava/lang/Object;)Lmqo;

    move-result-object v0

    iget-object v1, p0, Lgje;->c:Lgam;

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmqo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
