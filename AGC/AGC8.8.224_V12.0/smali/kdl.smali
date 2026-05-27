.class public final enum Lkdl;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lkdl;

.field public static final enum b:Lkdl;

.field public static final enum c:Lkdl;

.field public static final enum d:Lkdl;

.field public static final enum e:Lkdl;

.field public static final enum f:Lkdl;

.field public static final enum g:Lkdl;

.field public static final enum h:Lkdl;

.field private static final j:Lmwa;

.field private static final synthetic k:[Lkdl;


# instance fields
.field public final i:S


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lkdl;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lkdl;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lkdl;->a:Lkdl;

    new-instance v1, Lkdl;

    const-string v4, "TOP_RIGHT"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lkdl;-><init>(Ljava/lang/String;IS)V

    sput-object v1, Lkdl;->b:Lkdl;

    new-instance v4, Lkdl;

    const-string v6, "BOTTOM_RIGHT"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lkdl;-><init>(Ljava/lang/String;IS)V

    sput-object v4, Lkdl;->c:Lkdl;

    new-instance v6, Lkdl;

    const-string v8, "BOTTOM_LEFT"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lkdl;-><init>(Ljava/lang/String;IS)V

    sput-object v6, Lkdl;->d:Lkdl;

    new-instance v8, Lkdl;

    const-string v10, "LEFT_TOP"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lkdl;-><init>(Ljava/lang/String;IS)V

    sput-object v8, Lkdl;->e:Lkdl;

    new-instance v10, Lkdl;

    const-string v12, "RIGHT_TOP"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lkdl;-><init>(Ljava/lang/String;IS)V

    sput-object v10, Lkdl;->f:Lkdl;

    new-instance v12, Lkdl;

    const-string v14, "RIGHT_BOTTOM"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lkdl;-><init>(Ljava/lang/String;IS)V

    sput-object v12, Lkdl;->g:Lkdl;

    new-instance v14, Lkdl;

    const-string v13, "LEFT_BOTTOM"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lkdl;-><init>(Ljava/lang/String;IS)V

    sput-object v14, Lkdl;->h:Lkdl;

    new-array v11, v11, [Lkdl;

    aput-object v0, v11, v2

    aput-object v1, v11, v3

    aput-object v4, v11, v5

    aput-object v6, v11, v7

    aput-object v8, v11, v9

    const/4 v0, 0x5

    aput-object v10, v11, v0

    const/4 v0, 0x6

    aput-object v12, v11, v0

    aput-object v14, v11, v15

    sput-object v11, Lkdl;->k:[Lkdl;

    invoke-static {}, Lkdl;->values()[Lkdl;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcej;

    invoke-direct {v1, v15}, Lcej;-><init>(I)V

    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lmwa;->j(I)Lmvw;

    move-result-object v0

    invoke-static {v2, v1, v0}, Llyh;->t(Ljava/util/Iterator;Lmqi;Lmvw;)Lmwa;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {}, Lmwa;->i()Lmvw;

    move-result-object v2

    invoke-static {v0, v1, v2}, Llyh;->t(Ljava/util/Iterator;Lmqi;Lmvw;)Lmwa;

    move-result-object v0

    :goto_0
    sput-object v0, Lkdl;->j:Lmwa;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IS)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lkdl;->i:S

    return-void
.end method

.method public static a(Lkdl;)Lkab;
    .locals 2

    const-string v0, "CAM_ExifOrientation"

    if-nez p0, :cond_0

    const-string p0, "Computing rotation for an null exif orientation, returning 0"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lkab;->a:Lkab;

    return-object p0

    :cond_0
    sget-object v1, Lkab;->a:Lkab;

    invoke-virtual {p0}, Lkdl;->ordinal()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Computing rotation for an invalid orientation: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lkab;->a:Lkab;

    return-object p0

    :sswitch_0
    sget-object p0, Lkab;->d:Lkab;

    return-object p0

    :sswitch_1
    sget-object p0, Lkab;->b:Lkab;

    return-object p0

    :sswitch_2
    sget-object p0, Lkab;->c:Lkab;

    return-object p0

    :sswitch_3
    sget-object p0, Lkab;->a:Lkab;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x2 -> :sswitch_2
        0x5 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public static b(Lkab;)Lkdl;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkab;->a:Lkab;

    invoke-virtual {p0}, Lkab;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Orientation must be one of 4 defined values!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    sget-object p0, Lkdl;->h:Lkdl;

    return-object p0

    :pswitch_1
    sget-object p0, Lkdl;->c:Lkdl;

    return-object p0

    :pswitch_2
    sget-object p0, Lkdl;->f:Lkdl;

    return-object p0

    :pswitch_3
    sget-object p0, Lkdl;->a:Lkdl;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Lcom/google/android/libraries/camera/exif/ExifInterface;)Lkdl;
    .locals 1

    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->j:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->b(I)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->shortValue()S

    move-result p0

    sget-object v0, Lkdl;->j:Lmwa;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkdl;

    return-object p0
.end method

.method public static values()[Lkdl;
    .locals 1

    sget-object v0, Lkdl;->k:[Lkdl;

    invoke-virtual {v0}, [Lkdl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkdl;

    return-object v0
.end method
