.class public final enum Ljwq;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ljwq;

.field public static final enum b:Ljwq;

.field public static final enum c:Ljwq;

.field public static final enum d:Ljwq;

.field public static final enum e:Ljwq;

.field private static final synthetic g:[Ljwq;


# instance fields
.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Ljwq;

    const-string v1, "ENCODING_PCM_8BIT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljwq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljwq;->a:Ljwq;

    new-instance v1, Ljwq;

    const-string v4, "ENCODING_PCM_16BIT"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Ljwq;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ljwq;->b:Ljwq;

    new-instance v4, Ljwq;

    const-string v6, "ENCODING_IEC61937"

    invoke-direct {v4, v6, v5, v5}, Ljwq;-><init>(Ljava/lang/String;II)V

    sput-object v4, Ljwq;->c:Ljwq;

    new-instance v6, Ljwq;

    const-string v7, "ENCODING_DEFAULT"

    const/4 v8, 0x3

    invoke-direct {v6, v7, v8, v5}, Ljwq;-><init>(Ljava/lang/String;II)V

    sput-object v6, Ljwq;->d:Ljwq;

    new-instance v7, Ljwq;

    const-string v9, "ENCODING_PCM_FLOAT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Ljwq;-><init>(Ljava/lang/String;II)V

    sput-object v7, Ljwq;->e:Ljwq;

    const/4 v9, 0x5

    new-array v9, v9, [Ljwq;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v5

    aput-object v6, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Ljwq;->g:[Ljwq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ljwq;->f:I

    return-void
.end method

.method public static values()[Ljwq;
    .locals 1

    sget-object v0, Ljwq;->g:[Ljwq;

    invoke-virtual {v0}, [Ljwq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljwq;

    return-object v0
.end method
