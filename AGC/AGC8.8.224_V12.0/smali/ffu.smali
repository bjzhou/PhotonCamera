.class public final Lffu;
.super Ljava/lang/Object;

# interfaces
.implements Lfgd;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Lgxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/microvideo/NoOpMicrovideoSession"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lffu;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lgxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lffu;->b:Lgxy;

    return-void
.end method


# virtual methods
.method public final a(Lhkt;Lgxn;Lmqp;JLhjc;)Lnou;
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    iget-object p2, p0, Lffu;->b:Lgxy;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "No in-flight session found for "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lhkt;Ljava/io/InputStream;Lgxn;Lmqp;JLjava/lang/String;Lhjc;)Lnou;
    .locals 0

    :try_start_0
    invoke-virtual {p4}, Lmqp;->f()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/libraries/camera/exif/ExifInterface;

    iget-object p5, p3, Lgxn;->a:Lkph;

    invoke-static {p2, p4, p5}, Llho;->A(Ljava/io/InputStream;Lcom/google/android/libraries/camera/exif/ExifInterface;Lkph;)J

    move-result-wide p4

    invoke-interface {p8, p4, p5}, Lhjc;->d(J)V

    invoke-virtual {p3}, Lgxn;->b()V

    invoke-static {p1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    sget-object p2, Lffu;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->b()Lnaz;

    move-result-object p2

    const-string p4, "Error while saving jpeg in finishMicrovideo"

    const/16 p5, 0x8ac

    invoke-static {p2, p4, p5, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    invoke-virtual {p3}, Lgxn;->a()V

    invoke-static {p1}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final c()V
    .locals 0

    return-void
.end method
