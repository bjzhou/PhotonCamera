.class public final Ljwz;
.super Ljava/lang/Object;

# interfaces
.implements Ljwy;


# static fields
.field private static final a:Lmwn;

.field private static final b:Lmwn;

.field private static final c:Lmwn;

.field private static final d:Lmwn;


# instance fields
.field private final e:[I

.field private final f:Lkgd;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x2d0

    const/16 v1, 0x1e0

    invoke-static {v0, v1}, Lkaf;->h(II)Lkaf;

    move-result-object v0

    const/16 v2, 0x2c0

    invoke-static {v2, v1}, Lkaf;->h(II)Lkaf;

    move-result-object v2

    const/16 v3, 0x280

    invoke-static {v3, v1}, Lkaf;->h(II)Lkaf;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lmwn;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v0

    sput-object v0, Ljwz;->a:Lmwn;

    sget-object v0, Ljwu;->g:Ljwu;

    invoke-virtual {v0}, Ljwu;->b()Lkaf;

    move-result-object v0

    sget-object v1, Ljwu;->h:Ljwu;

    invoke-virtual {v1}, Ljwu;->b()Lkaf;

    move-result-object v1

    invoke-static {v0, v1}, Lmwn;->I(Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v0

    sput-object v0, Ljwz;->b:Lmwn;

    sget-object v0, Ljwu;->i:Ljwu;

    invoke-virtual {v0}, Ljwu;->b()Lkaf;

    move-result-object v0

    sget-object v1, Ljwu;->j:Ljwu;

    invoke-virtual {v1}, Ljwu;->b()Lkaf;

    move-result-object v1

    invoke-static {v0, v1}, Lmwn;->I(Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v0

    sput-object v0, Ljwz;->c:Lmwn;

    sget-object v0, Ljwu;->k:Ljwu;

    invoke-virtual {v0}, Ljwu;->b()Lkaf;

    move-result-object v0

    sget-object v1, Ljwu;->l:Ljwu;

    invoke-virtual {v1}, Ljwu;->b()Lkaf;

    move-result-object v1

    invoke-static {v0, v1}, Lmwn;->I(Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v0

    sput-object v0, Ljwz;->d:Lmwn;

    return-void
.end method

.method public constructor <init>(Lkgd;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p2, 0x9

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    iput-object p2, p0, Ljwz;->e:[I

    iput-object p1, p0, Ljwz;->f:Lkgd;

    return-void

    nop

    :array_0
    .array-data 4
        0x1f40
        0x2b11
        0x2ee0
        0x3e80
        0x5622
        0x5dc0
        0xac44
        0xbb80
        0x2ee00
    .end array-data
.end method


# virtual methods
.method public final a(Ljws;Ljxl;)Ljwx;
    .locals 7

    iget v3, p2, Ljxl;->d:I

    new-instance v6, Ljwx;

    iget v0, p2, Ljxl;->c:I

    invoke-static {v0}, Ljwp;->a(I)Ljwp;

    move-result-object v1

    iget v2, p2, Ljxl;->a:I

    invoke-virtual {p1}, Ljws;->a()I

    move-result p1

    mul-int v4, v3, p1

    iget v5, p2, Ljxl;->b:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljwx;-><init>(Ljwp;IIII)V

    return-object v6
.end method

.method public final b(Ljws;Ljxl;)Ljwx;
    .locals 9

    iget v0, p2, Ljxl;->d:I

    iget v1, p2, Ljxl;->c:I

    invoke-static {v1}, Ljwp;->a(I)Ljwp;

    move-result-object v3

    iget-object v1, v3, Ljwp;->h:Ljwr;

    iget-object v2, p0, Ljwz;->f:Lkgd;

    iget-object v2, v2, Lkgd;->a:Ljava/lang/Object;

    iget-object v4, v1, Ljwr;->e:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodecInfo;

    invoke-static {v2}, Llkj;->C(Ljava/lang/Object;)V

    iget-object v1, v1, Ljwr;->e:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1

    invoke-static {v1}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v1

    invoke-static {v1}, Llkj;->C(Ljava/lang/Object;)V

    iget-object v2, p0, Ljwz;->e:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x9

    if-ge v5, v7, :cond_2

    aget v7, v2, v5

    invoke-virtual {v1, v7}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v8

    if-eqz v8, :cond_1

    if-lt v7, v0, :cond_0

    move v6, v7

    goto :goto_1

    :cond_0
    move v6, v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljws;->a()I

    move-result v0

    mul-int v0, v0, v6

    const v1, 0x2ee00

    if-le v0, v1, :cond_3

    invoke-virtual {p1}, Ljws;->a()I

    move-result p1

    div-int p1, v1, p1

    move v5, p1

    const v6, 0x2ee00

    goto :goto_2

    :cond_3
    move v5, v6

    move v6, v0

    :goto_2
    const/4 p1, 0x1

    if-lez v5, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Llkj;->x(Z)V

    if-lez v6, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    :goto_4
    invoke-static {v4}, Llkj;->x(Z)V

    new-instance p1, Ljwx;

    iget v4, p2, Ljxl;->a:I

    iget v7, p2, Ljxl;->b:I

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Ljwx;-><init>(Ljwp;IIII)V

    return-object p1
.end method

.method public final c(Ljxl;Ljws;Ljwu;)Ljxa;
    .locals 1

    sget-object v0, Ljws;->a:Ljws;

    if-ne p2, v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Ljwz;->d(Ljxl;Ljws;Ljwu;F)Ljxa;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljxl;Ljws;Ljwu;F)Ljxa;
    .locals 10

    invoke-virtual {p0, p1, p2, p3}, Ljwz;->e(Ljxl;Ljws;Ljwu;)Z

    move-result v1

    invoke-static {v1}, Lmoz;->e(Z)V

    iget v1, p1, Ljxl;->l:I

    iget v2, p2, Ljws;->i:I

    iget v3, p1, Ljxl;->g:I

    invoke-virtual {p2}, Ljws;->e()Z

    move-result v5

    if-eqz v5, :cond_1

    if-ge v2, v1, :cond_0

    int-to-float v3, v3

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v2, v1

    mul-float v3, v3, v2

    float-to-int v1, v3

    move v3, v1

    goto :goto_0

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljws;->f()Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x1e

    if-ne v2, v5, :cond_2

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_2

    int-to-double v1, v3

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v5

    double-to-int v1, v1

    move v3, v1

    goto :goto_0

    :cond_2
    :goto_0
    invoke-static {p1}, Ljwt;->a(Ljxl;)Z

    move-result v1

    invoke-static {v1}, Lmoz;->e(Z)V

    iget v1, p1, Ljxl;->e:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file format is not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v1, Ljwt;->a:Ljwt;

    goto :goto_1

    :pswitch_1
    sget-object v1, Ljwt;->c:Ljwt;

    :goto_1
    iget v5, p1, Ljxl;->h:I

    iget v6, p1, Ljxl;->i:I

    iget v7, p1, Ljxl;->j:I

    new-instance v9, Ljxa;

    move-object v0, v9

    move-object v2, p3

    move-object v4, p2

    move v8, p4

    invoke-direct/range {v0 .. v8}, Ljxa;-><init>(Ljwt;Ljwu;ILjws;IIIF)V

    return-object v9

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p2, Ljws;->i:I

    iget v2, p2, Ljws;->j:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported capture frame rate ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and encoding frame rate="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljxl;Ljws;Ljwu;)Z
    .locals 2

    iget v0, p1, Ljxl;->l:I

    iget p2, p2, Ljws;->k:I

    if-gt p2, v0, :cond_8

    iget p2, p1, Ljxl;->f:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    sget-object p2, Ljwz;->a:Lmwn;

    invoke-virtual {p3}, Ljwu;->b()Lkaf;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmwn;->contains(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_3

    :cond_0
    const/4 v0, 0x5

    if-eq p2, v0, :cond_6

    const/16 v0, 0x7d3

    if-ne p2, v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x6

    if-eq p2, v0, :cond_5

    const/16 v0, 0x7d4

    if-ne p2, v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    if-eq p2, v0, :cond_4

    const/16 v0, 0x7d5

    if-ne p2, v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p2, Lkaf;

    iget v0, p1, Ljxl;->m:I

    iget v1, p1, Ljxl;->k:I

    invoke-direct {p2, v0, v1}, Lkaf;-><init>(II)V

    invoke-virtual {p3}, Ljwu;->b()Lkaf;

    move-result-object p3

    invoke-virtual {p2, p3}, Lkaf;->equals(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_3

    :cond_4
    :goto_0
    sget-object p2, Ljwz;->d:Lmwn;

    invoke-virtual {p3}, Ljwu;->b()Lkaf;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmwn;->contains(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_3

    :cond_5
    :goto_1
    sget-object p2, Ljwz;->c:Lmwn;

    invoke-virtual {p3}, Ljwu;->b()Lkaf;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmwn;->contains(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_3

    :cond_6
    :goto_2
    sget-object p2, Ljwz;->b:Lmwn;

    invoke-virtual {p3}, Ljwu;->b()Lkaf;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmwn;->contains(Ljava/lang/Object;)Z

    move-result p2

    :goto_3
    if-eqz p2, :cond_8

    invoke-static {p1}, Ljwt;->a(Ljxl;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    const/4 p1, 0x1

    return p1

    :cond_8
    :goto_4
    const/4 p1, 0x0

    return p1
.end method
