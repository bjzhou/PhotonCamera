.class public abstract Lcmx;
.super Ljkf;


# static fields
.field private static final a:Lnak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/brella/examplestore/lib/CamExampleStoreService"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcmx;->a:Lnak;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljkf;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Lcnm;Lcnk;)Lcmv;
.end method

.method public final c(Ljava/lang/String;[B[BLjke;Lntt;)V
    .locals 8

    const-string p1, "type.googleapis.com/com.google.android.apps.camera.brella.examplestore.proto.SelectionCriteria"

    const/16 p5, 0xa

    :try_start_0
    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object v0

    sget-object v1, Lnvi;->c:Lnvi;

    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {v1, p2, v3, v2, v0}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p2

    invoke-static {p2}, Lnws;->ae(Lnws;)V

    check-cast p2, Lnvi;
    :try_end_0
    .catch Lnxd; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    iget-object v0, p2, Lnvi;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lnvi;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Lnxd;

    const-string v0, "Incorrect type url: %s, expected: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p2, p2, Lnvi;->a:Ljava/lang/String;

    aput-object p2, v1, v3

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lnxd;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_1
    :goto_0
    iget-object p1, p2, Lnvi;->b:Lnvt;

    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object p2

    sget-object v0, Lcnm;->j:Lcnm;

    invoke-virtual {p1}, Lnvt;->l()Lnvy;

    move-result-object p1

    invoke-virtual {v0}, Lnws;->P()Lnws;

    move-result-object v0
    :try_end_1
    .catch Lnxd; {:try_start_1 .. :try_end_1} :catch_6

    :try_start_2
    sget-object v1, Lnyh;->a:Lnyh;

    invoke-virtual {v1, v0}, Lnyh;->b(Ljava/lang/Object;)Lnyo;

    move-result-object v1

    invoke-static {p1}, Lnvz;->p(Lnvy;)Lnvz;

    move-result-object v2

    invoke-interface {v1, v0, v2, p2}, Lnyo;->h(Ljava/lang/Object;Lnyk;Lnwh;)V

    invoke-interface {v1, v0}, Lnyo;->f(Ljava/lang/Object;)V
    :try_end_2
    .catch Lnxd; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lnyz; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {p1, v3}, Lnvy;->z(I)V
    :try_end_3
    .catch Lnxd; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-static {v0}, Lnws;->ae(Lnws;)V

    check-cast v0, Lcnm;

    iget-object p1, v0, Lcnm;->e:Lnyy;

    if-nez p1, :cond_2

    sget-object p1, Lnyy;->c:Lnyy;

    :cond_2
    iget-wide p1, p1, Lnyy;->a:J

    const-wide/16 v1, 0x0

    cmp-long v4, p1, v1

    if-ltz v4, :cond_f

    iget-object p1, v0, Lcnm;->e:Lnyy;

    if-nez p1, :cond_3

    sget-object p2, Lnyy;->c:Lnyy;

    goto :goto_1

    :cond_3
    move-object p2, p1

    :goto_1
    iget p2, p2, Lnyy;->b:I

    if-ltz p2, :cond_e

    if-nez p1, :cond_4

    sget-object p2, Lnyy;->c:Lnyy;

    goto :goto_2

    :cond_4
    move-object p2, p1

    :goto_2
    iget p2, p2, Lnyy;->b:I

    const v4, 0x3b9ac9ff

    if-gt p2, v4, :cond_e

    iget-object p2, v0, Lcnm;->f:Lnyy;

    if-nez p2, :cond_5

    sget-object v5, Lnyy;->c:Lnyy;

    goto :goto_3

    :cond_5
    move-object v5, p2

    :goto_3
    iget-wide v5, v5, Lnyy;->a:J

    cmp-long v7, v5, v1

    if-ltz v7, :cond_d

    if-nez p2, :cond_6

    sget-object v1, Lnyy;->c:Lnyy;

    goto :goto_4

    :cond_6
    move-object v1, p2

    :goto_4
    iget v1, v1, Lnyy;->b:I

    if-ltz v1, :cond_c

    if-nez p2, :cond_7

    sget-object v1, Lnyy;->c:Lnyy;

    goto :goto_5

    :cond_7
    move-object v1, p2

    :goto_5
    iget v1, v1, Lnyy;->b:I

    if-gt v1, v4, :cond_c

    if-nez p2, :cond_8

    sget-object p2, Lnyy;->c:Lnyy;

    goto :goto_6

    :cond_8
    :goto_6
    iget-wide v1, p2, Lnyy;->a:J

    if-nez p1, :cond_9

    sget-object p1, Lnyy;->c:Lnyy;

    goto :goto_7

    :cond_9
    :goto_7
    iget-wide p1, p1, Lnyy;->a:J

    cmp-long v4, v1, p1

    if-ltz v4, :cond_b

    iget-object p1, v0, Lcnm;->h:Lnxa;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_4
    .catch Lnxd; {:try_start_4 .. :try_end_4} :catch_6

    if-nez p1, :cond_a

    :try_start_5
    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object p1

    sget-object p2, Lcnk;->c:Lcnk;

    array-length v1, p3

    invoke-static {p2, p3, v3, v1, p1}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Lcnk;
    :try_end_5
    .catch Lnxd; {:try_start_5 .. :try_end_5} :catch_0

    invoke-virtual {p0}, Lcmx;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2, v0, p1}, Lcmx;->a(Landroid/content/Context;Lcnm;Lcnk;)Lcmv;

    move-result-object p1

    invoke-interface {p4, p1}, Ljke;->b(Ljkd;)V

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lcmx;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    const-string p3, "Error parsing ResumptionPoint proto: "

    const/16 v0, 0x139

    invoke-static {p2, p3, v0, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    invoke-virtual {p1}, Lnxd;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p5, p1}, Ljke;->a(ILjava/lang/String;)V

    return-void

    :cond_a
    :try_start_6
    new-instance p1, Lnxd;

    const-string p2, "No table specified to select examples."

    invoke-direct {p1, p2}, Lnxd;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Lnxd;

    const-string p2, "End date before start date"

    invoke-direct {p1, p2}, Lnxd;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Lnxd;

    const-string p2, "Invalid end date nanos"

    invoke-direct {p1, p2}, Lnxd;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Lnxd;

    const-string p2, "End date less than zero"

    invoke-direct {p1, p2}, Lnxd;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p1, Lnxd;

    const-string p2, "Invalid start date nanos"

    invoke-direct {p1, p2}, Lnxd;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    new-instance p1, Lnxd;

    const-string p2, "Start date less than zero"

    invoke-direct {p1, p2}, Lnxd;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    throw p1

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lnxd;

    if-eqz p2, :cond_10

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lnxd;

    throw p1

    :cond_10
    throw p1

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lnxd;

    if-eqz p2, :cond_11

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lnxd;

    throw p1

    :cond_11
    new-instance p2, Lnxd;

    invoke-direct {p2, p1}, Lnxd;-><init>(Ljava/io/IOException;)V

    throw p2

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Lnyz;->a()Lnxd;

    move-result-object p1

    throw p1

    :catch_5
    move-exception p1

    iget-boolean p2, p1, Lnxd;->a:Z

    if-eqz p2, :cond_12

    new-instance p2, Lnxd;

    invoke-direct {p2, p1}, Lnxd;-><init>(Ljava/io/IOException;)V

    move-object p1, p2

    :cond_12
    throw p1
    :try_end_6
    .catch Lnxd; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    move-exception p1

    sget-object p2, Lcmx;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    const-string p3, "Error parsing SelectionCriteria proto: "

    const/16 v0, 0x13a

    invoke-static {p2, p3, v0, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    invoke-virtual {p1}, Lnxd;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p5, p1}, Ljke;->a(ILjava/lang/String;)V

    return-void

    :catch_7
    move-exception p1

    sget-object p1, Lcmx;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string p2, "Error parsing Any proto from criteria"

    const/16 p3, 0x13b

    invoke-static {p1, p2, p3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    invoke-interface {p4, p5, p2}, Ljke;->a(ILjava/lang/String;)V

    return-void
.end method
