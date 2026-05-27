.class public final Lgmq;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lnak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/payloadprocessor/HdrPlusPayloadUtils"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgmq;->a:Lnak;

    return-void
.end method

.method public static a(Lgli;Z)Lkou;
    .locals 3

    iget-object v0, p0, Lgli;->a:Lkeb;

    invoke-interface {v0}, Lkeb;->c()Lkou;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lgmq;->a:Lnak;

    invoke-virtual {p0}, Lnaf;->c()Lnaz;

    move-result-object p0

    const-string p1, "Couldn\'t acquire metadata from the frame."

    const/16 v0, 0xbdd

    invoke-static {p0, p1, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lgli;->h()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lgli;->a()Lkfj;

    move-result-object p0

    invoke-interface {p0}, Lkfj;->c()Lkll;

    move-result-object p0

    iget-object p0, p0, Lkll;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lgli;->b()Lkfj;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    invoke-interface {p0}, Lkfj;->c()Lkll;

    move-result-object p0

    iget-object p0, p0, Lkll;->a:Ljava/lang/String;

    :goto_0
    invoke-static {v0, p0}, Lgmq;->b(Lkou;Ljava/lang/String;)Lkou;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static b(Lkou;Ljava/lang/String;)Lkou;
    .locals 3

    invoke-interface {p0}, Lkou;->g()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkoq;

    if-eqz v0, :cond_0

    new-instance p0, Lkot;

    invoke-direct {p0, v0}, Lkot;-><init>(Lkoq;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lgmq;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Physical metadata is null for images from camera %s"

    const/16 v2, 0xbde

    invoke-static {v0, v1, p1, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :cond_1
    :goto_0
    return-object p0
.end method
