.class public final enum Lebh;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lebh;

.field public static final enum b:Lebh;

.field public static final enum c:Lebh;

.field public static final enum d:Lebh;

.field public static final enum e:Lebh;

.field public static final enum f:Lebh;

.field public static final enum g:Lebh;

.field public static final enum h:Lebh;

.field public static final enum i:Lebh;

.field private static final synthetic j:[Lebh;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lebh;

    const-string v1, "POSTVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lebh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lebh;->a:Lebh;

    new-instance v1, Lebh;

    const-string v3, "YUV"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lebh;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lebh;->b:Lebh;

    new-instance v3, Lebh;

    const-string v5, "RGB"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lebh;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lebh;->c:Lebh;

    new-instance v5, Lebh;

    const-string v7, "RGB_HW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lebh;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lebh;->d:Lebh;

    new-instance v7, Lebh;

    const-string v9, "MERGED_DNG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lebh;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lebh;->e:Lebh;

    new-instance v9, Lebh;

    const-string v11, "MERGED_RAW"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lebh;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lebh;->f:Lebh;

    new-instance v11, Lebh;

    const-string v13, "MERGED_PD"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lebh;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lebh;->g:Lebh;

    new-instance v13, Lebh;

    const-string v15, "MUTABLE_MERGED_RAW"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lebh;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lebh;->h:Lebh;

    new-instance v15, Lebh;

    const-string v14, "ABSENT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lebh;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lebh;->i:Lebh;

    const/16 v14, 0x9

    new-array v14, v14, [Lebh;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lebh;->j:[Lebh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lebh;
    .locals 1

    sget-object v0, Lebh;->j:[Lebh;

    invoke-virtual {v0}, [Lebh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lebh;

    return-object v0
.end method
