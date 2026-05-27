.class public final Ldsi;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lnak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/faceobfuscation/api/ThumbnailObfuscator"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldsi;->a:Lnak;

    return-void
.end method

.method public static a(Ldsa;Landroid/graphics/Bitmap;Lmqp;)Landroid/graphics/Bitmap;
    .locals 2

    :try_start_0
    new-instance v0, Ldsc;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ldsc;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-interface {p0, v0, p2}, Ldsa;->b(Ldry;Lmqp;)Lnou;

    move-result-object p0

    invoke-interface {p0}, Lnou;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldrz;

    invoke-interface {p0}, Ldrz;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    sget-object p2, Ldsi;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    const-string v0, "Can\'t apply face obfuscation post-processing for thumbnail"

    const/16 v1, 0x464

    invoke-static {p2, v0, v1, p0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-object p1
.end method
