.class public Lbze;
.super Ljava/lang/Object;


# static fields
.field public static AppsPhotosGallery:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Landroid/net/Uri;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    const-string v0, "video"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static B(Ljava/util/List;Ljava/io/InputStream;Lbsu;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lbxa;

    invoke-direct {v0, p1, p2}, Lbxa;-><init>(Ljava/io/InputStream;Lbsu;)V

    move-object p1, v0

    :cond_1
    const/high16 v0, 0x500000

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    new-instance v0, Lbpy;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lbpy;-><init>(Ljava/io/InputStream;Lbsu;I)V

    invoke-static {p0, v0}, Lbze;->C(Ljava/util/List;Lbpz;)I

    move-result p0

    return p0
.end method

.method public static C(Ljava/util/List;Lbpz;)I
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbpv;

    invoke-interface {p1, v3}, Lbpz;->a(Lbpv;)I

    move-result v3

    if-eq v3, v2, :cond_0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static D(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 2

    if-nez p1, :cond_0

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_0
    new-instance v0, Lbpw;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lbpw;-><init>(Ljava/nio/ByteBuffer;I)V

    invoke-static {p0, v0}, Lbze;->F(Ljava/util/List;Lbqa;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    return-object p0
.end method

.method public static E(Ljava/util/List;Ljava/io/InputStream;Lbsu;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 1

    if-nez p1, :cond_0

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lbxa;

    invoke-direct {v0, p1, p2}, Lbxa;-><init>(Ljava/io/InputStream;Lbsu;)V

    move-object p1, v0

    :cond_1
    const/high16 p2, 0x500000

    invoke-virtual {p1, p2}, Ljava/io/InputStream;->mark(I)V

    new-instance p2, Lbpw;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lbpw;-><init>(Ljava/io/InputStream;I)V

    invoke-static {p0, p2}, Lbze;->F(Ljava/util/List;Lbqa;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    return-object p0
.end method

.method public static F(Ljava/util/List;Lbqa;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbpv;

    invoke-interface {p1, v2}, Lbqa;->a(Lbpv;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v2, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0
.end method

.method public static synthetic G(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "null"

    return-object p0

    :pswitch_0
    const-string p0, "MEMORY_CACHE"

    return-object p0

    :pswitch_1
    const-string p0, "RESOURCE_DISK_CACHE"

    return-object p0

    :pswitch_2
    const-string p0, "DATA_DISK_CACHE"

    return-object p0

    :pswitch_3
    const-string p0, "REMOTE"

    return-object p0

    :pswitch_4
    const-string p0, "LOCAL"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static H()Z
    .locals 4

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "REL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_2

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x53

    if-lt v0, v3, :cond_2

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static I(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "_"

    const-string v1, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static J(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static K(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_0
    const-string p0, "CAPTURE_PHOTO"

    return-object p0

    :sswitch_1
    const-string p0, "SET_DISPLAY_ORIENTATION"

    return-object p0

    :sswitch_2
    const-string p0, "ENABLE_SHUTTER_SOUND"

    return-object p0

    :sswitch_3
    const-string p0, "STOP_FACE_DETECTION"

    return-object p0

    :sswitch_4
    const-string p0, "START_FACE_DETECTION"

    return-object p0

    :sswitch_5
    const-string p0, "SET_FACE_DETECTION_LISTENER"

    return-object p0

    :sswitch_6
    const-string p0, "CANCEL_AUTO_FOCUS_FINISH"

    return-object p0

    :sswitch_7
    const-string p0, "SET_ZOOM_CHANGE_LISTENER"

    return-object p0

    :sswitch_8
    const-string p0, "SET_AUTO_FOCUS_MOVE_CALLBACK"

    return-object p0

    :sswitch_9
    const-string p0, "CANCEL_AUTO_FOCUS"

    return-object p0

    :sswitch_a
    const-string p0, "AUTO_FOCUS"

    return-object p0

    :sswitch_b
    const-string p0, "APPLY_SETTINGS"

    return-object p0

    :sswitch_c
    const-string p0, "REFRESH_PARAMETERS"

    return-object p0

    :sswitch_d
    const-string p0, "GET_PARAMETERS"

    return-object p0

    :sswitch_e
    const-string p0, "SET_PARAMETERS"

    return-object p0

    :sswitch_f
    const-string p0, "SET_ONE_SHOT_PREVIEW_CALLBACK"

    return-object p0

    :sswitch_10
    const-string p0, "SET_PREVIEW_CALLBACK"

    return-object p0

    :sswitch_11
    const-string p0, "SET_PREVIEW_DISPLAY_ASYNC"

    return-object p0

    :sswitch_12
    const-string p0, "ADD_CALLBACK_BUFFER"

    return-object p0

    :sswitch_13
    const-string p0, "SET_PREVIEW_CALLBACK_WITH_BUFFER"

    return-object p0

    :sswitch_14
    const-string p0, "STOP_PREVIEW"

    return-object p0

    :sswitch_15
    const-string p0, "START_PREVIEW_ASYNC"

    return-object p0

    :sswitch_16
    const-string p0, "SET_PREVIEW_TEXTURE_ASYNC"

    return-object p0

    :sswitch_17
    const-string p0, "LOCK"

    return-object p0

    :sswitch_18
    const-string p0, "UNLOCK"

    return-object p0

    :sswitch_19
    const-string p0, "RECONNECT"

    return-object p0

    :sswitch_1a
    const-string p0, "RELEASE"

    return-object p0

    :sswitch_1b
    const-string p0, "OPEN_CAMERA"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1b
        0x2 -> :sswitch_1a
        0x3 -> :sswitch_19
        0x4 -> :sswitch_18
        0x5 -> :sswitch_17
        0x65 -> :sswitch_16
        0x66 -> :sswitch_15
        0x67 -> :sswitch_14
        0x68 -> :sswitch_13
        0x69 -> :sswitch_12
        0x6a -> :sswitch_11
        0x6b -> :sswitch_10
        0x6c -> :sswitch_f
        0xc9 -> :sswitch_e
        0xca -> :sswitch_d
        0xcb -> :sswitch_c
        0xcc -> :sswitch_b
        0x12d -> :sswitch_a
        0x12e -> :sswitch_9
        0x12f -> :sswitch_8
        0x130 -> :sswitch_7
        0x131 -> :sswitch_6
        0x1cd -> :sswitch_5
        0x1ce -> :sswitch_4
        0x1cf -> :sswitch_3
        0x1f5 -> :sswitch_2
        0x1f6 -> :sswitch_1
        0x259 -> :sswitch_0
    .end sparse-switch
.end method

.method public static L(FII)I
    .locals 7

    if-ne p1, p2, :cond_0

    return p1

    :cond_0
    shr-int/lit8 v0, p1, 0x18

    shr-int/lit8 v1, p1, 0x10

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    shr-int/lit8 v3, p2, 0x18

    shr-int/lit8 v4, p2, 0x10

    shr-int/lit8 v5, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v3, v6

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v6

    sub-float/2addr v3, v0

    mul-float v3, v3, p0

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v6

    invoke-static {v1}, Lbze;->al(F)F

    move-result v1

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v6

    invoke-static {v2}, Lbze;->al(F)F

    move-result v2

    int-to-float p1, p1

    div-float/2addr p1, v6

    invoke-static {p1}, Lbze;->al(F)F

    move-result p1

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-static {v4}, Lbze;->al(F)F

    move-result v4

    sub-float/2addr v4, v1

    mul-float v4, v4, p0

    add-float/2addr v1, v4

    and-int/lit16 v4, v5, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-static {v4}, Lbze;->al(F)F

    move-result v4

    sub-float/2addr v4, v2

    mul-float v4, v4, p0

    add-float/2addr v2, v4

    int-to-float p2, p2

    div-float/2addr p2, v6

    invoke-static {p2}, Lbze;->al(F)F

    move-result p2

    sub-float/2addr p2, p1

    mul-float p0, p0, p2

    add-float/2addr p1, p0

    invoke-static {v1}, Lbze;->am(F)F

    move-result p0

    mul-float p0, p0, v6

    invoke-static {v2}, Lbze;->am(F)F

    move-result p2

    mul-float p2, p2, v6

    invoke-static {p1}, Lbze;->am(F)F

    move-result p1

    mul-float p1, p1, v6

    add-float/2addr v0, v3

    mul-float v0, v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    shl-int/lit8 p0, p0, 0x10

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p0, v0

    or-int/2addr p0, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    or-int/2addr p0, p1

    return p0
.end method

.method public static synthetic M(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "END_DOCUMENT"

    return-object p0

    :pswitch_0
    const-string p0, "NULL"

    return-object p0

    :pswitch_1
    const-string p0, "BOOLEAN"

    return-object p0

    :pswitch_2
    const-string p0, "NUMBER"

    return-object p0

    :pswitch_3
    const-string p0, "STRING"

    return-object p0

    :pswitch_4
    const-string p0, "NAME"

    return-object p0

    :pswitch_5
    const-string p0, "END_OBJECT"

    return-object p0

    :pswitch_6
    const-string p0, "BEGIN_OBJECT"

    return-object p0

    :pswitch_7
    const-string p0, "END_ARRAY"

    return-object p0

    :pswitch_8
    const-string p0, "BEGIN_ARRAY"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static N(Lblh;Lbga;)Lbio;
    .locals 2

    new-instance v0, Lbio;

    sget-object v1, Lbkj;->b:Lbkj;

    invoke-static {p0, p1, v1}, Lbze;->U(Lblh;Lbga;Lble;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lbio;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static O(Lblh;Lbga;)Lbip;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lbze;->P(Lblh;Lbga;Z)Lbip;

    move-result-object p0

    return-object p0
.end method

.method public static P(Lblh;Lbga;Z)Lbip;
    .locals 2

    new-instance v0, Lbip;

    if-eqz p2, :cond_0

    invoke-static {}, Lbls;->a()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Lbkj;->a:Lbkj;

    invoke-static {p0, p2, p1, v1}, Lbze;->an(Lblh;FLbga;Lble;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lbip;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static Q(Lblh;Lbga;I)Lbiq;
    .locals 2

    new-instance v0, Lbiq;

    new-instance v1, Lbkm;

    invoke-direct {v1, p2}, Lbkm;-><init>(I)V

    invoke-static {p0, p1, v1}, Lbze;->U(Lblh;Lbga;Lble;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lbiq;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static R(Lblh;Lbga;)Lbir;
    .locals 2

    new-instance v0, Lbir;

    sget-object v1, Lbkj;->c:Lbkj;

    invoke-static {p0, p1, v1}, Lbze;->U(Lblh;Lbga;Lble;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lbir;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static S(Lblh;Lbga;)Lbit;
    .locals 4

    new-instance v0, Lbit;

    invoke-static {}, Lbls;->a()F

    move-result v1

    sget-object v2, Lbkj;->e:Lbkj;

    const/4 v3, 0x1

    invoke-static {p0, p1, v1, v2, v3}, Lbkr;->a(Lblh;Lbga;FLble;Z)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lbit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static T(Lblh;Lbga;)Lbiv;
    .locals 3

    new-instance v0, Lbiv;

    invoke-static {}, Lbls;->a()F

    move-result v1

    sget-object v2, Lbky;->a:Lbky;

    invoke-static {p0, v1, p1, v2}, Lbze;->an(Lblh;FLbga;Lble;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lbiv;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static U(Lblh;Lbga;Lble;)Ljava/util/List;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lbkr;->a(Lblh;Lbga;FLble;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static V()[I
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public static W(I)Landroid/graphics/Paint$Join;
    .locals 0

    add-int/lit8 p0, p0, -0x1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-object p0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object p0

    :pswitch_1
    sget-object p0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    return-object p0

    :pswitch_2
    sget-object p0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static X()[I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method public static Y(I)Landroid/graphics/Paint$Cap;
    .locals 0

    add-int/lit8 p0, p0, -0x1

    packed-switch p0, :pswitch_data_0

    sget-object p0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object p0

    :pswitch_0
    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object p0

    :pswitch_1
    sget-object p0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static Z()[I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method private static a(IILjava/nio/ByteBuffer;)Z
    .locals 0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    sub-int/2addr p2, p0

    if-lt p2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static aa(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f07010d

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, v1, p0, v1, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method public static ab(ILandroid/content/Context;Ljava/lang/Runnable;)Landroid/widget/TextView;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14025c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    new-instance v0, Ldbu;

    invoke-direct {v0, p2}, Ldbu;-><init>(Ljava/lang/Runnable;)V

    const/16 p2, 0x21

    invoke-virtual {v1, v0, v2, p0, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p1}, Lbze;->aa(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-object p0
.end method

.method public static ac(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static ad(Ldcx;IIZ)I
    .locals 1

    iget v0, p0, Ldcx;->c:I

    if-le v0, p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    :goto_0
    const/4 p2, 0x3

    const/4 p3, 0x5

    if-eqz v0, :cond_3

    add-int/lit8 p1, p1, 0x1

    rem-int/2addr v0, p1

    if-nez v0, :cond_2

    return p2

    :cond_2
    return p3

    :cond_3
    iget p0, p0, Ldcx;->b:I

    if-eqz p0, :cond_4

    add-int/lit8 p1, p1, 0x1

    rem-int/2addr p0, p1

    if-nez p0, :cond_4

    return p2

    :cond_4
    return p3
.end method

.method public static ae(Lcsc;Lcwx;F)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcsc;->d:Ljwu;

    invoke-virtual {v1}, Ljwu;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcsc;->c:Ljws;

    invoke-virtual {v1}, Ljws;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcsc;->c:Ljws;

    invoke-virtual {v1}, Ljws;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Ljws;->g:Ljws;

    if-ne v1, v2, :cond_0

    const-string v1, " SlowMo4x"

    goto :goto_0

    :cond_0
    const-string v1, " SlowMo8x"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, " FACING="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcsc;->x:Lklv;

    invoke-virtual {p0}, Lklv;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string p0, " STAB="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcwx;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p0, " ZOOM="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static af(Lhyn;Liko;)Z
    .locals 2

    sget-object v0, Lhyn;->a:Lhyn;

    invoke-virtual {p0, v0}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lhyn;->e:Lhyn;

    invoke-virtual {p0, v0}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-static {p1}, Liko;->e(Liko;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    :goto_0
    return v1
.end method

.method public static ag(Ljuf;Ljava/util/concurrent/Future;)V
    .locals 2

    new-instance v0, Lcfh;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcfh;-><init>(Ljava/util/concurrent/Future;I)V

    invoke-virtual {p0, v0}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method public static ah(Ljava/lang/Runnable;Ljava/lang/String;)Lcik;
    .locals 2

    new-instance v0, Lcza;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Lcza;-><init>(Ljava/lang/String;Ljava/lang/Runnable;I)V

    invoke-static {v0, p1}, Lbze;->aj(Lcik;Ljava/lang/String;)Lcik;

    move-result-object p0

    return-object p0
.end method

.method public static ai(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcik;
    .locals 2

    new-instance v0, Ldpz;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p0, v1}, Ldpz;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Runnable;I)V

    invoke-static {v0, p2}, Lbze;->aj(Lcik;Ljava/lang/String;)Lcik;

    move-result-object p0

    return-object p0
.end method

.method public static aj(Lcik;Ljava/lang/String;)Lcik;
    .locals 1

    new-instance v0, Lcim;

    invoke-direct {v0, p0, p1}, Lcim;-><init>(Lcik;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic ak(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 6

    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    return-void
.end method

.method private static al(F)F
    .locals 4

    const v0, 0x3d25aee6    # 0.04045f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const v0, 0x414eb852    # 12.92f

    div-float/2addr p0, v0

    goto :goto_0

    :cond_0
    const v0, 0x3d6147ae    # 0.055f

    add-float/2addr p0, v0

    const v0, 0x3f870a3d    # 1.055f

    div-float/2addr p0, v0

    float-to-double v0, p0

    const-wide v2, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    :goto_0
    return p0
.end method

.method private static am(F)F
    .locals 4

    const v0, 0x3b4d2e1c    # 0.0031308f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const v0, 0x414eb852    # 12.92f

    mul-float p0, p0, v0

    goto :goto_0

    :cond_0
    float-to-double v0, p0

    const-wide v2, 0x3fdaaaaaa0000000L    # 0.4166666567325592

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x3ff0e147a0000000L    # 1.0549999475479126

    mul-double v0, v0, v2

    const-wide v2, -0x4053d70a40000000L    # -0.054999999701976776

    add-double/2addr v0, v2

    double-to-float p0, v0

    :goto_0
    return p0
.end method

.method private static an(Lblh;FLbga;Lble;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, p3, v0}, Lbkr;->a(Lblh;Lbga;FLble;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lbol;Lbyn;Lbyv;Landroid/content/Context;)Lbpd;
    .locals 1

    new-instance v0, Lbpd;

    invoke-direct {v0, p0, p1, p2, p3}, Lbpd;-><init>(Lbol;Lbyn;Lbyv;Landroid/content/Context;)V

    return-object v0
.end method

.method public static c(ILjava/nio/ByteBuffer;)I
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, v0, p1}, Lbze;->a(IILjava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static d(ILjava/nio/ByteBuffer;)S
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lbze;->a(IILjava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static e(Lcaq;)Lcaq;
    .locals 1

    new-instance v0, Lcap;

    invoke-direct {v0, p0}, Lcap;-><init>(Lcaq;)V

    return-object v0
.end method

.method public static synthetic f(Ljava/io/RandomAccessFile;)Ljava/nio/channels/FileChannel;
    .locals 0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-static {p0}, Lj$/nio/channels/DesugarChannels;->convertMaybeLegacyFileChannelFromLibrary(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method

.method public static g(III)Z
    .locals 0

    div-int/2addr p0, p2

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    div-int/2addr p1, p2

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static j(ZZZ[J)Landroid/content/Intent;
    .locals 3

    invoke-static {}, Lcom/agc/AdvancedSettings;->getPhotosGallery()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "com.google.android.apps.photos.api.secure_mode_ids"

    const-string v1, "com.google.android.apps.photos.api.secure_mode"

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.google.android.apps.photos.mars.api.ACTION_REVIEW_SECURE"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.google.android.apps.photos.mars.api.ACTION_REVIEW"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    array-length p1, p3

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_2

    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.provider.action.REVIEW_SECURE"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    array-length p1, p3

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.provider.action.REVIEW"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    const/high16 p1, 0x10000000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4
    const-string p1, "com.google.android.apps.photos"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0

    :cond_5
    const-string v0, "com.google.android.apps.photos.api.secure_mode_ids"

    const-string v1, "com.google.android.apps.photos.api.secure_mode"

    const/4 v2, 0x1

    if-eqz p1, :cond_7

    if-eqz p0, :cond_6

    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.google.android.apps.photos.mars.api.ACTION_REVIEW_SECURE"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    :cond_6
    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.google.android.apps.photos.mars.api.ACTION_REVIEW"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_2
    array-length p1, p3

    if-eqz p1, :cond_9

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    goto :goto_3

    :cond_7
    if-eqz p0, :cond_8

    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.google.android.apps.photos.action.SECURE_REVIEW"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    array-length p1, p3

    if-eqz p1, :cond_9

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    goto :goto_3

    :cond_8
    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.android.camera.action.REVIEW"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_9
    :goto_3
    if-eqz p2, :cond_a

    const/high16 p1, 0x10000000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_a
    sget-object p1, Lbze;->AppsPhotosGallery:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public static k(Landroid/content/Context;)Lmqp;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.apps.photos"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Lmpx;->a:Lmpx;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const/high16 v2, 0x10000

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lmpx;->a:Lmpx;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static l()Lkfh;
    .locals 2

    invoke-static {}, Lkfh;->a()Lkff;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lkff;->c(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lkff;->b(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lkff;->e(I)V

    invoke-virtual {v0}, Lkff;->a()Lkfh;

    move-result-object v0

    return-object v0
.end method

.method public static m()Lkfh;
    .locals 3

    invoke-static {}, Lkfh;->a()Lkff;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lkff;->c(I)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lkff;->b(I)V

    invoke-virtual {v0, v1}, Lkff;->e(I)V

    invoke-virtual {v0}, Lkff;->a()Lkfh;

    move-result-object v0

    return-object v0
.end method

.method public static n()Lkfh;
    .locals 2

    invoke-static {}, Lkfh;->a()Lkff;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lkff;->c(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lkff;->b(I)V

    invoke-virtual {v0, v1}, Lkff;->e(I)V

    invoke-virtual {v0}, Lkff;->a()Lkfh;

    move-result-object v0

    return-object v0
.end method

.method public static o()Lkfh;
    .locals 2

    invoke-static {}, Lkfh;->a()Lkff;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lkff;->c(I)V

    invoke-virtual {v0, v1}, Lkff;->b(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lkff;->e(I)V

    invoke-virtual {v0}, Lkff;->a()Lkfh;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic p(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "null"

    return-object p0

    :pswitch_0
    const-string p0, "EYES"

    return-object p0

    :pswitch_1
    const-string p0, "SMART_DEFAULT_ROI"

    return-object p0

    :pswitch_2
    const-string p0, "SALIENCY"

    return-object p0

    :pswitch_3
    const-string p0, "TRACKING"

    return-object p0

    :pswitch_4
    const-string p0, "FACE"

    return-object p0

    :pswitch_5
    const-string p0, "TOUCH"

    return-object p0

    :pswitch_6
    const-string p0, "DEFAULT"

    return-object p0

    :pswitch_7
    const-string p0, "INVALID"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic q(I)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static r(ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static s(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must not be null or empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static t(Ljava/util/Collection;)V
    .locals 1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must not be empty."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static u(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static v(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "Argument must not be null"

    invoke-static {p0, v0}, Lbze;->u(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static w()Lbze;
    .locals 2

    new-instance v0, Lbze;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbze;-><init>([I)V

    return-object v0
.end method

.method public static synthetic x(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "FINISHED"

    return-object p0

    :pswitch_0
    const-string p0, "ENCODE"

    return-object p0

    :pswitch_1
    const-string p0, "SOURCE"

    return-object p0

    :pswitch_2
    const-string p0, "DATA_CACHE"

    return-object p0

    :pswitch_3
    const-string p0, "RESOURCE_CACHE"

    return-object p0

    :pswitch_4
    const-string p0, "INITIALIZE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static y(Landroid/net/Uri;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "media"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static z(II)Z
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x200

    if-gt p0, v0, :cond_0

    const/16 p0, 0x180

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public h()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public i()V
    .locals 0

    return-void
.end method
