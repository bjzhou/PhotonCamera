.class public final Llim;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmqp;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llim;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llim;->c:Ljava/lang/Object;

    sget-object v0, Llhg;->a:Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Llhg;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v0, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    :goto_0
    iput-object v1, p0, Llim;->d:Ljava/lang/Object;

    invoke-virtual {p2}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Llic;

    invoke-virtual {p2}, Llic;->a()Lmrl;

    move-result-object v3

    goto :goto_1

    :cond_3
    :goto_1
    iput-object v3, p0, Llim;->h:Ljava/lang/Object;

    iput-object p3, p0, Llim;->e:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string p3, "android.hardware.type.watch"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p3, 0x3

    goto :goto_2

    :cond_4
    const-string p3, "android.software.leanback"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    const/4 p3, 0x4

    goto :goto_2

    :cond_5
    const/4 p3, 0x2

    :goto_2
    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-ne v2, p2, :cond_6

    const/4 p3, 0x5

    :cond_6
    iput p3, p0, Llim;->a:I

    new-instance p2, Lktn;

    invoke-direct {p2, p1}, Lktn;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Llim;->f:Ljava/lang/Object;

    new-instance p1, Ldet;

    const/16 p2, 0xf

    invoke-direct {p1, p0, p2}, Ldet;-><init>(Llim;I)V

    invoke-static {p1}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object p1

    iput-object p1, p0, Llim;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkeq;Lmbe;Ljuf;Lkaq;Lkbc;Lloi;Lklj;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llim;->g:Ljava/lang/Object;

    iput-object p2, p0, Llim;->d:Ljava/lang/Object;

    iput-object p3, p0, Llim;->b:Ljava/lang/Object;

    iput-object p5, p0, Llim;->h:Ljava/lang/Object;

    iput-object p6, p0, Llim;->c:Ljava/lang/Object;

    const-string p2, "StreamMap"

    invoke-interface {p4, p2}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p2

    iput-object p2, p0, Llim;->f:Ljava/lang/Object;

    iget-object p2, p1, Lkeq;->a:Lkll;

    invoke-interface {p7, p2}, Lklj;->a(Lkll;)Lkli;

    move-result-object p2

    check-cast p2, Lklh;

    iget-object p2, p2, Lklh;->b:Lmwn;

    iput-object p2, p0, Llim;->e:Ljava/lang/Object;

    iget-object p1, p1, Lkeq;->a:Lkll;

    invoke-interface {p7, p1}, Lklj;->a(Lkll;)Lkli;

    move-result-object p1

    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PIPELINE_MAX_DEPTH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 p3, 0x8

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lkli;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    rsub-int/lit8 p1, p1, 0x40

    iput p1, p0, Llim;->a:I

    return-void
.end method
