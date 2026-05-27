.class public final Lcvr;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "camera:"

    aput-object v3, v1, v2

    new-instance v2, Ljtp;

    invoke-direct {v2, v0}, Ljtp;-><init>(I)V

    invoke-static {p1, v1, v2}, Ljtr;->d(Landroid/content/ContentResolver;[Ljava/lang/String;Ljtq;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/util/DisplayMetrics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/vision/opengl/Texture;I)V
    .locals 9

    new-instance v0, Lekp;

    invoke-direct {v0}, Lekp;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lekp;

    iput-object p1, v0, Lekp;->c:Lcom/google/android/libraries/vision/opengl/Texture;

    const/16 p1, 0x10

    new-array v7, p1, [F

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v2, 0x0

    int-to-float v3, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    move-object p2, v0

    check-cast p2, Lekp;

    iget-object p2, v0, Lekp;->d:[F

    invoke-static {v7, v8, p2, v8, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Lcrb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcvr;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfbz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhgy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljwb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkli;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcwx;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    invoke-static {}, Lcwx;->values()[Lcwx;

    move-result-object v1

    invoke-static {v1}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lgdt;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v3, v4}, Lgdt;-><init>(Lcvr;Lkli;I[B)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    sget-object p1, Lcwx;->d:Lcwx;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Logd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B[B[B[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B[B[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljvk;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B[S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lnjt;->x:Lnjt;

    invoke-virtual {p1}, Lnws;->O()Lnwn;

    move-result-object p1

    iput-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    return-void
.end method

.method public static final A(Lntb;)Lnhz;
    .locals 5

    sget-object v0, Lnhz;->h:Lnhz;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget v1, p0, Lntb;->a:I

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lnhz;

    iget v4, v3, Lnhz;->a:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Lnhz;->a:I

    iput v1, v3, Lnhz;->b:I

    iget v1, p0, Lntb;->b:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lnhz;

    iget v4, v3, Lnhz;->a:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Lnhz;->a:I

    iput v1, v3, Lnhz;->c:I

    iget v1, p0, Lntb;->c:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lnhz;

    iget v4, v3, Lnhz;->a:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Lnhz;->a:I

    iput v1, v3, Lnhz;->d:I

    iget v1, p0, Lntb;->d:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lnhz;

    iget v4, v3, Lnhz;->a:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Lnhz;->a:I

    iput v1, v3, Lnhz;->e:I

    iget v1, p0, Lntb;->e:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lnhz;

    iget v4, v3, Lnhz;->a:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Lnhz;->a:I

    iput v1, v3, Lnhz;->f:I

    iget p0, p0, Lntb;->f:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_5
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lnhz;

    iget v2, v1, Lnhz;->a:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Lnhz;->a:I

    iput p0, v1, Lnhz;->g:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p0

    check-cast p0, Lnhz;

    return-object p0
.end method

.method public static E(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static M(Logd;)Lcvr;
    .locals 1

    new-instance v0, Lcvr;

    invoke-direct {v0, p0}, Lcvr;-><init>(Logd;)V

    return-object v0
.end method

.method public static final m(Lddo;)Lnjd;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lnjd;->e:Lnjd;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget v2, v0, Lddo;->g:I

    const/16 v5, 0xc

    const/16 v6, 0xb

    const/16 v7, 0xa

    const/16 v8, 0x9

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x1

    const/16 v16, 0x2

    sparse-switch v2, :sswitch_data_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_0
    const/16 v2, 0x10

    goto :goto_0

    :sswitch_1
    const/16 v2, 0xe

    goto :goto_0

    :sswitch_2
    const/16 v2, 0xd

    goto :goto_0

    :sswitch_3
    const/16 v2, 0xc

    goto :goto_0

    :sswitch_4
    const/16 v2, 0xb

    goto :goto_0

    :sswitch_5
    const/16 v2, 0xa

    goto :goto_0

    :sswitch_6
    const/16 v2, 0x9

    goto :goto_0

    :sswitch_7
    const/16 v2, 0x8

    goto :goto_0

    :sswitch_8
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_9
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_a
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_b
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_c
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_d
    const/4 v2, 0x2

    :goto_0
    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_0
    iget-object v3, v1, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lnjd;

    add-int/lit8 v2, v2, -0x1

    iput v2, v4, Lnjd;->d:I

    iget v2, v4, Lnjd;->a:I

    or-int/2addr v2, v13

    iput v2, v4, Lnjd;->a:I

    iget v2, v0, Lddo;->f:I

    packed-switch v2, :pswitch_data_0

    const/4 v5, 0x1

    goto :goto_1

    :pswitch_0
    const/16 v5, 0xe

    goto :goto_1

    :pswitch_1
    const/16 v5, 0xd

    goto :goto_1

    :pswitch_2
    goto :goto_1

    :pswitch_3
    const/16 v5, 0xb

    goto :goto_1

    :pswitch_4
    const/16 v5, 0xa

    goto :goto_1

    :pswitch_5
    const/16 v5, 0x9

    goto :goto_1

    :pswitch_6
    const/16 v5, 0x8

    goto :goto_1

    :pswitch_7
    const/4 v5, 0x7

    goto :goto_1

    :pswitch_8
    const/4 v5, 0x6

    goto :goto_1

    :pswitch_9
    const/4 v5, 0x5

    goto :goto_1

    :pswitch_a
    const/4 v5, 0x4

    goto :goto_1

    :pswitch_b
    const/4 v5, 0x3

    goto :goto_1

    :pswitch_c
    const/4 v5, 0x2

    :goto_1
    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v2, v1, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lnjd;

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Lnjd;->c:I

    iget v4, v3, Lnjd;->a:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Lnjd;->a:I

    iget v0, v0, Lddo;->l:I

    add-int/lit8 v3, v0, -0x1

    if-eqz v0, :cond_3

    packed-switch v3, :pswitch_data_1

    const/4 v14, 0x1

    goto :goto_2

    :pswitch_d
    goto :goto_2

    :pswitch_e
    const/4 v14, 0x2

    :goto_2
    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object v0, v1, Lnwn;->b:Lnws;

    check-cast v0, Lnjd;

    add-int/lit8 v14, v14, -0x1

    iput v14, v0, Lnjd;->b:I

    iget v2, v0, Lnjd;->a:I

    or-int/2addr v2, v15

    iput v2, v0, Lnjd;->a:I

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lnjd;

    return-object v0

    :cond_3
    const/4 v0, 0x0

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_d
        0x2 -> :sswitch_c
        0x4 -> :sswitch_b
        0x8 -> :sswitch_a
        0x10 -> :sswitch_9
        0x20 -> :sswitch_8
        0x40 -> :sswitch_7
        0x80 -> :sswitch_6
        0x100 -> :sswitch_5
        0x200 -> :sswitch_4
        0x400 -> :sswitch_3
        0x800 -> :sswitch_2
        0x1000 -> :sswitch_1
        0x8000 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public static p(Landroid/media/AudioDeviceInfo;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getId()I

    :cond_0
    return-void
.end method

.method public static w(Loiw;)Loiw;
    .locals 2

    new-instance v0, Ldom;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Ldom;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static x(Loiw;)Loiw;
    .locals 2

    new-instance v0, Ldom;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Ldom;-><init>(Loiw;I)V

    return-object v0
.end method


# virtual methods
.method public final B()Landroid/app/KeyguardManager;
    .locals 2

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-static {v0, v1}, Lcvr;->E(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    return-object v0
.end method

.method public final C()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-static {v0, v1}, Lcvr;->E(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public final D()Landroid/hardware/SensorManager;
    .locals 2

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const-string v1, "sensor"

    invoke-static {v0, v1}, Lcvr;->E(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    return-object v0
.end method

.method public final F()Landroid/view/WindowManager;
    .locals 2

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const-string v1, "window"

    invoke-static {v0, v1}, Lcvr;->E(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method

.method public final G()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final H()Z
    .locals 1

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    return v0
.end method

.method public final I([F)V
    .locals 4

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    check-cast v0, Lekp;

    iget-object v0, v0, Lekp;->e:[F

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x4000

    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object p1, p0, Lcvr;->a:Ljava/lang/Object;

    check-cast p1, Lekp;

    iget-object v0, p1, Lekp;->c:Lcom/google/android/libraries/vision/opengl/Texture;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Lekp;->f:Lltt;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/libraries/vision/opengl/Texture;->getType()I

    move-result v0

    const v1, 0x8d65

    if-ne v0, v1, :cond_1

    const-string v0, "#extension GL_OES_EGL_image_external : require \nprecision mediump float;uniform samplerExternalOES texture;varying vec2 texCoord;void main() {  gl_FragColor = texture2D(texture, texCoord);}"

    goto :goto_0

    :cond_1
    const-string v0, "precision mediump float;uniform sampler2D texture;varying vec2 texCoord;void main() {  gl_FragColor = texture2D(texture, texCoord);}"

    :goto_0
    new-instance v1, Lltt;

    const-string v3, "attribute vec2 vertexAttrib;attribute vec2 texCoordAttrib;varying vec2 texCoord;uniform mat4 vertexTransform;uniform mat4 textureTransform;void main() {  texCoord = (textureTransform * vec4(texCoordAttrib, 0., 1.)).xy;  gl_Position = vertexTransform * vec4(vertexAttrib, 0., 1.);}"

    invoke-direct {v1, v3, v0}, Lltt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p1, Lekp;->f:Lltt;

    iget-object v0, p1, Lekp;->f:Lltt;

    const-string v1, "texture"

    invoke-virtual {v0, v1}, Lltt;->d(Ljava/lang/String;)Loxq;

    move-result-object v0

    iput-object v0, p1, Lekp;->g:Loxq;

    iget-object v0, p1, Lekp;->f:Lltt;

    const-string v1, "vertexTransform"

    invoke-virtual {v0, v1}, Lltt;->d(Ljava/lang/String;)Loxq;

    move-result-object v0

    iput-object v0, p1, Lekp;->h:Loxq;

    iget-object v0, p1, Lekp;->f:Lltt;

    const-string v1, "textureTransform"

    invoke-virtual {v0, v1}, Lltt;->d(Ljava/lang/String;)Loxq;

    move-result-object v0

    iput-object v0, p1, Lekp;->i:Loxq;

    iget-object v0, p1, Lekp;->f:Lltt;

    const-string v1, "vertexAttrib"

    invoke-virtual {v0, v1}, Lltt;->e(Ljava/lang/String;)Loxq;

    move-result-object v0

    iput-object v0, p1, Lekp;->j:Loxq;

    iget-object v0, p1, Lekp;->f:Lltt;

    const-string v1, "texCoordAttrib"

    invoke-virtual {v0, v1}, Lltt;->e(Ljava/lang/String;)Loxq;

    move-result-object v0

    iput-object v0, p1, Lekp;->k:Loxq;

    :cond_2
    iget-object v0, p1, Lekp;->f:Lltt;

    invoke-virtual {v0}, Lltt;->a()V

    iget-object v0, p1, Lekp;->j:Loxq;

    invoke-virtual {v0}, Loxq;->e()V

    iget-object v0, p1, Lekp;->j:Loxq;

    sget-object v1, Lekp;->a:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Loxq;->f(Ljava/nio/FloatBuffer;I)V

    iget-object v0, p1, Lekp;->k:Loxq;

    invoke-virtual {v0}, Loxq;->e()V

    iget-object v0, p1, Lekp;->k:Loxq;

    sget-object v1, Lekp;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1, v3}, Loxq;->f(Ljava/nio/FloatBuffer;I)V

    iget-object v0, p1, Lekp;->g:Loxq;

    iget-object v1, p1, Lekp;->c:Lcom/google/android/libraries/vision/opengl/Texture;

    invoke-virtual {v0, v1}, Loxq;->c(Lcom/google/android/libraries/vision/opengl/Texture;)V

    iget-object v0, p1, Lekp;->h:Loxq;

    iget-object v1, p1, Lekp;->d:[F

    invoke-virtual {v0, v1}, Loxq;->a([F)V

    iget-object v0, p1, Lekp;->i:Loxq;

    iget-object v1, p1, Lekp;->e:[F

    invoke-virtual {v0, v1}, Loxq;->a([F)V

    sget-object v0, Lekp;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    div-int/2addr v0, v3

    const/4 v1, 0x5

    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object v0, p1, Lekp;->k:Loxq;

    invoke-virtual {v0}, Loxq;->d()V

    iget-object v0, p1, Lekp;->j:Loxq;

    invoke-virtual {v0}, Loxq;->d()V

    iget-object v0, p1, Lekp;->f:Lltt;

    invoke-virtual {v0}, Lltt;->c()V

    iget-object p1, p1, Lekp;->c:Lcom/google/android/libraries/vision/opengl/Texture;

    invoke-virtual {p1}, Lcom/google/android/libraries/vision/opengl/Texture;->unbind()V

    return-void
.end method

.method public final J(Lcom/google/googlex/gcam/InterleavedImageU8;)Landroid/graphics/Bitmap;
    .locals 12

    sget-object v0, Lnqz;->f:Lnqz;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget-object v2, p0, Lcvr;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/googlex/gcam/InterleavedImageU8;->c()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/googlex/gcam/InterleavedImageU8;->b()I

    move-result v4

    check-cast v2, Landroid/util/DisplayMetrics;

    invoke-static {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lnqu;->a(Landroid/graphics/Bitmap;)Lnqu;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/googlex/gcam/InterleavedImageU8;->e()Lcom/google/googlex/gcam/InterleavedReadViewU8;

    move-result-object p1

    iget-object v5, v2, Lnqu;->a:Lcom/google/googlex/gcam/InterleavedWriteViewU8;

    iget-wide v6, p1, Lcom/google/googlex/gcam/InterleavedReadViewU8;->a:J

    invoke-static {v5}, Lcom/google/googlex/gcam/InterleavedWriteViewU8;->a(Lcom/google/googlex/gcam/InterleavedWriteViewU8;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long p1, v6, v10

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v5, "src is null"

    invoke-static {p1, v5}, Lmoz;->f(ZLjava/lang/Object;)V

    cmp-long p1, v8, v10

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const-string v5, "dst is null"

    invoke-static {p1, v5}, Lmoz;->f(ZLjava/lang/Object;)V

    iget p1, v0, Lnqz;->l:I

    invoke-static {v6, v7, p1, v8, v9}, Lcom/google/googlex/gcam/image/ImageUtils;->simpleRgbToAnyRgbImpl(JIJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lnqu;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v2}, Lnqu;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_2
    const-class v1, Ljava/lang/Throwable;

    const-string v2, "addSuppressed"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Throwable;

    aput-object v6, v5, v4

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_2
    throw p1
.end method

.method public final declared-synchronized K(Lgxy;)Leeb;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leeb;

    if-nez v0, :cond_0

    invoke-static {}, Leec;->o()Leeb;

    move-result-object v0

    iget-object v1, p0, Lcvr;->a:Ljava/lang/Object;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final L(Lgxy;)Leec;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcvr;->a:Ljava/lang/Object;

    move-object/from16 v2, p1

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leeb;

    if-nez v1, :cond_0

    invoke-static {}, Leec;->o()Leeb;

    move-result-object v1

    :cond_0
    iget-object v2, v1, Leeb;->a:Lmwl;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lmwl;->f()Lmwn;

    move-result-object v2

    iput-object v2, v1, Leeb;->b:Lmwn;

    goto :goto_0

    :cond_1
    iget-object v2, v1, Leeb;->b:Lmwn;

    if-nez v2, :cond_2

    sget-object v2, Lmza;->a:Lmza;

    iput-object v2, v1, Leeb;->b:Lmwn;

    :cond_2
    :goto_0
    iget-object v2, v1, Leeb;->d:Lmwl;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lmwl;->f()Lmwn;

    move-result-object v2

    iput-object v2, v1, Leeb;->e:Lmwn;

    goto :goto_1

    :cond_3
    iget-object v2, v1, Leeb;->e:Lmwn;

    if-nez v2, :cond_4

    sget-object v2, Lmza;->a:Lmza;

    iput-object v2, v1, Leeb;->e:Lmwn;

    :cond_4
    :goto_1
    iget-object v2, v1, Leeb;->f:Lmwl;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lmwl;->f()Lmwn;

    move-result-object v2

    iput-object v2, v1, Leeb;->g:Lmwn;

    goto :goto_2

    :cond_5
    iget-object v2, v1, Leeb;->g:Lmwn;

    if-nez v2, :cond_6

    sget-object v2, Lmza;->a:Lmza;

    iput-object v2, v1, Leeb;->g:Lmwn;

    :cond_6
    :goto_2
    iget-object v2, v1, Leeb;->h:Lmwl;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lmwl;->f()Lmwn;

    move-result-object v2

    iput-object v2, v1, Leeb;->i:Lmwn;

    goto :goto_3

    :cond_7
    iget-object v2, v1, Leeb;->i:Lmwn;

    if-nez v2, :cond_8

    sget-object v2, Lmza;->a:Lmza;

    iput-object v2, v1, Leeb;->i:Lmwn;

    :cond_8
    :goto_3
    iget-object v2, v1, Leeb;->j:Lmwl;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lmwl;->f()Lmwn;

    move-result-object v2

    iput-object v2, v1, Leeb;->k:Lmwn;

    goto :goto_4

    :cond_9
    iget-object v2, v1, Leeb;->k:Lmwn;

    if-nez v2, :cond_a

    sget-object v2, Lmza;->a:Lmza;

    iput-object v2, v1, Leeb;->k:Lmwn;

    :cond_a
    :goto_4
    iget-object v2, v1, Leeb;->l:Lmwl;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lmwl;->f()Lmwn;

    move-result-object v2

    iput-object v2, v1, Leeb;->m:Lmwn;

    goto :goto_5

    :cond_b
    iget-object v2, v1, Leeb;->m:Lmwn;

    if-nez v2, :cond_c

    sget-object v2, Lmza;->a:Lmza;

    iput-object v2, v1, Leeb;->m:Lmwn;

    :cond_c
    :goto_5
    iget-object v2, v1, Leeb;->n:Lmwl;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lmwl;->f()Lmwn;

    move-result-object v2

    iput-object v2, v1, Leeb;->o:Lmwn;

    goto :goto_6

    :cond_d
    iget-object v2, v1, Leeb;->o:Lmwn;

    if-nez v2, :cond_e

    sget-object v2, Lmza;->a:Lmza;

    iput-object v2, v1, Leeb;->o:Lmwn;

    :cond_e
    :goto_6
    iget-object v2, v1, Leeb;->p:Lmwl;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lmwl;->f()Lmwn;

    move-result-object v2

    iput-object v2, v1, Leeb;->q:Lmwn;

    goto :goto_7

    :cond_f
    iget-object v2, v1, Leeb;->q:Lmwn;

    if-nez v2, :cond_10

    sget-object v2, Lmza;->a:Lmza;

    iput-object v2, v1, Leeb;->q:Lmwn;

    :cond_10
    :goto_7
    iget-object v2, v1, Leeb;->r:Lmwl;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lmwl;->f()Lmwn;

    move-result-object v2

    iput-object v2, v1, Leeb;->s:Lmwn;

    goto :goto_8

    :cond_11
    iget-object v2, v1, Leeb;->s:Lmwn;

    if-nez v2, :cond_12

    sget-object v2, Lmza;->a:Lmza;

    iput-object v2, v1, Leeb;->s:Lmwn;

    :cond_12
    :goto_8
    iget-object v2, v1, Leeb;->t:Lmwl;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lmwl;->f()Lmwn;

    move-result-object v2

    iput-object v2, v1, Leeb;->u:Lmwn;

    goto :goto_9

    :cond_13
    iget-object v2, v1, Leeb;->u:Lmwn;

    if-nez v2, :cond_14

    sget-object v2, Lmza;->a:Lmza;

    iput-object v2, v1, Leeb;->u:Lmwn;

    :cond_14
    :goto_9
    iget-object v2, v1, Leeb;->v:Lmwl;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lmwl;->f()Lmwn;

    move-result-object v2

    iput-object v2, v1, Leeb;->w:Lmwn;

    goto :goto_a

    :cond_15
    iget-object v2, v1, Leeb;->w:Lmwn;

    if-nez v2, :cond_16

    sget-object v2, Lmza;->a:Lmza;

    iput-object v2, v1, Leeb;->w:Lmwn;

    :cond_16
    :goto_a
    iget-object v2, v1, Leeb;->x:Lmwl;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lmwl;->f()Lmwn;

    move-result-object v2

    iput-object v2, v1, Leeb;->y:Lmwn;

    goto :goto_b

    :cond_17
    iget-object v2, v1, Leeb;->y:Lmwn;

    if-nez v2, :cond_18

    sget-object v2, Lmza;->a:Lmza;

    iput-object v2, v1, Leeb;->y:Lmwn;

    :cond_18
    :goto_b
    iget-object v2, v1, Leeb;->z:Lmwl;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lmwl;->f()Lmwn;

    move-result-object v2

    iput-object v2, v1, Leeb;->A:Lmwn;

    goto :goto_c

    :cond_19
    iget-object v2, v1, Leeb;->A:Lmwn;

    if-nez v2, :cond_1a

    sget-object v2, Lmza;->a:Lmza;

    iput-object v2, v1, Leeb;->A:Lmwn;

    :cond_1a
    :goto_c
    iget-object v2, v1, Leeb;->C:Lmwl;

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Lmwl;->f()Lmwn;

    move-result-object v2

    iput-object v2, v1, Leeb;->D:Lmwn;

    goto :goto_d

    :cond_1b
    iget-object v2, v1, Leeb;->D:Lmwn;

    if-nez v2, :cond_1c

    sget-object v2, Lmza;->a:Lmza;

    iput-object v2, v1, Leeb;->D:Lmwn;

    :cond_1c
    :goto_d
    new-instance v2, Leec;

    move-object v3, v2

    iget-object v4, v1, Leeb;->b:Lmwn;

    iget-object v5, v1, Leeb;->c:Lmqp;

    iget-object v6, v1, Leeb;->e:Lmwn;

    iget-object v7, v1, Leeb;->g:Lmwn;

    iget-object v8, v1, Leeb;->i:Lmwn;

    iget-object v9, v1, Leeb;->k:Lmwn;

    iget-object v10, v1, Leeb;->m:Lmwn;

    iget-object v11, v1, Leeb;->o:Lmwn;

    iget-object v12, v1, Leeb;->q:Lmwn;

    iget-object v13, v1, Leeb;->s:Lmwn;

    iget-object v14, v1, Leeb;->u:Lmwn;

    iget-object v15, v1, Leeb;->w:Lmwn;

    iget-object v0, v1, Leeb;->y:Lmwn;

    move-object/from16 v16, v0

    iget-object v0, v1, Leeb;->A:Lmwn;

    move-object/from16 v17, v0

    iget-object v0, v1, Leeb;->B:Lmqp;

    move-object/from16 v18, v0

    iget-object v0, v1, Leeb;->D:Lmwn;

    move-object/from16 v19, v0

    invoke-direct/range {v3 .. v19}, Leec;-><init>(Lmwn;Lmqp;Lmwn;Lmwn;Lmwn;Lmwn;Lmwn;Lmwn;Lmwn;Lmwn;Lmwn;Lmwn;Lmwn;Lmwn;Lmqp;Lmwn;)V

    return-object v2
.end method

.method public final a()F
    .locals 2

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    sget-object v1, Lcwx;->e:Lcwx;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    return v1
.end method

.method public final b(Lcwx;)F
    .locals 1

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    sget-object v1, Ldho;->I:Ldhk;

    invoke-interface {v0, v1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    sget-object v1, Ldho;->H:Ldhk;

    invoke-interface {v0, v1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 2

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    sget-object v1, Ldho;->K:Ldhk;

    invoke-interface {v0, v1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 2

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    sget-object v1, Ldho;->J:Ldhk;

    invoke-interface {v0, v1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final g()J
    .locals 3

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    sget-object v1, Ldho;->G:Ldhk;

    invoke-interface {v0, v1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcvr;->a:Ljava/lang/Object;

    sget-object v2, Ldho;->F:Ldhk;

    invoke-interface {v1, v2}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/Duration;->toNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    sget-object v1, Ldho;->bH:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->j(Ldhj;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final i()Z
    .locals 2

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    sget-object v1, Ldho;->bF:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 2

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    sget-object v1, Ldho;->bG:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    const-string v1, "camera:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final l(Lluc;)Lmqp;
    .locals 3

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    check-cast v0, Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lluc;->c()Llud;

    move-result-object v1

    iget-object v1, v1, Llud;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Lluc;->c()Llud;

    move-result-object v1

    iget-object v1, v1, Llud;->a:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    check-cast v0, Landroid/util/LruCache;

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Lluc;->c()Llud;

    move-result-object p1

    iget-object p1, p1, Llud;->a:Ljava/lang/String;

    check-cast v0, Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/UUID;

    if-nez p1, :cond_1

    sget-object p1, Lmpx;->a:Lmpx;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final n()Landroid/media/AudioDeviceInfo;
    .locals 6

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    invoke-static {v3}, Lcvr;->p(Landroid/media/AudioDeviceInfo;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method public final o()Landroid/media/AudioDeviceInfo;
    .locals 8

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v5, v0, v2

    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    const/16 v7, 0xb

    if-eq v6, v7, :cond_0

    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    const/16 v7, 0x16

    if-ne v6, v7, :cond_1

    :cond_0
    invoke-static {v5}, Lcvr;->p(Landroid/media/AudioDeviceInfo;)V

    if-nez v3, :cond_1

    move-object v3, v5

    :cond_1
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    invoke-static {v5}, Lcvr;->p(Landroid/media/AudioDeviceInfo;)V

    if-nez v4, :cond_2

    move-object v4, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    return-object v3

    :cond_4
    return-object v4
.end method

.method public final q(Lcua;)Ljuf;
    .locals 2

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljuf;

    return-object p1

    :cond_0
    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    iget-object v1, p0, Lcvr;->a:Ljava/lang/Object;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final r(Lcua;)V
    .locals 1

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljuf;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljuf;->close()V

    :cond_0
    return-void
.end method

.method public final s(I)I
    .locals 1

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    check-cast v0, [I

    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    return p1
.end method

.method public final t(I)V
    .locals 2

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    check-cast v0, [I

    add-int/lit8 p1, p1, -0x1

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    return-void
.end method

.method public final u()V
    .locals 4

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcvr;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldne;

    iget-object v3, v2, Ldne;->a:Ljava/lang/Object;

    iget-object v2, v2, Ldne;->b:Ljava/lang/Object;

    invoke-interface {v3, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final v(Ljwb;)V
    .locals 3

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcvr;->a:Ljava/lang/Object;

    new-instance v2, Ldne;

    invoke-direct {v2, p1}, Ldne;-><init>(Ljwb;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final y(Loiw;)Loiw;
    .locals 7

    new-instance v6, Leri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Leri;-><init>(Lcvr;Loiw;[B[B[B)V

    return-object v6
.end method

.method public final z()Lnjt;
    .locals 1

    iget-object v0, p0, Lcvr;->a:Ljava/lang/Object;

    check-cast v0, Lnwn;

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lnjt;

    return-object v0
.end method
